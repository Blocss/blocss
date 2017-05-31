# Blocss – v7.0.0-alpha

**Note:**
Blocss 7 is in early alpha stage, so there might be dragons ahead. If you find a problem, please file an issue in the [issue tracker](https://github.com/Blocss/blocss/issues).

Keep in mind that the API of some components has changed drastically, please check the modules for specific implementation details.
Due to this change there is a legacy wrapper available in `/lib/tools/_legacy.scss`. This file contains some "old" mixin and function names which are wrapped to their new ones.

Blocss 7 is fully compliant with the old modules, given you use the `legacy` mixin file.
`blocss.scss` is added as a reference file on how you could implement the smaller components.


**Why use Blocss:**
[Blocss](http://blocss.github.io/blocss) is a small but powerfull css framework designed specially for _serious_ developers.
Blocss provides little to no design wich means no undoing other peoples design decisions. I’m constantly updating en revising the code to be more lean, more future proof, and most of all: A great base to start your front-end project with.

Use blocss if:

* You need a powerful library of modules & objects.
* You appreciate the value of Object Oriented code and the need for scalability
  and reuse.
* You need a framework that is robust and evolves constantly.

## Documentation
Blocss is heavily documented, which means that every component is commented very well. For naming conventions, style guides & api please read the **[documentation](doc/README.md)**.

## Browser support
Blocss supports ALL major browsers from **IE10** and up, but it’s configurable to be future proof.

## Installation

**Requires Sass 3.2+**

* yarn: `yarn add blocss --dev`
* npm: `npm install blocss --save-dev`
* Bower(deprecated): `bower install --save blocss`

## Getting started
Blocss is a very design-free framework. This means that the style and design
of your site is left entirely up to you.
Because Blocss gives you lots of customisable foundations, you need to add
the final layer: UI.

All blocss submodules are created based on the ITCSS principle:

### Settings

**[_defaults.scss](https://github.com/Blocss/blocss/blob/master/lib/settings/_defaults.scss)**
This is the configuration layer and needs to be included before any other subcomponent. All the variables which are living in this file can be overwritten from your own application settings.

### Tools

**[_functions.scss](https://github.com/Blocss/blocss/blob/master/lib/tools/_functions.scss)**
This file contains all Sass functions which are used in the framework, feel free to also use this functions in your application. This file needs to be included before any other subcomponent & mixins.

**[_mixins.rem.scss](https://github.com/Blocss/blocss/blob/master/lib/tools/_mixins.rem.scss)**
This is a mixin which can convert a property's value directly to a `rem` value.
Sample usage:
```scss
@include blocss-rem(margin, 0 auto 300px, !important);
```
Which, with a `$blocss-base-font-size` of `16px`, will compile to:
```scss
margin: 0 auto 18.75rem !important;
```

**[_mixins.font-size.scss](https://github.com/Blocss/blocss/blob/master/lib/tools/_mixins.font-size.scss)**
This mixin converts a pixel value to a rem based font-size, while maintaining a vertical rhythm in the font size
Sample usage:
```scss
@include blocss-font-size (14px);
```
Which, with a `$blocss-base-font-size` of `16px` and a `$blocss-base-line-height` of `24px`, will compile to:
```scss
font-size: 0.875rem; // 14px
line-height: 1.71428571; // 24px
```

**[_mixins.media-query.scss](https://github.com/Blocss/blocss/blob/master/lib/tools/_mixins.media-query.scss)**
Enclose a block of code with a media query as named in `$blocss-breakpoints`.
Sample usage:
```scss
// in your project's variables
$blocss-breakpoints: (
  "lap": "(min-width: 480px)",
  "desk": "(min-width: 960px)"
);

// In your component
@include blocss-media-query(lap) {
  outline: 1px solid red;
}
```
Compiles to:
```scss
@media (min-width: 480px) {
  outline: 1px solid red;
}
```

## Credits

Blocss, maintained by 2 developers, but is derived by the ideas of many other developers:

* [Harry Roberts](https://twitter.com/csswizardry) for his awesome ideas & inuit.css framework wich is derived off the same philosophy as Blocss
* [Nicole Sullivan](https://twitter.com/stubbornella) for her work on OOCSS
* [Jonathan Snook](https://twitter.com/snookca) for his work on SMACSS
* [Nicolas Gallagher](https://twitter.com/necolas) for his work on numerous CSS things

And probably more…
