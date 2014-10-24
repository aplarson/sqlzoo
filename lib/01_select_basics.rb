require_relative './sqlzoo.rb'

def example_select
  results = SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      population
    FROM
      bbc
    WHERE
      name = 'France'
  SQL

  p results
end

if __FILE__ == $PROGRAM_NAME
  example_select
end
