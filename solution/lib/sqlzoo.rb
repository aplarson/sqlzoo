require 'pg'

def execute(sql)
  conn = PG::Connection.open(:dbname => 'sqlzoo')
  conn.exec(sql).values
end

def test_query
  execute(<<-SQL)
    SELECT
      *
    FROM
      world
    WHERE
      population > 1000;
  SQL
end

if __FILE__ == $PROGRAM_NAME
  p test_query 
end
