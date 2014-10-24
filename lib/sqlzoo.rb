require 'singleton'
require 'sqlite3'

class SqlZooDatabase < SQLite3::Database
  include Singleton

  def initialize
    super('../datasets/sqlzoo.db')
    self.results_as_hash = true
    self.type_translation = true
  end
end
