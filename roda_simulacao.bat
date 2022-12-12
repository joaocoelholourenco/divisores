@echo off
del resultados-c.csv
del resultados-java.csv
del resultados-pareados.csv

javac MergeText.java
javac DivisoresColeta.java


SETLOCAL ENABLEDELAYEDEXPANSION
SET res = 0

Echo c>>resultados-c.csv
Echo java>>resultados-java.csv

for /l %%x in (1, 1, 10) do (

	echo rodada %%x
	SET /A res = 100000000 * %%x

	divisores-coleta !res!>>resultados-c.csv
	java DivisoresColeta !res!>>resultados-java.csv
	
)

java MergeText
start https://graphics-joaovitorcl13.vercel.app/