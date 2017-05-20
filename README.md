# Blocss – v7.0.0-alpha

**Note:**
Blocss 7 is in early alpha stage, so there might be dragons ahead. If you find a problem, please file an issue in the [issue tracker](https://github.com/Blocss/blocss/issues).
The documentation is not entirely up to date, please bare with me.

The following subcomponents are ported back into the core:

* settings.defaults, moved to `/lib/settings/_defaults.scss`
* tools.mixins, splitted up into smaller pieces, moved to: `/lib/tools/`
* atoms.normalize, updated to the latest version, moved to: `/lib/generic/_normalize.scss`
* atoms.reset, moved to: `/lib/generic/_reset.scss`
* atoms.shared, moved to: `/lib/generic/_vertical-rhythm.scss`
* molecules.layout, moved to: `/lib/objects/_layout.scss`
* flexembed, moved to: `/lib/objects/_flexembed.scss`
* atoms.dimensions, moved to: `/lib/utilities/_fractions.scss`
* tools.extends, moved to: `/lib/utilities/_module.scss` & `/lib/utilities/_float.scss`

Keep in mind that the API of some components has changed drastically, please check the modules for specific implementation details.
Due to this change there is a legacy wrapper available in `/lib/tools/_legacy.scss`. This file contains some "old" mixin and function names which are wrapped to their new ones.

Blocss 7 is fully compliant with the old modules, given you use the `legacy` mixin file.
`blocss.scss` is added as a reference file on how you could implement the smaller components.

[Blocss](http://blocss.github.io/blocss) is a small but powerfull css framework designed specially for _serious_ developers.

It started initially as a fork of [Inuit css](https://github.com/csswizardry/inuit.css). Although it shares the same modular & OOCSS approach, Blocss has evolved into a framework of its own. Blocss provides little to no design wich means no undoing other peoples design decisions. I’m constantly updating en revising the code to be more lean, more future proof, and most of all: A great base to start your front-end project with.

**Use Blocss if:**

* You need a powerful library of modules & objects.
* You appreciate the value of Object Oriented code and the need for scalability
  and reuse.
* You need a framework that is robust and evolves constantly.

A list of components & defaults can be found on the [Blocss project site](http://blocss.github.io/blocss).

## Documentation
Blocss is heavily documented, which means that every component has its own readme and the code is commented very well. For naming conventions, style guides & api please read the **[documentation](doc/README.md)**.

## Browser support
Blocss supports ALL major browsers from **IE8** and up, but it’s configurable to be future proof. Let’s say that if you don’t need to support IE8, you only have to swith the `$legacy-support-for-ie8` setting to false to let the framework ditch all IE8 fallbacks. This will make your code much cleaner, more robust & future proof.

## Installation

**Requires Sass 3.2+**

* yarn: `yarn add blocss --dev`
* npm: `npm install blocss --save-dev`
* Bower: `bower install --save blocss`

## Getting started
Blocss is a layered framework, wich means you can easily add your own theme and components on top of it. All blocss submodules are created based on Brad Frost’s
[atomic design](http://bradfrost.com/blog/post/atomic-web-design/) principles.


## Extending Blocss

Blocss is a very design-free framework. This means that the style and design
of your site is left entirely up to you.
Because Blocss gives you lots of customisable foundations, you need to add
the final layer: UI.


## Credits

Blocss, maintained by 2 developers, but is derived by the ideas of many other developers:

* [Harry Roberts](https://twitter.com/csswizardry) for his awesome ideas & inuit.css framework wich is derived off the same philosophy as Blocss
* [Nicole Sullivan](https://twitter.com/stubbornella) for her work on OOCSS
* [Jonathan Snook](https://twitter.com/snookca) for his work on SMACSS
* [Nicolas Gallagher](https://twitter.com/necolas) for his work on numerous CSS things

And probably more…
