SELECT Distinct movies.name, movies.earnings_rank
FROM movies, oscars
WHERE movies.id=oscars.movies_id AND movies.earnings_rank= (SELECT MIN(movies.earnings_rank) FROM movies, oscars WHERE movies.id=oscars.movies_id AND oscars.type= 'Best-Picture');