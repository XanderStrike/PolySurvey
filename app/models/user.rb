class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :email, :survey_finished?
  attr :admin?
end
