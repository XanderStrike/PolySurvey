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
    names = ["Michael Jones", "Joseph Taylor", "Charles Thompson", "Jeffrey Smith", "Mike Jones", "Steve Brooks"].shuffle

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

    @data = results.join(',') + ",#{result},#{@name0.join(',')},#{@name1.join(',')},#{@name2.join(',')},#{group},#{params["origin"]}"

  end

  def p004
    @data = params["results"].split(',')
    @name0 = ["#{@data[16]}", "#{@data[17]}"]
    @name1 = ["#{@data[18]}", "#{@data[19]}"]
    @name2 = ["#{@data[20]}", "#{@data[21]}"]

    # Determine which group, close election or blowout election they are part of
    @group = rand(4)

    @data_new = params["results"] + ",#{@group}"
  end

  def p005
    @data = params["results"].split(',')
    @name0 = ["#{@data[16]}", "#{@data[17]}"]
    @name1 = ["#{@data[18]}", "#{@data[19]}"]
    @name2 = ["#{@data[20]}", "#{@data[21]}"]

    @group = @data[23]

    @debug = params["results"]
  end

  def p006
    @data = params["results"].split(',')

    @params = params.to_s

    @vote = params[:vote]
  end


end

# The form of "data"
#   0-14 - Political alignment questions
#   15 - Political alignment
#   16, 18, 20 - Candidate names, most to least
#   17, 19, 21 - Percentages
#   22 - Group for candidate display (0-5)
#   23 - Origin of respondent (mturk, Westmont, UCSB, etc.)
#   24 - Group for news blurb display (0-3) 
