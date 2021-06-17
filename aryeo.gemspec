# -*- encoding: utf-8 -*-

=begin
#Aryeo


Contact: jarrod@aryeo.com
=end

$:.push File.expand_path("../lib", __FILE__)
require "aryeo/version"

Gem::Specification.new do |s|
  s.name        = "aryeo"
  s.version     = Aryeo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jarrod Parkes"]
  s.email       = ["jarrod@aryeo.com"]
  s.homepage    = "https://github.com/AryeoHQ/aryeo-api-ruby-sdk"
  s.summary     = "Ruby SDK for Aryeo API."
  s.description = "Ruby SDK for Aryeo API."
  s.license     = "Apache 2.0"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
