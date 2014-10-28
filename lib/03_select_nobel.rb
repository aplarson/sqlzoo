require_relative './sqlzoo.rb'

def example_select
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      yr, subject, winner
    FROM
      nobel 
    WHERE
      yr = 1960
  SQL
end

def prizes_from_1950
  # Display Nobel prizes for 1950.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.yr, nobel.subject, nobel.winner
    FROM
      nobel
    WHERE
      nobel.yr = 1950;
  SQL
end

def literature_1962
  # Show who won the 1962 prize for Literature.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.winner
    FROM
      nobel
    WHERE
      (nobel.yr = 1962 AND nobel.subject = 'Literature');
  SQL
end

def einstein_prize
  # Show the year and subject that won 'Albert Einstein' his prize.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.yr, nobel.subject
    FROM
      nobel
    WHERE
      nobel.winner = 'Albert Einstein';
  SQL
end

def millennial_peace_prizes
  # Give the name of the 'Peace' winners since the year 2000, including 2000.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.winner
    FROM
      nobel
    WHERE
      (nobel.subject = 'Peace' AND nobel.yr >= 2000);
  SQL
end

def eighties_literature
  # Show all details (yr, subject, winner) of the Literature prize winners
  # for 1980 to 1989 inclusive.
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.yr, nobel.subject, nobel.winner
    FROM
      nobel
    WHERE
      (nobel.subject = 'Literature' AND (nobel.yr BETWEEN 1980 AND 1989));
  SQL
end

def presidential_prizes
  # Show all details of the presidential winners: ('Theodore Roosevelt',
  # 'Woodrow Wilson', 'Jed Bartlet', 'Jimmy Carter')
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.yr, nobel.subject, nobel.winner
    FROM
      nobel
    WHERE
      nobel.winner IN
        ('Theodore Roosevelt', 'Woodrow Wilson', 'Jed Bartlet', 'Jimmy Carter');
  SQL
end

def nobel_johns
  # Show the winners with first name John
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT
      nobel.winner
    FROM
      nobel
    WHERE
      nobel.winner LIKE 'John%';
  SQL
end

# BONUS PROBLEM: require sub-queries or joins.

def physics_no_chemistry
  # In which years was the Physics prize awarded, but no Chemistry prize?
  SqlZooDatabase.instance.execute(<<-SQL)
    SELECT DISTINCT
      yr
    FROM
      nobel
    WHERE
      (subject = 'Physics' AND yr NOT IN (
        SELECT
          yr
        FROM
          nobel
        WHERE
          subject = 'Chemistry'
      ))
  SQL
end
