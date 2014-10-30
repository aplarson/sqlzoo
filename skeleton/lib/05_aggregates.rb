# == Schema Information
#
# Table name: world 
#
#  name        :string       not null, primary key
#  continent   :string
#  area        :integer
#  population  :integer
#  gdp         :integer

require_relative './sqlzoo.rb'

def example_sum
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      SUM(population)
    FROM
      world 
  SQL
end

def continents
  # List all the continents - just once each.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def africa_gdp
  # Give the total GDP of Africa.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def area_count
  # How many countries have an area of at least 1,000,000?
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def group_population
  # What is the total population of ('France','Germany','Spain')?
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def country_counts
  # For each continent show the continent and number of countries.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def populous_country_counts
  # For each continent show the continent and number of countries with
  # populations of at least 10 million.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end

def populous_continents
  # List the continents that have a total population of at least 100 million.
  SqlZooDatabase.instance.execute(<<-SQL)
  SQL
end
