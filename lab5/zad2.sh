#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 6
#
# Celem zajęć jest zapoznanie się z możliwościami narzędzia awk.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
# Większość rozwiązań powinno sprowadzić się do jednego, zmyślnego wywołania
# programu `awk` z odpowiednimi argumentami.
#

#
# Zadanie 2.
# Wiedząc, że pola w pliku `dodatkowe/etc-passwd` są rozdzielone znakiem
# dwukropka (:), proszę wyodrębnić przy użyciu programu `awk` take nazwy
# użytkowników (pierwsze pole), których identyfikator (trzecie pole)
# wynosi co najmniej 1000, a ich powłoka (siódme pole) to /bin/bash.
# Każdą nazwę użytkownika wypisać w nowej linii.
#
awk -F':' '{ if ($3 >= 1000 && $7 == "/bin/bash") print $1 }' dodatkowe/etc-passwd

#czy w warunkach domyslnie wartosc liczbowa a jak w " " to string?
