task :whiggers => 'db:reset' do
  Whiggers.create
end