/*Find the Best-Picture winner with the best/smallest earnings rank. The
result should have the form (name, earnings_rank). Assume no two movies
have the same earnings rank.*/

/*filter by oscar type then choose the one with smallest rank*/

SELECT movies.name, movies.earnings_rank
FROM movies, oscars
WHERE movies.id=oscars.movies_id AND movies.earnings_rank= (SELECT MIN(movies.earnings_rank) FROM movies, oscars WHERE movies.id=oscars.movies_id AND oscars.type= 'Best-Picture');