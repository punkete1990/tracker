class Project < ActiveRecord::Base
  belongs_to :projectstatus
  belongs_to :user

end
