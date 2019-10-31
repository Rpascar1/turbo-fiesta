require "./config/environment"

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

use User_Controller
use Jokes_Controller
run Application_Controller
