#Exercicis Queries SQL
#Exercici 1
SELECT 
    COUNT(FlightID)
FROM
    flights;

#Exercici 2
SELECT 
    Origin, AVG(ArrDelay), AVG(DepDelay)
FROM
    flights
GROUP BY Origin;

#Exercici 3
SELECT 
    Origin, ColYear, ColMonth, AVG(ArrDelay)
FROM
    flights
GROUP BY Origin , ColYear , ColMonth
ORDER BY Origin;

#Exercici 4
SELECT 
    u.City, s.ColYear, s.ColMonth, AVG(s.ArrDelay)
FROM
    USAirports u
        INNER JOIN
    Flights s ON u.IATA = s.Origin
GROUP BY u.City , ColYear , ColMonth
ORDER BY u.City;

#Exercici 5
SELECT 
    s.UniqueCarrier, s.ColYear, s.ColMonth, COUNT(s.Cancelled)
FROM
    Flights s
WHERE
    s.Cancelled = 1
GROUP BY s.UniqueCarrier , s.ColYear , s.ColMonth
ORDER BY COUNT(s.Cancelled) DESC;

#Exercici 6
SELECT TailNum, SUM(Distance)
FROM 
Flights
WHERE 
TailNum IS NOT NULL
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10 OFFSET 1;

#Exercici 7
SELECT 
    UniqueCarrier, AVG(ArrDelay)
FROM
    Flights
GROUP BY UniqueCarrier
HAVING
    AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;


