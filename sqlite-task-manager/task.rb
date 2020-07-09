class Task
	attr_accessor :title, :description, :done
	attr_reader :id
	def initialize(attributes = {})
		@id = attributes[:id]
		@title = attributes[:title]
		@description = attributes[:description]
		@done = attributes[:done] || false
	end

	def self.all
		DB.execute("SELECT * FROM tasks").map do |hash|
			build_task(hash)
		end
	end

	def self.find(id)
		hash = DB.execute("SELECT * FROM tasks WHERE id = ?", id).first
		hash ? build_task(hash) : nil
	end

	def save
		if id
			DB.execute("UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?", @title, @description, @done ? 1 : 0, @id)
		else
			DB.execute("INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)", @title, @description, @done ? 1 : 0)  
			@id = DB.last_insert_row_id
		end
	end

	def destroy
		DB.execute("DELETE FROM tasks WHERE id = ?", @id)
	end

	private

	def self.build_task(hash)
		Task.new(
			id: hash["id"],
			title: hash["title"],
			description: hash["description"],
			done: hash["done"] == 1
			)
	end
end
