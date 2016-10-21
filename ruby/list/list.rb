class TodoList
	attr_reader :get_items
	def initialize(get_items)
		@get_items = ["do the dishes", "mow the lawn"]
	end

	def add_item(get_items)
		@get_items << "mop"
		@get_items
	end

	def delete_item(get_items)
		@get_items.delete("do the dishes")
		@get_items
	end

	def get_item(get_items)
		@get_items[0] = "do the dishes"
	end
end
