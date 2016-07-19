namespace :univode do
  desc 'Reset schema without dropping database'
  task :generate => :environment do |t, a|
    require 'filewatcher'

    puts "Started waching file app.rb"

    FileWatcher.new("app.rb").watch do |filename|
      puts "Definition file changed... Regenerating files..."
      load 'app.rb'
      Univode.generate
    end

  end
end
