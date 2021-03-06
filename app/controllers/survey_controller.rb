class SurveyController < ApplicationController

  def restrict_hash (h, level)
	# level 1 = carries value from one page to the next
	# level 2 = carries value and also writes to database
    valid = {
      'origin' => 2,
      'combined_scenario' => 2,
      'pid' => 2,
      'blowout' => 2,
      'close_match' => 2,
      'alignment' => 2,
      'rid' => 1,
      'code' => 2,
      'name0' => 1,
      'name1' => 1,
      'name2' => 1,
      'match0' => 1,
      'match1' => 1,
      'match2' => 1,
      'vote' => 2,
      'time1' => 2,
      'time2' => 2,
      'time3' => 2,
      'time4' => 2,
      'time5' => 2,
      'time6' => 2,
      'q22a' => 2,
      'q22b' => 2,
      'q22c' => 2,
      'q22d' => 2,
      'q22e' => 2,
      'q25a' => 2,
      'q30a' => 2,
      'q32a' => 2,

    }
    for i in 1..15
      valid['n%02d' % i] = 2
    end
    for i in 1..34
      unless i == 22
        valid['q%02d' % i] = 2
      end
    end

    r = h
    r.each_key do | k |
      unless valid[k] and valid[k] >= level
        r.delete(k)
      end
    end
    return r
  end

  # determine the political label affiliation for the subject
  # based on the sum of the first 15 questions
  def determine_affiliation (sum15)
    if sum15 > 5
      return "conservative"
    elsif sum15 < -5
      return "liberal"
    else
      return "moderate"
    end
  end

  # pid_cont: bit 0; return 1 if subject in PID condition, 0 for NoPID
  def pid_cond(c)
    return c % 2
  end

  # poll_cond: bit 1; return 1 if subject in Blowout polling condition, 0 for PhotoFinish
  def poll_cond(c)
    return (c / 2) % 2
  end

  # match_cond: bit 2; return 1 if subject in CLOSE match condition with 2nd choice, 0 if FAR
  def match_cond(c)
    return (c / 4) % 2
  end
  
  def p001
    @results = restrict_hash(params, 1)
    @results["time1"] = Time.now.tv_sec.to_s
  end

  def p002
    @results = restrict_hash(params, 1)
    newtime = Time.now.tv_sec - @results["time1"].to_i
    @results["time2"] = newtime.to_s
  end

  def p003
    @results = restrict_hash(params, 1)

    # the desired values to use for candidate match scores
    match_cond_values = [93,[47,87],13]


    result = 0
    for i in 1..15
      result += @results['n%02d' % i].to_i
    end

    @output = determine_affiliation(result)

    # Randomly generate three names
    names = ["Michael Jones", "Joseph Taylor", "Charles Thompson", "Jeffrey Smith", "Alexander Johnston", "Steve Brooks"].shuffle

    @name0 = [names[0]]
    @name1 = [names[1]]
    @name2 = [names[2]]

    # Determine in which way the candidates are displayed (assign them to groups 0-8)
    new_result = Results.create
    @results['rid'] = new_result.id
    @group = @results['rid'].to_i % 8

    # Add the PID if called for
    if pid_cond(@group) == 1
      if result > 5
        @name0[0] += " (Libertarian)"
        @name1[0] += " (Republican)"
        @name2[0] += " (Democrat)"
      elsif result < -5
        @name0[0] += " (Green)"
        @name1[0] += " (Democrat)"
        @name2[0] += " (Republican)"
      else
        @name0[0] += " (Reform)"
        # account for the lean of moderates toward conservative or liberal
        if result > 0
          @name1[0] += " (Republican)"
          @name2[0] += " (Democrat)"
        else
          @name1[0] += " (Democrat)"
          @name2[0] += " (Republican)"
        end
      end
    end

    # Add the match values
    @name0 += [ match_cond_values[0] ]
    @name1 += [ match_cond_values[1][ match_cond(@group) ] ]
    @name2 += [ match_cond_values[2] ]

    # Handle the polling condition in p004
    @results['blowout'] = poll_cond(@group) # Data Key: 0 (down-to-the-wire) or 1 (Blowout)
	@results['pid'] = pid_cond(@group) # Data Key: 0 (no PID) or 1 (PID)
	@results['close_match'] = match_cond(@group) # Data Key: 0 (far match) or 1 (close match)

    @results['name0'] = @name0[0]
    @results['match0'] = @name0[1]
    @results['name1'] = @name1[0]
    @results['match1'] = @name1[1]
    @results['name2'] = @name2[0]
    @results['match2'] = @name2[1]
    @results['combined_scenario'] = @group
    @results['alignment'] = result

  end

  def p004
    @results = restrict_hash(params, 1)
    newtime = (Time.now.tv_sec - @results["time1"].to_i) - @results["time2"].to_i
    @results["time3"] = newtime.to_s
    @name0 = [@results['name0'], @results['match0']]
    @name1 = [@results['name1'], @results['match1']]
    @name2 = [@results['name2'], @results['match2']]

    # Debuging values
    group = @results['combined_scenario'].to_i
    @pidcond = pid_cond(group)
    @pollcond = poll_cond(group)
    @matchcond = match_cond(group)

  end

  def p006
    @results = restrict_hash(params, 1)
    newtime = (Time.now.tv_sec - @results["time1"].to_i) - (@results["time2"].to_i + @results["time3"].to_i)
    @results["time4"] = newtime.to_s
  end

  def p007
    @results = restrict_hash(params, 1)
  end

  def p008
    @results = restrict_hash(params, 1)
  end

  def p009
    @results = restrict_hash(params, 1)
  end

  def p010
    @results = restrict_hash(params, 1)
  end

  def p011
    @results = restrict_hash(params, 1)
  end

  def p012
    @results = restrict_hash(params, 1)
  end

  def p013
    rid = params['rid'].to_i
    @results = restrict_hash(params, 2)
    newtime = (Time.now.tv_sec - @results["time1"].to_i) - (@results["time2"].to_i + @results["time3"].to_i + @results["time4"].to_i)
    @results['total_time'] = (Time.now.tv_sec - @results['time1'].to_i).to_s
    @results["time1"] = Time.at(@results["time1"].to_i).to_s
    @results["time5"] = newtime.to_s
    @results['code'] = session['session_id']

    unless session['saved']
      Results.find_by_id(rid).update_attributes(@results)
    end
    session['saved'] = true

  end
end

