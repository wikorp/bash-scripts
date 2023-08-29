#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 5
#
# Celem zajęć jest nabranie doświadczenia w pracy z mechanizmem łącz
# nienazwanych, wykorzystując przy tym szereg podstawowych narzędzi
# do przetwarzania danych tekstowych.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
#

#
# Zadanie 7.
# Odnaleźć w pliku `dodatkowe/ps-aux` proces, który zużywa najwięcej czasu
# procesora (trzecia kolumna). Jako wynik zwrócić numer procesu (druga kolumna)
# oraz po spacji pełną nazwę procesu (wszystko od 11 kolumny do końca wiersza).
#

proces=$(awk '{ print $3 }' dodatkowe/ps-aux | sort --reverse | awk 'NR==2{ print $1 }')
#echo $proces
awk -v a=$proces '$3==a { print $11 }' dodatkowe/ps-aux #czemu to rozwiazanie nie daje wyniku

#awk -v a="$a" -v b="$b" '$1==a && $10 == b' 
#awk -v chr=$i 
#awk 'NR==42{print $1; exit}'
#awk '$9 == 500 { print $0}'

cat dodatkowe/ps-aux | sort -k 3 --reverse | awk 'NR==2{ print $2,$11,$12,$13,$14,$15,$16}'

#cut -d " " -f2,11-
#$ sort -k 5 captains.txt
