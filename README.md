Phantasy Star Save State Editor
===============================

A huge study of one of the greatest games of Sega Master System's library.

Run
---

### Editor:

    mvn clean javafx:run

### Resources extractor:

    mvn clean javafx:run@extractor

### The right way

https://stackoverflow.com/questions/53668630/how-to-run-javafx-applications-in-intellij-idea-ide

Mess with maps
--------------

- maps.raw - from ps.odt. Unused.
- maps.csv - maps.raw, converted to maps.csv. Unused.
- maps-results.csv - show location in save game editor. Converted from results.csv (other fields order).
- track-maps.csv - combination from maps.csv (base) & maps-results.csv. To track save state changes.

Old info
--------

TODO overwrite memory is SS0 file.

TODO церкви - сначала == 0 а не 1

первый экран: загрузка сохранёнки
[пакетное преобразование]

второй экран - список сохранёнок, внизу выбор языка

пока много не реализовано.

по коду.
при выходе собирать сохранёнку и сравнивать. если разные - предлагать соханять

так же кнопка save as, convert

третий экран - конкретная сохранёнка.

в идеале нужно рисовать карту, предлагать выбор из списка карт, итд, скрывая все
ненужные даные.

трудность - нет карт, надо вчленить их из рома

далее.

пока нет карт - перебрать готовые сохранёнки и взять оттуда таблицу карт-координат. пока предлагать её.

транспорт, церкви - combobox

по карте. в зависимости от типа (OD/OB) в виде radiobutton предлагать разные наборы данных.