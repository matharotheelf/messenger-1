

namespace :db do
  require "data_mapper"

  desc "WARNING! Resets the db!"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Migration successful!"
  end

  desc "Runs DataMapper.auto_upgrade!"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Upgrade successful!"
  end

end
