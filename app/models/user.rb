class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessable :email
  attr_accessable :password
  attr_accessable :survey_finished?
  attr_accessable :admin?
  attr_accessable :uid
end
