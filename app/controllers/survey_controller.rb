class SurveyController < ApplicationController

  def p001
  end

  def p002
  end

  def p003
  	results = [params["n01"].to_i, params["n02"].to_i, params["n03"].to_i, params["n04"].to_i, params["n05"].to_i, params["n06"].to_i, params["n07"].to_i, params["n08"].to_i, params["n09"].to_i, params["n10"].to_i, params["n11"].to_i, params["n12"].to_i, params["n13"].to_i, params["n14"].to_i, params["n15"].to_i]

    result = results.inject(0){|sum,item| sum + item}

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

    @data = params["origin"] + "," + results.join(',') + ",#{result},#{@name0.join(',')},#{@name1.join(',')},#{@name2.join(',')},#{group}"

  end

  def p004
    @data = params["results"].split(',')
    @name0 = ["#{@data[17]}", "#{@data[18]}"]
    @name1 = ["#{@data[19]}", "#{@data[20]}"]
    @name2 = ["#{@data[21]}", "#{@data[22]}"]

    # Determine which group, close election or blowout election they are part of
    @group = rand(4)

    @data_new = params["results"] + ",#{@group}"
  end

  def p005
    @data = params["results"].split(',')
    @name0 = ["#{@data[17]}", "#{@data[18]}"]
    @name1 = ["#{@data[19]}", "#{@data[20]}"]
    @name2 = ["#{@data[21]}", "#{@data[22]}"]

    @group = @data[24]

    @data_new = params["results"]
  end

  def p006
    @data = params["results"] + ",#{params[:vote]}"
  end

  def p007
    @data = params["results"] + ",#{params[:q01]},#{params[:q02]},#{params[:q03]},#{params[:q04]},#{params[:q05]},#{params[:q06]}"
  end

  def p008
    @data = params["results"] + ",#{params[:q07]},#{params[:q08]},#{params[:q09]},#{params[:q10]}"
  end

  def p009
    @data = params["results"] + ",#{params[:q11]}"
  end

  def p010
    @data = params["results"] + ",#{params[:q12]},#{params[:q13]},#{params[:q14]},#{params[:q15]},#{params[:q16]},#{params[:q17]}"
  end

  def p011
    @data = params["results"] + ",#{params[:q18]},#{params[:q19]},#{params[:q20]},#{params[:q21]}"
  end

  def p012
    @data = params.reject!{|k| k == "utf8"}
  end

  def p013
    @data = params.to_s

    @array = @data.split(',')
  end
end

# The form of "data"
#   0 - Origin of respondent (mturk, Westmont, UCSB, etc.)
#   1-15 - Political alignment questions
#   16 - Political alignment
#   17, 19, 21 - Candidate names, most to least
#   18, 20, 22 - Percentages
#   23 - Group for candidate display (0-5)
#   24 - Group for news blurb display (0-3)