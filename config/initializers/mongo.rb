db_config = YAML::load(File.read(Rails.root.to_s + "/config/database.yml"))

if db_config[Rails.env] &&
db_config[Rails.env]['adapter'] == 'mongodb'
  mongo = db_config[Rails.env]
  MongoMapper.connection = Mongo::Connection.new(mongo['hostname'])
  MongoMapper.database = mongo['database']
end

if defined?(PhusionPassenger)
   PhusionPassenger.on_event(:starting_worker_process) do |forked|
     MongoMapper.connection.connect if forked
   end
end
