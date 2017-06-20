# Blocss – v7.0.0-alpha

**Note:**
Blocss 7 is in early alpha stage, so there might be dragons ahead. If you find a problem, please file an issue in the [issue tracker](https://github.com/Blocss/blocss/issues).

Keep in mind that the API of some functions, mixins and modules has changed drastically, please check the modules for specific implementation details.

Due to this change there is a legacy wrapper available in [/lib/tools/_legacy.scss](/lib/tools/_legacy.scss). This file contains some "old" mixin and function names which are wrapped to their new ones. In that way Blocss 7 is fully compliant with the old seperate modules which you find in the repository, given you use the `legacy` mixin file.


**Why use Blocss:**
[Blocss](http://blocss.github.io/blocss) is a small but powerfull css framework designed specially for _serious_ developers.
Blocss provides little to no design wich means no undoing other peoples design decisions. I’m constantly updating en revising the code to be more lean, more future proof, and most of all: A great base to start your front-end project with.

Use blocss if:

* You need a powerful library of modules & objects.
* You appreciate the value of Object Oriented code and the need for scalability
  and reuse.
* You need a framework that is robust and evolves constantly.

## Documentation
Blocss is heavily documented, which means that every module is commented very well. For specific implementation details please refer to the [available modules](#available-modules). For naming conventions, style guides & design principles please read the **[documentation](doc/README.md)**.

## Browser support
Blocss supports ALL major browsers from **IE10** and up, but it’s configurable to be future proof.

## Installation

**Requires Sass 3.2+**

* yarn: `yarn add blocss --dev`
* npm: `npm install blocss --save-dev`
* Bower(deprecated): `bower install --save blocss`

## Available modules

All blocss submodules are created based on the ITCSS principle.

ITCSS stands for Inverted Triangle CSS and it helps you to organize your project CSS files in such way that you can better deal with CSS specifics like global namespace, cascade and selectors specificity.

### Settings
This layer is the first layer and holds any global settings for your project. It should only house settings that need to be accessed from anywhere.

**NOTE**: Any variable that does not need to be accessed globally should belong in the partial to which it relates.

* [_defaults.scss](lib/settings/_defaults.scss)

### Tools
The tools layer houses your globally available tooling, mixins and functions.

**NOTE**: Any mixin or function that does not need to be accessed globally should belong in the partial to which it relates.

* [_functions.scss](lib/tools/_functions.scss)
* [_mixins.rem.scss](lib/tools/_mixins.rem.scss)
* [_mixins.font-size.scss](lib/tools/_mixins.font-size.scss)
* [_mixins.media-query.scss](lib/tools/_mixins.media-query.scss)
* [_legacy.scss](lib/tools/_legacy.scss)

### Generic
It contains ground-zero styles like [Normalize.css](http://necolas.github.io/normalize.css/), global box-sizing rules, CSS resets and so on.

* [_normalize.scss](lib/generic/_normalize.scss)
* [_reset.scss](lib/generic/_reset.scss)
* [_vertical-rhythm.scss](lib/generic/_vertical-rhythm.scss)

### Elements

These are bare, unclassed HTML elements. The Elements layer binds onto HTML element (or 'type') selectors only.

Elements are most likely the last layer in which we'd find element-based selectors, and is very rarely added to or changed after initial setup. Once we have defined element-level styles, all additions and deviations should be implemented using classes.

**NOTE**: Because Blocss is a design-free framework this layer is completely empty.

### Objects
This layer is concerned with styling non-cosmetic design patterns, or 'objects'. This can range from something as a `.o-wrapper` element to  `.o-layout` systems.

* [_layout.scss](lib/objects/_layout.md)
* [_list-clean.scss](lib/objects/_list-clean.scss)
* [_flexembed.scss](lib/objects/_flexembed.scss)

All Objects are prefixed with `o-` by default but are configurable with the `$blocss-namespace-object`  setting.

### Components
This layer contains our recognisable components, chunks of UI.

All Components should be prefixed with `c-` by default but are configurable with the `$blocss-namespace-component`  setting.

**NOTE**: Because Blocss is a design-free framework this layer is completely empty. You can add your own components to your project.

### Utilities
this layer contains some handy helpers & overrides. This is the most specific layer of the application which trumps everything defined before.

* [_fractions.scss](lib/utilities/_fractions.md)
* [_visually-hidden.scss](lib/utilities/_visually-hidden.scss)
* [_module.scss](lib/utilities/_module.scss)
* [_float.scss](lib/utilities/_float.scss)

All Utilities should be prefixed with `u-` by default but are configurable with the `$blocss-namespace-utility`  setting.

## Getting started
Blocss is a very design-free framework. This means that the style and design of your site is left entirely up to you.
Because Blocss gives you lots of customisable foundations, you need to add the final layer: **UI**.

It is advised that you will use Blocss code throughout your own, a sample `styles.scss` file would look like this:

```scss
/* Settings */
@import "settings/config";
@import "node_modules/blocss/lib/settings/defaults";
@import "settings/colors";

/* Tools */
@import "node_modules/blocss/lib/tools/functions";
@import "node_modules/blocss/lib/tools/mixins.rem";
@import "node_modules/blocss/lib/tools/mixins.font-size";
@import "node_modules/blocss/lib/tools/mixins.media-query";
@import "node_modules/blocss/lib/tools/legacy";
@import "tools/functions";

/* Generic */
@import "node_modules/blocss/lib/generic/normalize";
@import "node_modules/blocss/lib/generic/reset";
@import "node_modules/blocss/lib/generic/vertical-rhythm";

/* Elements */
@import "elements/headings";
@import "elements/links";

/* Objects */
@import "node_modules/blocss/lib/objects/layout";
@import "node_modules/blocss/lib/objects/list-clean";
@import "node_modules/blocss/lib/objects/flexembed";
@import "objects/box";
@import "objects/media";

/* Components */
@import "components/buttons";
@import "components/masthead";
@import "components/navigation.main";

/* Utilities */
@import "node_modules/blocss/lib/utilities/fractions";
@import "node_modules/blocss/lib/utilities/visually-hidden";
@import "node_modules/blocss/lib/utilities/module";
@import "node_modules/blocss/lib/utilities/float";
@import "utilities/visibility";
@import "utilities/text";
```
The file [/lib/blocss.scss](/lib/blocss.scss) is added as a reference file on how you could implement the smaller modules.

## Credits

Blocss, maintained by 2 developers, is derived by the ideas of many other developers:

* [Harry Roberts](https://twitter.com/csswizardry) for his awesome ideas with ITCSS and numerous other CSS stuff
* [Nicole Sullivan](https://twitter.com/stubbornella) for her work on OOCSS
* [Jonathan Snook](https://twitter.com/snookca) for his work on SMACSS
* [Nicolas Gallagher](https://twitter.com/necolas) for his work on numerous CSS things

And probably more…
