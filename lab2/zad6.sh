#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3
#
# Celem zajęć jest pogłębienie wiedzy na temat struktury systemu plików,
# poruszania się po katalogach i kontroli uprawnień w skryptach powłoki.
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
# Zadanie 6.
# Odnaleźć w katalogu `dane/pierwiastki/` wszystkie dowiązania miękkie, które
# wskazują na jakiś cel przy pomocy ścieżki bezwzględnej. Wyświetlić ścieżki
# z takich dowiązań, ale poprawione w taki sposób, aby były one ścieżkami
# kanonicznymi. Element wskazywany przez dowiązanie nie musi istnieć.
#

for L in dane/pierwiastki/*; do
	if [[ -L ${L} ]]; then # czy to dowiązanie
		#echo "$L" #
		#SRC=$(readlink -f ${L})
		#echo "${SRC}" 
		#if  test -e ${L}; then # czy to na co wskazuje istnieje   
		echo $(readlink -f ${L}) # zawartosc tego na co wskazuje TO SAMO CO cat "$SRC" 
		#fi
	fi
done

#czemu on ma problem z czytaniem tycg nazw
