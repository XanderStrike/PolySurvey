class SurveyController < ApplicationController

  def restrict_hash (h, level)
    valid = {
      'origin' => 2,
      'match_scenario' => 2,
      'poll_scenario' => 2,
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

    }
    for i in 1..15
      valid['n%02d' % i] = 2
    end
    for i in 1..32
      valid['q%02d' % i] = 2
    end

    r = h
    r.each_key do | k |
      unless valid[k] and valid[k] >= level
        r.delete(k)
      end
    end
    return r
  end


  def p001
  end

  def p002
    @results = restrict_hash(params, 1)
    @results["time1"] = Time.now
  end

  def p003

    @results = restrict_hash(params, 1)

    result = 0
    for i in 1..15
      result += @results['n%02d' % i].to_i
    end

  	# Determine affiliation
  	if result > 5
      @output = "conservative"
    elsif result < -5
    	@output = "liberal"
    else
    	@output = "moderate"
    end

    # Randomly generate three names
    names = ["Michael Jones", "Joseph Taylor", "Charles Thompson", "Jeffrey Smith", "Charles Johnston", "Steve Brooks"].shuffle

    @name0 = [names[0]]
    @name1 = [names[1]]
    @name2 = [names[2]]

    # Determine in which way the candidates are displayed (assign them to groups 1-6)
    group = rand(6)
    case group
    when 0
      @name0 += ["90%"]
      @name1 += ["40%"]
      @name2 += ["10%"]
    when 1
      if result > 5
        @name0 = ["#{@name0[0]} (Libertarian)", "90%"]
        @name1 = ["#{@name1[0]} (Republican)", "40%"]
        @name2 = ["#{@name2[0]} (Democrat)", "10%"]
      elsif result < -5
        @name0 = ["#{@name0[0]} (Green)", "90%"]
        @name1 = ["#{@name1[0]} (Democrat)", "40%"]
        @name2 = ["#{@name2[0]} (Republican)", "10%"]
      else
        @name0 = ["#{@name0[0]} (Reform)", "90%"]
        if result > 0
          @name1 = ["#{@name1[0]} (Republican)", "40%"]
          @name2 = ["#{@name2[0]} (Democrat)", "10%"]
        else
          @name1 = ["#{@name1[0]} (Democrat)", "40%"]
          @name2 = ["#{@name2[0]} (Republican)", "10%"]
        end
      end
    when 2
      @name0 += ["90%"]
      @name1 += ["80%"]
      @name2 += ["30%"]
    when 3
      @name0 += ["90%"]
      @name1 += ["40%"]
      @name2 += ["30%"]
    when 4
      @name0 += ["90%"]
      @name1 += ["70%"]
      @name2 += ["65%"]
    when 5
      @name0 += ["90%"]
      @name1 += ["70%"]
      @name2 += ["10%"]
    end
    @results['name0'] = @name0[0]
    @results['match0'] = @name0[1]
    @results['name1'] = @name1[0]
    @results['match1'] = @name1[1]
    @results['name2'] = @name2[0]
    @results['match2'] = @name2[1]
    @results['match_scenario'] = group

  end

  def p004
    @results = restrict_hash(params, 1)
    @results["time2"] = Time.now
    @name0 = [@results['name0'], @results['match0']]
    @name1 = [@results['name1'], @results['match1']]
    @name2 = [@results['name2'], @results['match2']]

    # Determine which group, close election or blowout election they are part of
    @group = rand(4)

    @results['poll_scenario'] = @group
  end

  def p005
    @results = restrict_hash(params, 1)
    @name0 = [@results['name0'], @results['match0']]
    @name1 = [@results['name1'], @results['match1']]
    @name2 = [@results['name2'], @results['match2']]

    @group = @results['poll_scenario']
    @results["time3"] = Time.now
  end

  def p006
    @results = restrict_hash(params, 1)
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
    @results = restrict_hash(params, 2)
    @results["time4"] = Time.now

    
    new_result = Results.new(@results)
    new_results.save
  end
end

