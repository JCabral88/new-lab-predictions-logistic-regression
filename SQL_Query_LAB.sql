use sakila;

-- QUERY WITH RELEVANT COLUMNS

select f.film_id, f.title, f.rental_rate, i.inventory_id, r.rental_id, r.rental_date
from film f
left join inventory i
on f.film_id = i.film_id
left join rental r
on i.inventory_id = r.inventory_id;


-- QUERY FOR JUNE

select f.film_id,f.title, count(f.film_id) as june_counts
from film f
left join inventory i
on f.film_id = i.film_id
left join rental r
on i.inventory_id = r.inventory_id
where rental_date like '2005-06%%'
group by f.film_id, f.title;

-- QUERY FOR JULY

select f.film_id,f.title, count(f.film_id) as july_counts
from film f
left join inventory i
on f.film_id = i.film_id
left join rental r
on i.inventory_id = r.inventory_id
where rental_date like '2005-07%%'
group by f.film_id, f.title;