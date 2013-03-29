require 'faker'

module Populate
  def self.task
    10.times do
      Todo.create(task: Faker::Lorem.sentence)
    end
  end
end
