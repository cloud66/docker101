Rails.application.routes.draw do
	root 'hello_worlds#index'
	get 'clear', :to => 'hello_worlds#clear'
end
