#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
# Proszę unikać wykorzystywania narzędzia `find` w ramach bieżących zajęć.
#
# Nie przywiązujemy wagi do środowiska roboczego – zakładamy, że jego pliki,
# inne niż te podane wprost w treści zadań, mogą ulec zmianie, a przygotowane
# rozwiązania nadal powinny działać poprawnie (robić to, o czym zadanie mówi).
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 5.
# Odnaleźć nazwy plików z katalogu `dane/icao/`, których brakuje w katalogu
# `dane/backup/`. Nie zwracamy uwagi na zawartość ani ustawienia istniejących
# plików, porównujemy tylko ich nazwy. Każdą nazwę wyświetlić w osobnej linii.
#

FLAG=0

for FILE in dane/icao/*; do
	FLAG=0
	FILE_NAME="$(basename -- $FILE)"
	for CPY in dane/backup/*; do
		if [ $FILE_NAME == $(basename -- $CPY) ]; then
			FLAG=1
		fi
	done
	if [ $FLAG == 0 ]; then
		echo $FILE_NAME
	fi
	FLAG=0
done

#plik "ala" moze byc raz albo zero
