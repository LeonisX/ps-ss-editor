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

Old info
--------

TODO overwrite memory is SS0 file.

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