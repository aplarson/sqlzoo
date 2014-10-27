require 'singleton'
require 'sqlite3'

class SqlZooDatabase < SQLite3::Database
  include Singleton


  def initialize
    dir = Dir.pwd.split('/')

    if dir.last == 'sqlzoo'
      db_path = 'sqlzoo.db'
    else
      db_path = '../sqlzoo.db'
    end

    super(db_path)
    self.type_translation = true
  end
end
