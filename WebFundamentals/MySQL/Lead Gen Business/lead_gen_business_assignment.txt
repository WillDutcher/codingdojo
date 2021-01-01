/*
1. What query would you run to get the total revenue for March of 2012?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT MONTHNAME(charged_datetime) AS month, SUM(amount) AS revenue
FROM billing
WHERE YEAR(charged_datetime) = 2012 AND
	  MONTH(charged_datetime) = 3;


/*
2. What query would you run to get total revenue collected from the client with an id of 2?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT clients.client_id, SUM(billing.amount) AS total_revenue
FROM billing
JOIN clients ON billing.client_id = clients.client_id
WHERE clients.client_id = 2;


/*
3. What query would you run to get all the sites that client with an id of 10 owns?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT sites.domain_name AS website, sites.client_id
FROM sites
WHERE sites.client_id = 10;


/*
4. What query would you run to get total # of sites created per month per year for the client with an id of 1? What
   about for client with an id of 20?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT sites.client_id, COUNT(*) AS number_of_websites, MONTHNAME(sites.created_datetime) AS month_created,
	YEAR(sites.created_datetime) AS year_created
FROM sites
WHERE sites.client_id = 1
GROUP BY year_created, month_created
ORDER BY year_created ASC;

SELECT sites.client_id, COUNT(*) AS number_of_websites, MONTHNAME(sites.created_datetime) AS month_created,
	YEAR(sites.created_datetime) AS year_created
FROM sites
WHERE sites.client_id = 20
GROUP BY year_created, month_created
ORDER BY year_created ASC;


/*
5. What query would you run to get the total # of leads generated for each of the sites between January 1, 2011 to
   February 15, 2011?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT sites.domain_name AS website, COUNT(leads.leads_id)
FROM sites
JOIN leads ON sites.site_id = leads.site_id
WHERE leads.registered_datetime >= '2011/01/01' AND leads.registered_datetime <= '2011/02/15'
GROUP BY website;


/*
6. What query would you run to get a list of client names and the total # of leads we've generated for each of our
   clients between January 1, 2011 to December 31, 2011?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client, COUNT(leads.leads_id)
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
JOIN leads ON sites.site_id = leads.site_id
WHERE leads.registered_datetime >= '2011/01/01' AND leads.registered_datetime < '2011/12/31'
GROUP BY client;


/*
7. What query would you run to get a list of client names and the total # of leads we've generated for each client
   each month between months 1 - 6 of Year 2011?
-------------------------------------------------------------------------------------------------------------------
*/
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client, COUNT(leads.leads_id) AS number_of_leads,
	MONTHNAME(leads.registered_datetime) AS month_generated
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
JOIN leads ON sites.site_id = leads.site_id
WHERE MONTH(leads.registered_datetime) < 7 AND YEAR(leads.registered_datetime) = '2011'
GROUP BY client, MONTH(leads.registered_datetime)
ORDER BY MONTH(leads.registered_datetime);


/*
8. What query would you run to get a list of client names and the total # of leads we've generated for each of our
   clients' sites between January 1, 2011 to December 31, 2011? Order this query by client id.  Come up with a
   second query that shows all the clients, the site name(s), and the total number of leads generated from each
   site for all time.
-------------------------------------------------------------------------------------------------------------------
*/
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client, sites.domain_name AS website,
	COUNT(leads.leads_id) AS number_of_leads
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
LEFT JOIN leads ON sites.site_id = leads.site_id
WHERE leads.registered_datetime >= '2011/01/01' AND leads.registered_datetime < '2011/12/31'
GROUP BY website, client
ORDER BY clients.client_id, website;

SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client, sites.domain_name AS website,
	COUNT(leads.leads_id) AS number_of_leads
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
LEFT JOIN leads ON sites.site_id = leads.site_id
GROUP BY website, client
ORDER BY clients.client_id, website;
	

/*
9. Write a single query that retrieves total revenue collected from each client for each month of the year. Order
   it by client id.  First try this with integer month, second with month name.  A SELECT subquery will be needed
   for the second challenge.  Look at this for a hint.
-------------------------------------------------------------------------------------------------------------------
*/
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client_name, sum(amount) AS total_revenue,
	   DATE_FORMAT(billing.charged_datetime, '%m') AS month_charged, YEAR(billing.charged_datetime) AS year_charged
FROM clients
LEFT JOIN billing ON clients.client_id = billing.client_id
WHERE clients.client_id = billing.client_id
GROUP BY client_name, YEAR(charged_datetime), MONTH(charged_datetime)
ORDER BY clients.client_id, year_charged, month_charged;
    
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client_name, sum(amount) AS total_revenue,
	   MONTHNAME(billing.charged_datetime) AS month_charged, YEAR(billing.charged_datetime) AS year_charged
FROM clients
LEFT JOIN billing ON clients.client_id = billing.client_id
WHERE clients.client_id = billing.client_id
GROUP BY client_name, YEAR(charged_datetime), MONTH(charged_datetime)
ORDER BY clients.client_id, year_charged, DATE_FORMAT(billing.charged_datetime, '%m');


/*
10. Write a single query that retrieves all the sites that each client owns. Group the results so that all of the
   sites for each client are displayed in a single field. It will become clearer when you add a new field called
   'sites' that has all the sites that the client owns. (HINT: use GROUP_CONCAT)
-------------------------------------------------------------------------------------------------------------------
*/
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS client_name,
	   GROUP_CONCAT(' ', sites.domain_name ORDER BY sites.domain_name) AS sites
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
GROUP BY client_name
ORDER BY clients.client_id, sites;