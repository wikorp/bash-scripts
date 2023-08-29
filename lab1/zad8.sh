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
# Zadanie 8.
# Wyszukać w katalogu `dane/` i jego bezpośrednich podkatalogach (jeden poziom
# wgłąb) wszystkie pliki zwyczajne (nie katalogi!), które są w systemie plików
# oznaczone jako wykonywalne. Wyświetlić ścieżki do wszystkich znalezionych
# plików względem katalogu `dane/`. Każdą ścieżkę wyświetlić w osobnej linii.
#
cd dane
for FILE in *; do
	#echo $FILE
	if [ -d "$FILE" ]; then
		for FILE2 in "$FILE"/*; do
			if [ -x "$FILE2" ] && [ ! -d "$FILE2" ];  then  # zle to dziala
				echo "$FILE2"
			fi
		done
	elif test -x "$FILE"; then
		echo "$FILE"
	fi
done


#uwzglednia katalogi i nie wylapal jednego pliku chyba chodzi o spacje
#klamry zamiast test
#jak podwojne klamry to nie bylo tych bledow i ostrzerzen w konsoli
