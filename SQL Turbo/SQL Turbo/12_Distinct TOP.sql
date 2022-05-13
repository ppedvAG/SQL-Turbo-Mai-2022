--SELECT 
	DISTINCT  TOP 
	SP, SP

	--DISTINCT filtert doppelte Zeilen aus dem Ergebnis

	select   country, city from customers ---alle

	
	select distinct  country, city from customers ---es werden alle doppelte entfernt

	select distinct  customerid ,country, city from customers ---alle

	select distinct  country from customers ---es werden alle doppelte entfernt



	--TOP  aus dem Ergebnis die erste x Datensätze ausgeben

	select top 3 * from customers

	--warum diese 3 eigtl...weil die genauso auf der Festplatte rumliegen--also Zufall

	--ein TOP sollte immer mit einem  order by  kombiniert 

	select top 10 *  from customers order by country desc

	select  top 1 * from orders order by freight desc

	select top 10 percent * from orders order by freight asc --830 Zeilen davon 10% = 83 Zeilen

--mit top 17 ist der mit 0,75 an rang 18 nicht mehr dabei , obwohl gleicher Wert
	select top 18 orderid , freight from orders order by freight 

	select top 17 with ties orderid , freight from orders order by freight 


	--



