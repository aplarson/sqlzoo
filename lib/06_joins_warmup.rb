require_relative './sqlzoo.rb'

def example_query
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      *
    FROM
      movie
    WHERE
      title = 'Doctor No'
  SQL
end

def films_from_sixty_two
  # List the films where the yr is 1962 [Show id, title]
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def year_of_kane
  # Give year of 'Citizen Kane'.
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def trek_films
  # List all of the Star Trek movies, include the id, title and yr (all of
  # these movies include the words Star Trek in the title). Order results by
  # year.
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def films_by_id
  # What are the titles of the films with id 11768, 11955, 21191
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def glenn_close_id
  # What id number does the actor 'Glenn Close' have?
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def casablanca_id
  # What is the id of the film 'Casablanca'
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def casablanca_cast
  # Obtain the cast list for 'Casablanca'. Use the id value that you obtained
  # in the previous question.
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

def alien_cast
  # Obtain the cast list for the film 'Alien'
  SqlZooDatabase.instance.execute(<<-SQL)
    -- your query here
  SQL
end

