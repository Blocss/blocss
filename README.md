# Blocss – v5.0.6

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

**Requires Sass 3.2**

As of version v2.0+ the core library is intended to be used as a git submodule or as a bower component.
This means you can always update blocss to the latest version without ever touching a single line of library code.

And as of version v5.0+ all modules & abstractions are living in their own respective repositories, and this repository is only a ground-zero typographical based core. Installation of specific blocss modules can be found in their respective [repositories](https://github.com/Blocss)

### Install via Generator blocss
The simplest way to get started is to use [generator-blocss](https://github.com/Blocss/generator-blocss). Generator-blocss is a boilerplate wrapper wich contains a lot of handy tools to scaffold out your project.

Installation docs can be found in the [generator-blocss](https://github.com/Blocss/generator-blocss) repository.

### Install via bower
Alternatively you can install Blocss via twitter’s bower by including the framework in your `bower.json`:

```json
{
    "name": "your-app",
    "version": "x.x.x",
    "dependencies": {
        "blocss": "~5"
    },
    "devDependencies": {}
}
```
Or alternatively you can simply run `$ bower install --save blocss`.

## Getting started
Blocss is a layered framework, wich means you can easily add your own theme on top of it.

### Overriding Blocss’ defaults

All the Sass variables required for the library to compile without failing are stored in the `_defaults.scss` file. These variables are preset because Sass will error without them, but they are not set in stone, and you are encouraged to override and experiment with them.

To maintain updatability of the Blocss framework you must not directly edit anything within the framework.
When you need to override the variables set in `_defaults.scss` please do so in your own `_vars.scss`. Let’s take an example:

In Blocss’ `_defaults.scss` we find the following:

```scss
$alpha:                         36px                                !default;
$beta:                          32px                                !default;
$gamma:                         28px                                !default;
$delta:                         24px                                !default;
$epsilon:                       20px                                !default;
$zeta:                          18px                                !default;
```

Let’s say we want our `h1`s to be `48px` and not `36px`; instead of modifying
the value of `$alpha` here, open up your `_vars.scss` file and add this in
the overrides section:

```scss
/*----------------------------------------------------------------------------*\
    $OVERRIDES
    Place any variables that should override blocss’ defaults here.
\*----------------------------------------------------------------------------*/

$alpha:       48px;
```

Now when you compile your CSS, Sass will know to ignore its preset value
(that is what `!default` is for) in favour of your own. By doing things this way
you can change the values that Blocss uses without having to modify Blocss
itself, and in that way leaving it free to be updated.

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