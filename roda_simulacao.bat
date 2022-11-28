@echo off
del resultados-c.txt
del resultados-java.txt
del resultados-pareados.txt

SETLOCAL ENABLEDELAYEDEXPANSION
SET res = 0

for /l %%x in (1, 1, 10) do (

	echo rodada %%x
	SET /A res = 10000000 * %%x

	divisores-coleta !res!>>resultados-c.txt
	java DivisoresColeta !res!>>resultados-java.txt
	
)

java MergeText
start https://graphics-joaovitorcl13.vercel.app/