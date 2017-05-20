# Blocss – v7.0.0-alpha

**Note:**
Blocss 7 is in early alpha stage, so there might be dragons ahead. If you find a problem, please file an issue in the [issue tracker](https://github.com/Blocss/blocss/issues).
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

As of version v6.0+ all modules & abstractions are living in their own respective repositories, and this repository contains only a starter kit. Installation of specific blocss modules can be found in their respective [repositories](https://github.com/Blocss)

### Install via bower
You can install Blocss via twitter’s bower by including the framework in your `bower.json`:

```json
{
    "name": "your-app",
    "version": "x.x.x",
    "dependencies": {
        "blocss": "~6"
    },
    "devDependencies": {}
}
```
Or alternatively you can simply run `$ bower install --save blocss`.

## Getting started
Blocss is a layered framework, wich means you can easily add your own theme and components on top of it. All blocss submodules are created based on Brad Frost’s
[atomic design](http://bradfrost.com/blog/post/atomic-web-design/) principles.
The Blocss starterkit consists of the following subcomponents:

### [Defaults](https://github.com/Blocss/settings.defaults)

The defaults module contains a few variables and settings that are _required_ for using any of the rest of the framework.

All the Sass variables required for the library to compile without failing are stored in this file. These variables are preset because Blocss will error without them, but they are not set in stone, and you are encouraged to override and experiment with them.

To maintain updatability of the Blocss framework you must not directly edit anything within the framework files.
When you need to override the variables set in `_settings.defaults.scss` please do so in your own variable file.

### [Normalize](https://github.com/Blocss/atoms.normalize)

The `normalize.css` module is an exact clone of normalize.css at version v3.0.3.
normalize.css <q>makes browsers render all elements more consistently and in
line with modern standards</q>. It is developed and maintained by [Nicolas
Gallagher](https://twitter.com/necolas).

### [Mixins](https://github.com/Blocss/tools.mixins)

The mixins module contains a few framework mixins that are required for using any of the rest of blocss.

### [Extends](https://github.com/Blocss/tools.extends)

A couple of default extendable classes like `.module` and `.cf`

### [Reset](https://github.com/Blocss/atoms.reset)

The reset module is a thin layer on top of normalize.css that provides a starting point more suitable for web applications. Removes the default spacing and border for appropriate elements.

### [Shared](https://github.com/Blocss/atoms.shared)

The shared module contains several high-level rulesets which apply a consistent, shared declaration (typically margins & line-heights) across a number of elements.


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
