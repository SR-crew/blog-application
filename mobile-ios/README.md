## Blog (в разработке)

Исходник приложения **Blog**

### Содержание
  
- [Требования](#requirements)
- [Как настроить](#how-to-configure)
    - [Подготовка](#preparation)
- [Оформление коммитов](./docs/commit_style.md)
- [Обновление SwiftGen](#SwiftGen)

### <a name="requirements"></a> Требования:

* Xcode 13+
* Swift 5+
* Minimal Deployment Target - iOS 15.0
* Инструменты:
    * [`SwiftGen`](https://github.com/SwiftGen/SwiftGen) - инструмент для автоматической генерации кода Swift для ресурсов ваших проектов (таких как изображения, локализованные строки и т. д.), чтобы сделать их безопасными для использования.
    * [`SwiftLint`](https://github.com/realm/SwiftLint) - проверяет код на соответствие стилю и соглашениям принятыми разработчиками
    
###  <a name="how-to-configure"></a> Как настроить

Склонировать проект: 

```shell
$ git clone https://gitlab.crystalspring.dev/mobile/ios/zenge.git
```
    
<details open>
<summary>Мануально</summary>

#### <a name="preparation"></a> Подготовка

* установить пакет [**`SwiftGen`**](https://github.com/SwiftGen/SwiftGen):

    ```shell
    $ brew install swiftgen
    ```
        
    * установить пакет [**`SwiftLint`**](https://github.com/realm/SwiftLint) ([`Хабр`](https://habr.com/ru/company/tinkoff/blog/317892/)):
        
        ```shell
        $ brew install swiftlint
        ```
        
</details>

<br>

#### <a name="SwiftGen"></a> Обновление SwiftGen

Добавлен bundle содержащий:

 - Картинки и иконки - `*.xcassets => Assets.swift`
 - Цвета - `*.xcassets => Colors.swift`
 - Локализацию - `*.lproj/*.strings => Strings.swift`

При добавлении или изменении содержимого в одном из ресурсов, необходимо обновить `swift` файлы с помощью инструмента `SwiftGen` (настройки по нему находятся в файле `swiftgen.yml`):

Открыть проект:

```
$ cd /path/to/project
```

c помощью `brew`:

```
zenge % swiftgen
```
