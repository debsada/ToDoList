# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class ToDoList
    def initialize
        @list = []
    end

    def add(task)
        fail "Task already added!" if @list.any?(task) == true

        @list << task
    end 

    def view
        return @list
    end 

    def remove_task(task) 
        fail "This is not an added task!" if @list.any?(task) == false
        @list.delete(task)
        return "'#{task}' has been completed"
    end 
end 

# #1 
# to_do_list = ToDoList.new
# to_do_list.add("Walk the dog")
# to_do_list.view # => returns "walk the dog" in list format 

# #2
# to_do_list = ToDoList.new
# to_do_list.add("Walk the dog")
# to_do_list.add("Do the laundry")
# to_do_list.add("Pick the kids up")
# to_do_list.view # => returns ["walk the dog", "Do the laundry", "Pick the kids up"]

# #3 
# to_do_list = ToDoList.new
# to_do_list.add("Walk the dog")
# to_do_list.add("Do the laundry")
# to_do_list.add("Pick the kids up")
# to_do_list.remove("Pick the kids up") # => returns "Pick the kids up has been completed"

# #4
# to_do_list = ToDoList.new
# to_do_list.add("Walk the dog")
# to_do_list.add("Do the laundry")
# to_do_list.add("Pick the kids up")
# to_do_list.remove("Pick the kids up") 
# to_do_list.view # => returns ["Walk the dog", "Do the laundry"]

# #5
# to_do_list = ToDoList.new
# to_do_list.add("Walk the dog")
# expect{to_do_list.add("Walk the dog")} # => to raise_error "Task already added!"

# #6
# to_do_list = ToDoList.new
# to_do_list.add("Walk the dog")
# expect{to_do_list.remove_task("Do the laundry")} # => to raise_error "This is not an added task!"





