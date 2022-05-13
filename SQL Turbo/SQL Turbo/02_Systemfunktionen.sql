--SystemFunktionen


--Datum

--Heute?

select getdate()

select getdate() -100 -- Tage

--zu einem Datum etwas dazurechnen  dateadd(intervall = yy, ww, ss, qq, hh, mi, mm,dw, dy inkrement = Anzahl , Expression  = Datum)
select dateadd(ww,2,'5.4.2022')

--welches Datum hatten wir vor 5 Quartalen
select dateadd(qq,-5, getdate()) --- ein Select muss nicht wiederholt werden

--Zeitspanne
select datediff(mm,getdate(), '31.12.2022') -- 7 Monate
select datediff(mm,'31.12.2022', getdate())  --  -7 MOnate

------Blickrichtung ---

--seit wievielen Stunden seit ihr auf der Welt

select datediff(hh, getdate(), '30.7.1969')

select datename(mm, getdate())

--welchen Wochentag haben wir?

select datename(dd, getdate()) --13..
--andere Einheit

select datename(dw, getdate()) --Freitag

select month(Getdate())

select select datepart(isoweek

select datepart(ww, getdate()) --zähglt ab eder ersten - auch unvollständigen Woche)


---TEXT


--TRIM
--datentypen: char(50)    varchar(50)
--Otto
-- 'Otto'     4 varchar (50)
--'otto                                                ' 50 char(50)

Herrn
Andreas                                                                                                         Rauch
Andreas Rauch
select left('abcdefg', 3), right('abcdefg',3)
select rtrim ('otto          '), ltrim('                 otto'), '         otto        '
select SUBSTRING('abcdefg',2,3) --ab der 2ten Stelle für 43 Zeichen Länge
select stuff ('abcdefg',2,3,'Xxxxxxxxxxxxxxxxxxxxxxx') --stuff bBefehl kombiniert Substring mit Ersetzen
select reverse('ABcdefgh') --ZK umdrehen
select 'A' + 'B' -- AB
select 100+ 'B'
select '100'+ 'B'  --100B
--Konvertieren
select convert(varchar(50),100)+ 'B'

--Längen feststellen:   LEN macht RTRIM DATALENGTH macht keinen TRIIM, sondern tats Länge
select len('   abcdefgh            '), DATALENGTH('   abcdefgh    ')

--08677-98890   --> 08677-98xxx
--089-762372356723 --> 089-762372356XXX
--bel Tel muss anonymisiert werden.. egal wie die Tel aussieht: am Ednde 3 X statt den letzten 3 Zeichen
--Weg zur Lösung: 

select STUFF('08677-944448890',DATALENGTH('08677-944448890')-2,3,'xxx'); --passt klappt

select reverse(stuff( reverse('08677-944448890'),1,3, 'XXX'))

--Der letzte Tag des Monats

--theoretisch: 
select EOMONTH(getdate())




--12738973987123987129837: 25-2








