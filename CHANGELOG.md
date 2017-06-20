== HEAD

== 7.0.0 (June 20, 2017)

* Documented the core functionalities
* Changed the `fractions` API to use more readable classnames
* Updated general principles & code style documentation
* Moved stylelint config to https://github.com/Blocss/stylelint-config-blocss

== 7.0.0-alpha (May 20, 2017)

* Moved all most used subcomponents back into the core
* Introduced `o-`, `c-` & `u-` namespaces
* Changed responsive modifier to `\\@`, so you can use `@` in your components
* Prefixed all variables, mixins & functions with `blocss-`
* Added blocss to the `npm` registry making it available for `npm` & `yarn`
* Added stylelint rules
* Added .editorconfig

== 6.0.0 (Nov 25, 2015)

* Updated blocss with all separate components
* Added starterkit for easy startup

== 5.0.8 (Nov 18, 2014)

* Listed all files in main

== 5.0.4 (Feb 08, 2014)

* Added docs
* Separate mq debugger
* added `<hr>` to reset

== 5.0.3 (Jan 29, 2014)

* Updated normalize to v3.0.0

== 5.0.2 (Jan 07, 2014)

* added default list & monospace resets
* Show baseline setting for vertical rhythm testing
* Smaller clearfix

== 5.0.1 (Dec 28, 2013)

* Updated readme

== 5.0.0 (Dec 15, 2013)

* Rebuild from ground up, only contains ground-zero core styles & mixins

== 4.2.0 (Nov 24, 2013)

* Added CSS module 3 columns
* Added Rem & Em functions


== 4.1.0 (Nov 08, 2013)

* Simpler, more foolproof way of the grid system
* Added `.img--full` for full width images
* Added display property helper classes
* Added `.hgroup` to vertical rhythm
* Moved `.sign` classes to helpers
* Added fieldset styling + `.is-valid` classes to form fields

== 4.0.4 (Nov 04, 2013)

* Added subselector to flexembed

== 4.0.3 (Nov 03, 2013)

* Definitive cross browser grid fix

== 4.0.2 (Okt 30, 2013)

* Quick fix for the grid system in safari7

== 4.0.0 (Sep 26, 2013)

* Add core stylesheet
* Comply with formatting guideline
* Border-box is standard
* Added module spacing classes
* Added line height helpers
* Fixed some problems with the arrange module
* Modified margin bottom classes
* Removed deprecated classnames
* Removed link complex & split module
* Removed position mixin in favor of multi-rem mixin
* Removed m-height & m-margin-bottom mixin
* Modified rem mixin & added multi-rem mixin
* Added legacy ie8 variable
* Removed obsolete inline-block mixin
* Removed Animation & Timing functions

== 3.3.0 (Jun 12, 2013)

* Fixed inline-block grid
* Added new button modifyer setup
* Renamed commonly used variables to shorter ones

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
