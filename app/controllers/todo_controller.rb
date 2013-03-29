class TodoController
  def parse_user_response(input)
    command = input.shift.downcase if input[0]
    details = input.join(" ")

    if command == "list"
      return Interface.show_tasks(Todo.all)

    elsif command == "add"
      task = Todo.create(task: details)
      return Interface.show_tasks(Todo.all)
    
    elsif command == "delete"
      Todo.delete(details)
      return Interface.show_tasks(Todo.all)
    
    elsif command =="complete"
      Todo.complete!(details)
      return Interface.show_tasks(Todo.all)
    
    else
      return Interface.error_messages
    end
  end

end
