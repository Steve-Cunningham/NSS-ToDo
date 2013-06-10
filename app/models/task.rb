class Task < ActiveRecord::Base
  attr_accessible :task_name, :list_name

  belongs_to :list
end
