require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"

# TODO: CRUD some tasks

# Implement the READ logic to find a given task (by its id)
puts '#find'
task = Task.find(1)
puts task != nil
puts "#{task.title} - #{task.description}"

# Implement the CREATE logic in a save instance method
puts
puts '#save (create)'
task = Task.new(title: "Make dinner", description: "Foie gras")
task.save

puts task.id != nil

# Implement the UPDATE logic in the same method
puts
puts '#save (update)'
task = Task.find(1)
puts "#{task.done ? '[X]' : '[ ]'} - #{task.title}"
task.done = !task.done
task.save

task = Task.find(1)
puts "#{task.done ? '[X]' : '[ ]'} - #{task.title}"
# Implement the READ logic to retrieve all tasks (what type of method is it?)
puts
puts '#all'
Task.all.each { |task| puts "#{task.title} - #{task.description}"}

# Implement the DESTROY logic on a task
puts '#destroy'
task = Task.find(1)
task.destroy

puts Task.find(1) == nil






