require_relative './sqlzoo.rb'

def example_sum
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      SUM(population)
    FROM
      bbc
  SQL
end

def continents
  # List all the continents - just once each.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      DISTINCT(world.continent)
    FROM
      world;
  SQL
end

def africa_gdp
  # Give the total GDP of Africa.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      SUM(world.gdp)
    FROM
      world
    WHERE
      world.continent = 'Africa';
  SQL
end

def area_count
  # How many countries have an area of at least 1,000,000?
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      COUNT(*)
    FROM
      world
    WHERE
      world.area > 1000000;
  SQL
end

def group_population
  # What is the total population of ('France','Germany','Spain')?
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      SUM(world.population)
    FROM
      world
    WHERE
      world.name IN ('France', 'Germany', 'Spain');
  SQL
end

def country_counts
  # For each continent show the continent and number of countries.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.continent, COUNT(*)
    FROM
      world
    GROUP BY
      world.continent;
  SQL
end

def populous_country_counts
  # For each continent show the continent and number of countries with
  # populations of at least 10 million.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.continent, COUNT(*)
    FROM
      world
    WHERE
      world.population > 10000000
    GROUP BY
      world.continent;
  SQL
end

def populous_continents
  # List the continents that have a total population of at least 100 million.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.continent
    FROM
      world
    GROUP BY
      world.continent
    HAVING
      SUM(world.population) > 100000000;
  SQL
end
