require 'Rspec'
require './sinatra_todo_list.rb'
require 'pry'

RSpec.describe "Todo List" do
  # before :each do
  #   @task = Task.new("")
  # end
    let(:task) {Task.new("Buy the Milk")}
    let(:task2) {Task.new("walk the Dog")}
    let(:task3) {Task.new("Make my todo list into a web app")}
    let(:todo_list){Todo.new}

    it "1 Check if task exist" do
      expect(task.complete?).to eq(false)
      end
    it "2 Change the Task state to true" do
      expect(task.complete!).to eq(true)
      end
    it "3 Change the Task state to false" do
      expect(task.make_incomplete!).to eq(false)
      end
    it "4 Update the task content" do 
      expect(task.update_content!("Walk the dog")).to eq("Walk the dog")
    end
    it "5 Chek if taks are getting added to the list of tasks" do 
      length_tasks_array = todo_list.tasks.length
      todo_list.add_task(task)
      expect(todo_list.tasks.length).to be > length_tasks_array
      end
    it "6 check if a task was deleted from the task´s array trough the id" do 
      todo_list.add_task(task)
      length_tasks_array = todo_list.tasks.length
      todo_list.delete_task(task.get_task_id)
      expect(todo_list.find_task_by_id(task2.get_task_id)).to eq(nil)
      end

    it "7 check if a task exist, by the id" do
      todo_list.add_task(task)
      todo_list.add_task(task2)
      #binding.pry
      expect(todo_list.find_task_by_id(task2.get_task_id)).not_to be(nil)
      end

    it "8 check if the tasks array was sorted" do 
      todo_list.add_task(task)
      todo_list.add_task(task2)
      task_in_pos = todo_list.tasks[1]
      tasks_sorted = todo_list.sort_by_created("DESC")
      expect(tasks_sorted[1]).not_to be(task_in_pos)
      
      end

    # it "9 check if all is saved" do  #yaml da errores.
    #   todo_list.add_task(task)
    #   todo_list.add_task(task2)
    #   todo_list.add_task(task3)
    #   todo_list.save
    #   end

end