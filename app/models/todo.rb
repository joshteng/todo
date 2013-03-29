class Todo < ActiveRecord::Base
  def self.complete!(id)
    Todo.find(id).update_attributes(:completed => true)
  end
end
