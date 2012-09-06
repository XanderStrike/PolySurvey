class SurveyController < ApplicationController

  def home
  end

  def quiz
  end

  def quizresults
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
    first_names = %w[James John Robert Michael William David Richard Charles Joseph Thomas Christopher Daniel Paul Mark Donald George Kenneth Steven Edward Brian Ronald Anthony Kevin Jason Jeff]
    last_names = %w[Smith Johnson Williams Jones Brown Davis Miller Wilson Moore Taylor Anderson Thomas Jackson White Harris Martin Thompson Robinson Clark Lewis Lee Walker Hall Allen Young King]

    @name0 = ["#{first_names[rand(first_names.size)]} #{last_names[rand(last_names.size)]}"]
    @name1 = ["#{first_names[rand(first_names.size)]} #{last_names[rand(last_names.size)]}"]
    @name2 = ["#{first_names[rand(first_names.size)]} #{last_names[rand(last_names.size)]}"]

    case rand(2)
    when 0
      @name0 += ["90%"]
      @name1 += ["40%"]
      @name2 += ["13%"]
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
    end

    @data = results.join(',') + ",#{result}"

  end

end
