require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'pokemon', 'pokemon'
end

use TrainersController
use PokemonController
use PokedexController
run ApplicationController
