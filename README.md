# Archi 4.3.1 по-русски

Archi — [http://www.archimatetool.com](http://www.archimatetool.com).

Основано на переводе Анатолия Левенчука ([TechInvestLab/Archi-rus-pack](https://github.com/TechInvestLab/Archi-rus-pack)).

Текущая версия Archi — 4.3.1

# Установка перевода в Archi

1. Скачать и установить [Archi 4](http://www.archimatetool.com/download).
2. Скачать [перевод базовых компонентов Eclipse](http://download.eclipse.org/technology/babel/babel_language_packs/R0.14.1/neon/neon.php#ru). Нужен основной файл `BabelLanguagePack-eclipse-ru_4.6.0.vYYYYMMDDhhmmss.zip`
3. Распаковать каталоги `features` и `plugins` из архива в соответствующие каталоги установленного редактора Archi.
4. Скачать собранный [архив с переводом собственно Archi](https://github.com/smeagol74/archi-ru/releases). Скачивать нужно скомпилированный файл релиза с именем `archi-ru.V.V.V.YYYYMMDDHHMM.zip` на странице [скомпилированных версий](https://github.com/smeagol74/archi-ru/releases), а не архив с исходниками.
5. Распаковать каталог `plugins` из архива в соответствующий каталог установленного редактора Archi. Если вы уже устанавливали русификацию раньше, то из каталога `plugins` лучше удалить старые версии русификации.
6. Запустить Archi и радоваться знакомым буковкам.

# Доработка перевода

1. Установить и настроить среду разработки Eclipse по [инструкции Archi](http://www.archimatetool.com/dev/eclipse-setup).
2. Импортировать код по [инструкции Archi](http://www.archimatetool.com/dev/import-code).
3. Скомпилировать и запустить Archi по [инструкции Archi](http://www.archimatetool.com/dev/running-archi).
4. Склонировать репозиторий [smeagol74/archi-nls](https://github.com/smeagol74/archi-nls) с историей изменения языковых ресурсов.
5. При необходимости добавить недостающих версий изменений ресурсов для перевода согласно [инструкции](https://github.com/smeagol74/archi-nls)
6. При помощи команды `cd ${ARCHI-NLS-DIR} && git diff ${ARCHI-RU-VERSION}` получить список изменений в оригинальных языковых ресурсах, которые необходимо внести в аналогичные русскоязычные ресурсы.   
7. При помощи разнообразных утилит вроде `git-diff`, [Eclipse ResourceBundle Editor](https://github.com/essiembre/eclipse-rbe), `native2ascii` и крепких русских выражений привести перевод в актуальное состояние с требуемой версией Archi.

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
3. Можно копировать все получившиеся каталоги в свою установку Archi или собирать в архив для "релиза".

О проблемах/пожеланиях можно писать тут в проекте.
