class ShakespeareGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'db/migrate'
      m.file "20091230095600_create_pages.rb", "db/migrate/20091230095600_create_pages.rb"
    end
  end
end