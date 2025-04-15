require "bundler/setup"

APP_RAKEFILE = File.expand_path("test/dummy/Rakefile", __dir__)
load "rails/tasks/engine.rake"

load "rails/tasks/statistics.rake"

require "bundler/gem_tasks"

if defined?(Rails) && Rails.env.development?
  task_path = File.expand_path('../lib/leva/dev_tasks/auto_annotate_models.rake', __FILE__)
  load task_path
end