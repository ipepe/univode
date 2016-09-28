module Univode
  def self.define_app(name, &block)
    @app_name = name
  end

  def self.generate
    puts "Generating files for #{@name}"
  end
end

Univode.define_app :foosball do |app|
  app.has_model(:matches) do |match|
    match.belongs_to red_team_player_one: :user,
                     blue_team_player_one: :user,
                     red_team_player_two: :user,
                     blue_team_player_two: :user
  end
end

# File.write './config/routes.rb', <<-Ruby
# Rails.application.routes.draw do
#   root 'example#index'
# end
# Ruby