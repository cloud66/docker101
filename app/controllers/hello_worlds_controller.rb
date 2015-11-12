class HelloWorldsController < ApplicationController
	def index
		HelloWorld.generate_new
		@hello_worlds = HelloWorld.all
	end

	def clear
		HelloWorld.destroy_all
	end

end
