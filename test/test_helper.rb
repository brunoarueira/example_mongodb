ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require_relative '../lib/mongo_mapper/fixture_set'

class ActiveSupport::TestCase
  include MongoMapper::FixtureSet::TestHelper

  self.fixture_path = Rails.root.join('test', 'fixtures')
end
