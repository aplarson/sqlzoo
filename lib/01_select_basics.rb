require_relative './sqlzoo.rb'

def example_select
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      population
    FROM
      world 
    WHERE
      name = 'France'
  SQL
end

def select_population_of_germany
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.population
    FROM
      world
    WHERE
      world.name = 'Germany';
  SQL
end

def per_capita_gdp
  # Show the name and per capita gdp (gdp/population) for each country where
  # the area is over 5,000,000 km^2
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.name, world.gdp/world.population AS gdp
    FROM
      world
    WHERE
      world.area > 5000000;
  SQL
end

def small_and_wealthy
  # Show the name and continent of countries where the area is less than 2,000
  # and the gdp is more than 5,000,000,000.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.name, world.continent
    FROM
      world
    WHERE
      (world.area < 2000 AND world.gdp > 5000000000);
  SQL
end

def scandinavia
  # Show the name and the population for 'Denmark', 'Finland', 'Norway', and
  # 'Sweden'
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.name, world.population
    FROM
      world
    WHERE
      world.name IN ('Denmark', 'Finland', 'Norway', 'Sweden');
  SQL
end

def starts_with_g
  # Show each country that begins with the letter G
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.name
    FROM
      world
    WHERE
      world.name LIKE 'G%';
  SQL
end

def just_the_right_size
  # Show the country and the area for countries with an area between 200,000
  # and 250,000. BETWEEN allows range checking - note that it is inclusive.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      world.name, world.area/1000
    FROM
      world
    WHERE
      world.area BETWEEN 200000 AND 250000;
  SQL
end
