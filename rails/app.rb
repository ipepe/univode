File.write './config/routes.rb', <<-Ruby
Rails.application.routes.draw do
  root 'example#index'
end
Ruby