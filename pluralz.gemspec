require "date"

Gem::Specification.new do |s|
  s.name        = 'pluralz'
  s.version     = "0.0.0"
  s.date        = Date.today.to_s
  s.summary     = "Derpzy stuff"
  s.description = "Really Derpzy stuff"
  s.authors     = ["DERPz"]
  s.email       = 'developers@3playmedia.com'
  s.files       = Dir["lib/**/*"]
  s.homepage    = 'https://github.com/ozydingo/factory_burgers'
  s.license     = 'MIT'

  s.add_dependency "strings-inflection", ">= 0.1", "< 1.0"

  s.add_development_dependency "byebug", "~>11.1"
  s.add_development_dependency "rspec", "~>3.10"
  s.add_development_dependency "rubocop", "~>1.21"
  s.add_development_dependency "rubocop-rspec", "~>2.5"
end
