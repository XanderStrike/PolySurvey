class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessable :email
  attr_accessable :survey_finished?
  attr_accessable :admin?
end
