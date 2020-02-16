set :rails_env, :production

role :app, %w[runteq@ec2-3-112-200-108.ap-northeast-1.compute.amazonaws.com]
role :web, %w[runteq@ec2-3-112-200-108.ap-northeast-1.compute.amazonaws.com]
role :db,  %w[runteq@ec2-3-112-200-108.ap-northeast-1.compute.amazonaws.com]

# set :ssh_options, keys: [ENV['PRODUCTION_SSH_KEY']], forward_agent: true, auth_methods: %w[publickey]
# if ENV['CI']
#
# role :app, %w[devuser@app1.start-dash.startup-technology.com]
# role :web, %w[devuser@app1.start-dash.startup-technology.com]
# role :db, %w[devuser@app1.start-dash.startup-technology.com]
# role :batch, %w[devuser@app1.start-dash.startup-technology.com]
# role :resque_worker, %w[devuser@app1.start-dash.startup-technology.com]
