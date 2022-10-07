require 'to_do_list'

RSpec.describe ToDoList do 
    context "when a task is added" do
        it "returns that task" do
            to_do_list = ToDoList.new
            results = to_do_list.add("Walk the dog")
            expect(results).to eq ["Walk the dog"]
        end
    end

    context "when a task is added and viewed " do
        it "returns the task in list format" do
            to_do_list = ToDoList.new
            to_do_list.add("Walk the dog")
            results = to_do_list.view
            expect(results).to eq ["Walk the dog"]
        end
    end

    context "when multiple tasks are added" do
        it "returns a list value with those tasks" do
            to_do_list = ToDoList.new
            to_do_list.add("Walk the dog")
            to_do_list.add("Do the laundry")
            to_do_list.add("Pick the kids up")
            results = to_do_list.view
            expect(results).to eq ["Walk the dog", "Do the laundry", "Pick the kids up"]
        end
    end

    context "when you remove a task" do
        it "returns that that task has been completed" do
            to_do_list = ToDoList.new
            to_do_list.add("Walk the dog")
            to_do_list.add("Do the laundry")
            to_do_list.add("Pick the kids up")
            results = to_do_list.remove_task("Pick the kids up") 
            expect(results).to eq "'Pick the kids up' has been completed"
        end
    end

    context "when you remove a task and view" do
        it "returns that list without the argument task" do
            to_do_list = ToDoList.new
            to_do_list.add("Walk the dog")
            to_do_list.add("Do the laundry")
            to_do_list.add("Pick the kids up")
            to_do_list.remove_task("Pick the kids up") 
            results = to_do_list.view
            expect(results).to eq ["Walk the dog", "Do the laundry"]
        end
    end

    context "when you add a task that has already been added" do
        it "returns an error" do
            to_do_list = ToDoList.new
            to_do_list.add("Walk the dog")
            expect{to_do_list.add("Walk the dog")}.to raise_error "Task already added!"
        end
    end

    context "when you remove a task that has not been added" do
        it "returns an error" do
            to_do_list = ToDoList.new
            to_do_list.add("Walk the dog")
            expect{to_do_list.remove_task("Do the laundry")}.to raise_error "This is not an added task!"
        end
    end

end
