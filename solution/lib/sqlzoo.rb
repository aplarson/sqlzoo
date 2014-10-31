require 'pg'

def execute(sql)
  conn = PG::Connection.open(:dbname => 'sqlzoo')
  res = conn.exec(sql)
  res.values
end

def test_query
  execute(<<-SQL)
    SELECT
      *
    FROM
      world
  SQL
end

# require 'singleton'
# require 'sqlite3'
# 
# class SqlZooDatabase < SQLite3::Database
#   include Singleton
# 
#   def initialize
#     # super(Dir.pwd + "/../sqlzoo.db")
#     super(File.dirname(__FILE__) + "/../sqlzoo.db")
#     self.type_translation = true
#   end
# end

if __FILE__ == $PROGRAM_NAME
  p test_query 
end
