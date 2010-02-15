require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.title { Faker::Lorem.sentence }
Sham.url { Faker::Internet.domain_name }

Page.blueprint do
  title
  url
end