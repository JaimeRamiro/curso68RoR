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

