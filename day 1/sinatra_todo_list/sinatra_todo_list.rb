require "pry"
require 'yaml'

module Storage
  def save
    @todo_store = YAML::Store.new("./public/tasks.yml")

    @todo_store.transaction do 
        @todo_store[@user] = @tasks
    end
  end
end

class Todo
  include Storage
  attr_reader :tasks
  

  def initialize(user="Bloodaxe")
    @tasks = []
    @user = user
  end
  
  def delete_task(task_id)
     @tasks.delete_if{|item| item.id == task_id }

  end

  def find_task_by_id(task_id)
      task = @tasks.find{|item| item.id == task_id }
  end

  def add_task (object_task)
    @tasks << object_task
  end

  def sort_by_created (method = "DESC")
    
    if method == "DESC"
      @tasks.map.sort{| task1, task2 | task2.create_at <=> task1.create_at }
    elsif method == "ASC"
      @tasks.map.sort{| task1, task2 | task1.create_at <=> task2.create_at }
    end

  end

  

end

class Task
  attr_reader :content, :id, :create_at
  @@current_id = 1

  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @complete = false
    time = Time.now + @@current_id
    @create_at = time.strftime("%d/%b/%Y:%H:%M:%S")
    @update_at = nil
  end

  def complete?
    @complete
  end

  def complete!
    @complete = true
  end

  def make_incomplete!
    @complete = false
  end

  def update_content!(string)
    @update_at = Time.now.strftime("%d/%b/%Y:%H:%M:%S")
    @content = string
  end

  def get_task_id
    @id
  end
  # def content?
  #   @content
  # end

end
#binding.pry

# # 1
# task2 = Task.new("Wash the car")
# puts task2.id

# task = Task.new("Buy the milk")
# task.complete?

# We're going to create our Todolist, and Task classes via TDD. These classes are going to have all of the functions 
#that you would think about in a todo list, creating new tasks, deleting tasks, updating tasks, completing tasks, and maybe even a few more surprises.

# Part 2

# We have to incorporate our Todolist class into a sinatra web application. What does this really mean? 
#Well we have all of our todo list methods ready to go and waiting for us, now we need to add sinatra functionality to them. 
#Before we could display tasks in a terminal, and perform actions on them, now we need to "wire them up" and go live.

# We will add tasks to the todo list through forms, display our tasks, have the ability to complete / delete tasks, 
#and then update the task to something different.