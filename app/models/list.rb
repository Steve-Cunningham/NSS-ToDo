class List < ActiveRecord::Base
  attr_accessible :task_name, :list_name

  has_many :tasks

end
