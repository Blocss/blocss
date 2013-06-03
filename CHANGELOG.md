== HEAD

== 3.2.0 (Jun 03, 2013)

* Added possibility of unitless & sting values to rem & position mixin
* Fixed @font-face mixin to be compliant with font-face compass mixin
* Added normalis font class
* Renamed commonly used variables to shorter ones
* Replaced flexbox with arrange module

== 3.1.2 (May 29, 2013)

* Modified rem mixin - multivalue
* Enhanced position mixin - remmed, accepts 0, mimics `padding` & `margin` behaviour

== 3.1.1 (May 21, 2013)

* Maintenance, removed media query sections from files, typo’s & updated the readme

== 3.1.0 (May 16, 2013)

* Updated media query setup, so you can add, rename, modify you media queries
* Updated griddle build system to compy width media query change
* Added various modifyer classes to grid system
* `.visuallyhidden` also uses new media query system

== 3.0.1 (May 14, 2013)

* Written up README.md
* Written up CONTRIBUTING.md
* Added CHANGELOG.md

== 3.0.0 (May 07, 2013)

* Added multiplier to font-size mixin to enable higher lineheight
* BEM-med all modules that still needed BEMification
* Removed deprecated classnames
* New media query naming convention: lapup -> gt-palm, portable -> lt-desk / Old media query names still work, but will be removed in v4