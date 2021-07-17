-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? Su consulta debe devolver la identificación del actor, 
-- el nombre del actor, el título de la película, la descripción y el año de lanzamiento.
select*from film;
select*from actor;
select*from film_actor;
select actor_id identific_actor, first_name nombre_actor, title título_película, description descripción, release_year año_lanzamiento from actor, film

-- INNER join film_actor on actor.actor_id=film_actor.actor_id
 
-- INNER join film_actor  on film.film_id=film_actor.film_id
-- where actor_id=5;