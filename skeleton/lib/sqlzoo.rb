require 'singleton'
require 'sqlite3'

class SqlZooDatabase < SQLite3::Database
  include Singleton

  def initialize
    # super(Dir.pwd + "/../sqlzoo.db")
    super(File.dirname(__FILE__) + "/../sqlzoo.db")
    self.type_translation = true
  end
end
