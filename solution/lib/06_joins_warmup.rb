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
    SELECT
      movie.id, movie.title
    FROM
      movie
    WHERE
      movie.yr = 1962;
  SQL
end

def year_of_kane
  # Give year of 'Citizen Kane'.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      movie.yr
    FROM
      movie
    WHERE
      movie.title = 'Citizen Kane';
  SQL
end

def trek_films
  # List all of the Star Trek movies, include the id, title and yr (all of
  # these movies include the words Star Trek in the title). Order results by
  # year.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      movie.id, movie.title, movie.yr
    FROM
      movie
    WHERE
      movie.title LIKE '%Star Trek%'
    ORDER BY
      movie.yr;
  SQL
end

def films_by_id
  # What are the titles of the films with id 11768, 11955, 21191
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      movie.title
    FROM
      movie
    WHERE
      movie.id IN (1768, 1595, 1191);
  SQL
end

def glenn_close_id
  # What id number does the actor 'Glenn Close' have?
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      actor.id
    FROM
      actor
    WHERE
      actor.name = 'Glenn Close';
  SQL
end

def casablanca_id
  # What is the id of the film 'Casablanca'
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      movie.id
    FROM
      movie
    WHERE
      movie.title = 'Casablanca';
  SQL
end

def casablanca_cast
  # Obtain the cast list for 'Casablanca'. Use the id value that you obtained
  # in the previous question.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      actor.name
    FROM
      actor
    JOIN
      casting ON casting.actorid = actor.id
    JOIN
      movie ON movie.id = casting.movieid
    WHERE
      movie.title = 'Casablanca';
  SQL
end

def alien_cast
  # Obtain the cast list for the film 'Alien'
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      actor.name
    FROM
      actor
    JOIN
      casting ON casting.actorid = actor.id
    JOIN
      movie ON movie.id = casting.movieid
    WHERE
      movie.title = 'Alien';
  SQL
end

