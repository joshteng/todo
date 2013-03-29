class Interface
  def self.error_messages
    puts "Error"
    puts "List of commands available:"
    puts "ruby todo.rb list"
    puts "ruby todo.rb complete <task_id>"
    puts "ruby todo.rb delete <task_id>"
    puts "ruby todo.rb add <task_name>"
  end

  def self.show_tasks(todo_list)
    todo_list.each do |todo|
      puts "#{todo.task | todo.completed ? "completed" : "do it damn it.." }"
    end
  end

end
