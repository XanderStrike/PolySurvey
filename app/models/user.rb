class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :email
<<<<<<< HEAD
  attr :password
  attr_accessible :survey_finished?
  attr :admin?
=======
  attr_accessible :password
  attr_accessible :survey_finished?
  attr_accessible :admin?
>>>>>>> d9e6d8cb21a2853980e92b189d5e4fac7fe495c7
  attr_accessible :uid
end
