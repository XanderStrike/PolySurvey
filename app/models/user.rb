class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :email
  attr_accessible :password
  attr_accessible :survey_finished?
  attr_accessible :admin?
  attr_accessible :uid
end
