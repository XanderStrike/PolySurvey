class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :email
  attr :password
  attr_accessible :survey_finished?
  attr :admin?
  attr_accessible :uid
end
