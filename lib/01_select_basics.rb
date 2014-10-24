require_relative './sqlzoo.rb'

def example_select
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      population
    FROM
      bbc
    WHERE
      name = 'France'
  SQL
end

def select_population_of_germany
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def per_capita_gdp
  # Show the name and per capita gdp (gdp/population) for each country where
  # the area is over 5,000,000 km^2
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def small_and_wealthy
  # Show the name and continent where the area is less than 2,000 and the gdp
  # is more than 5,000,000,000
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def scandinavia
  # Show the name and the population for 'Denmark', 'Finland', 'Norway', and
  # 'Sweden'
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def starts_with_g
  # Show each country that begins with the letter G
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def just_the_right_size
  # Show the country and the area for countries with an area between 200,000
  # and 250,000. BETWEEN allows range checking - note that it is inclusive.
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end
