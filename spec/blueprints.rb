require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.title { Faker::Lorem.sentence }

Page.blueprint do
  title
end