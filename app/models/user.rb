class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :email
  attr_accessor :password
  attr_accessible :survey_finished
  attr_accessor :admin
  attr_accessible :uid
end
