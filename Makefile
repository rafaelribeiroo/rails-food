# https://stackoverflow.com/a/14061796/2237879
#
# This hack allows you to run make commands with any set of arguments.
#
# For example, these lines are the same:
#   > make g devise:install
#   > bundle exec rails generate devise:install
# And these:
#   > make add-migration add_deleted_at_to_users deleted_at:datetime
#   > bundle exec rails g migration add_deleted_at_to_users deleted_at:datetime
# And these:
#   > make add-model Order user:references record:references{polymorphic}
#   > bundle exec rails g model Order user:references record:references{polymorphic}
#

RUN_ARGS := $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

it:
	bundle install

db-changed:
	bundle exec rails db:setup

r:
	bundle exec rails routes

r_specific:
	bundle exec rails routes -g  # part_resource_name

migrate:
	bundle exec rails db:migrate

create:
	bundle exec rails db:create

destroy:
	bundle exec rails destroy model $(RUN_ARGS)
