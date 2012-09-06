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
    first_names = %w[James John Robert Michael William David Richard Charles Joseph Thomas Christopher Daniel Paul Mark Donald George Kenneth Steven Edward Brian Ronald Anthony Kevin Jason Jeff]
    last_names = %w[Smith Johnson Williams Jones Brown Davis Miller Wilson Moore Taylor Anderson Thomas Jackson White Harris Martin Thompson Robinson Clark Lewis Lee Walker Hall Allen Young King]

    @name0 = ["#{first_names[rand(first_names.size)]} #{last_names[rand(last_names.size)]}"]
    @name1 = ["#{first_names[rand(first_names.size)]} #{last_names[rand(last_names.size)]}"]
    @name2 = ["#{first_names[rand(first_names.size)]} #{last_names[rand(last_names.size)]}"]

    # Determine in which way the candidates are displayed (assign them to groups 1-6)
    group = rand(6)
    case group
    when 0
      @name0 += ["90%"]
      @name1 += ["40%"]
      @name2 += ["10%"]
    when 1
      if result > 0
        @name0 = ["#{@name0[0]} (Libertarian)", "90%"]
        @name1 = ["#{@name1[0]} (Republican)", "40%"]
        @name2 = ["#{@name2[0]} (Democrat)", "10%"]
      else
        @name0 = ["#{@name0[0]} (Green)", "90%"]
        @name1 = ["#{@name1[0]} (Democrat)", "40%"]
        @name2 = ["#{@name2[0]} (Republican)", "10%"]
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

    @data = results.join(',') + ",#{result},#{@name0.join(',')},#{@name1.join(',')},#{@name2.join(',')},#{group}"

  end

  def p004
    @data = params["results"].split(',')

    @name0 = ["#{@data[16]}", "#{@data[17]}"]
    @name1 = ["#{@data[18]}", "#{@data[19]}"]
    @name2 = ["#{@data[20]}", "#{@data[21]}"]

    # Determine which group, close election or blowout election they are part of
    group = rand(2)
  end

  def p005
  end


end

# The form of "data"
#   0-14 - Political alignment questions
#   15 - Political alignment
#   16, 18, 20 - Candidate names, most to least
#   17, 19, 21 - Percentages
