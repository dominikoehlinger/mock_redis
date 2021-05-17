source 'http://rubygems.org'

# Specify your gem's dependencies in mock_redis.gemspec
gemspec

# Run all pre-commit hooks via Overcommit during CI runs
gem 'overcommit', '0.53.0'

# Pin tool versions (which are executed by Overcommit) for Travis builds
gem 'rubocop', '0.82.0'

gem 'coveralls', require: false

# TODO: add this to the gemspec if it is merged to the redis-rb gem
gem 'redis', git: 'git@github.com:dominikoehlinger/redis-rb.git'
