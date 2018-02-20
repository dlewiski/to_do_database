require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/task'
require 'pg'

DB = PG.connect({:dbname => 'to_do'})

get('/') do
  @d = Task.all()
  erb(:to_do)
end

post('/') do
  new_task= Task.new(:description, :due_date)
  new_task.save()
  erb(:to_do)
end
