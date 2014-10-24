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

def large_countries
  # Show the names of the countries that have a population of at least
  # 200 million. 200 million is 200,000,000 (eight zeros).
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end


def high_population_gdps
  # Give the names and the per capita GDPs of countries with a population
  # of at least 200 million.
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def population_in_millions
  # Show the name and population in millions for the countries with continent
  # 'South America'. Divide the population by 1,000,000 to get population in
  # millions.
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def name_and_population
  # Show the name and population for 'France', 'Germany', and 'Italy'
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def united_we_stand
  # Show the countries that have a name that includes the word 'United'
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end
