# Archi 4.0.0 по-русски

Archi — [http://www.archimatetool.com]()

Основано на переводе Анатолия Левенчука ([TechInvestLab/Archi-rus-pack](https://github.com/TechInvestLab/Archi-rus-pack))

Текущая версия Archi — 4.0.0.b4

# Установка перевода в Archi

1. Скачать и установить [Archi 4 Beta](http://www.archimatetool.com/download)
2. Скачать собранный [архив с переводом](https://github.com/smeagol74/archi-ru/releases)
3. Распаковать каталог `plugins` из архива в соответствующий каталог установленного редактора Archi
4. Запустить Archi и радоваться знакомым буковкам

# Доработка перевода

1. Установить и растроить среду разработки Eclipse по [инструкции Archi](http://www.archimatetool.com/dev/eclipse-setup)
2. Импортировать код по [инструкции Archi](http://www.archimatetool.com/dev/import-code)
3. Скомпилировать и запустить Archi по [инструкции Archi](http://www.archimatetool.com/dev/running-archi)
4. Сгенерировать проекты для перевода по [инструкции Archi](http://www.archimatetool.com/dev/translate-archi)
5. Отложить каталог `${archi_src}/nls` на время в сторонку, например в каталог `${archi_src}/nls_last`
6. Получить исходники этого перевода в каталог `${archi_src}/nls`
7. Скопировать содержимое отложенного каталога `${archi_src}/nls_last` поверх файлов в каталоге `${archi_src}/nls`
8. При помощи разнообразных утилит вроде `git-diff` и крепких русских выражений привести перевод в актуальное состояние с версией Archi

# Сборка архива для установки где-нибудь ещё

1. Выгрузить файлы перевода при помощи процедуры `File`→`Export`→`Deployable plug-ins and fragments` в какой-нибудь пустой каталог.
2. Распаковать все полученные jar файлы в каталоги, чтобы получилась структура каталогов вида:
    ```
    .
    └── plugins
        ├── com.archimatetool.canvas.ru_4.0.0.201701220040
        ├── com.archimatetool.csv.ru_4.0.0.201701220040
        ├── com.archimatetool.editor.ru_4.0.0.201701220040
        ├── com.archimatetool.export.svg.ru_4.0.0.201701220040
        ├── com.archimatetool.hammer.ru_4.0.0.201701220040
        ├── com.archimatetool.help.ru_4.0.0.201701220040
        ├── com.archimatetool.jasperreports.ru_4.0.0.201701220040
        ├── com.archimatetool.model.ru_4.0.0.201701220040
        ├── com.archimatetool.reports.ru_4.0.0.201701220040
        ├── com.archimatetool.templates.ru_4.0.0.201701220040
        └── com.archimatetool.zest.ru_4.0.0.201701220040
    ```
3. Можно копировать все получившиеся каталоги в свою установку Archi или собирать в архив для "релиза"

О проблемах/пожеланиях можно писать тут в проекте.