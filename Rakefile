desc 'Update *adoc files and compile, then run server'
task :default => %i[update compile server]


desc 'Update *.adoc files'
task :update do
  # TODO
end


desc 'Compile *.adoc files to *.html'
task :compile do
  sh 'bundle exec nanoc'
end
desc 'Alias for `rake compile`'
task :c => :compile


desc 'Run server'
task :server do
  sh 'bundle exec nanoc view --host 0.0.0.0 --port 3001'
end
desc 'Alias for `rake server`'
task :s => :server

