require 'bundler'
require 'yaml'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))
core_classes_array = data['subjects'].first['core_classes']
electives_array = data['subjects'].last['electives']
students_array = data['students']
professors_array = data['professors']