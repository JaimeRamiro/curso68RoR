use sakila;
-- ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 

select * from customer;
select * from address;
select * from city;

-- filtrar
select * from address 
where city_id = 312;

select * from customer
where address_id in (256,517);

-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.
select customer.first_name nombre, customer.last_name apellido, customer.email, address.address direccion from customer
INNER JOIN address ON address.address_id = customer.address_id
where address.address_id in (256,517);

-- 2. ¿Qué consulta harías para obtener todas las películas de comedia? Su consulta debe devolver el título de la película, la descripción, 
-- el año de estreno, la calificación, las características especiales y el género (categoría).
select*from film;
select*from category;
select*from film_category;

select title, description, release_year, rating, special_features, cat.name from film
inner join film_category fc on fc.film_id=film.film_id
inner join category cat on cat.category_id=fc.category_id 
where cat.name="Comedy";
