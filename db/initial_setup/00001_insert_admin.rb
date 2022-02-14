require 'mysql2'
require 'digest'

@db_host = "localhost"
@db_user = "testia"
@db_pass = "testia"
@db_name = "testia_dev"

login ="admin"
password = "admin"
salt = ""

crypted_password = Digest::SHA1.hexdigest("--#{salt}--#{password}--")

client = Mysql2::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)
client.query("INSERT IGNORE INTO `users` SET 
		`id`= 1, 
		`login` = '#{login}',
 		`crypted_password` = '#{crypted_password}', 
		`salt` = '#{salt}', 
		`created_at` = CURRENT_TIMESTAMP, 
		`updated_at` = CURRENT_TIMESTAMP, 
		`description` = 'Admin account for Tarantula, created by script',
		`deleted`= 0,
		`type`= 'Admin',
		`md5_password`  = ''
		;")
