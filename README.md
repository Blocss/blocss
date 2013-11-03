# Blocss – v4.0.3

Blocss is a small but powerfull css framework designed specially for _serious_ developers.

Based on Sass it's very modular and designed by the OOCSS filosophy. Blocss provides little to no design wich means no undoing other peoples design decisions.

**Use Blocss if:**

* You need a powerful library of modules & objects.
* You appreciate the value of Object Orented code and the need for scalability
  and reuse.
* You are a developer comfortable with OOCSS and Sass.

## Browser support
Blocss is a modern framework, with support for **IE8** and above only.

## Installation

**Requires Sass 3.2**

As of version v2.0+ the core library is intended to be used as a git submodule or as a bower component.
This means you can always update blocss to the latest version without ever touching a single line of library code.

The simplest way to get started is to install [Blocsstrap](https://github.com/Blocss/blocsstrap). Blocsstrap is a boilerplate wrapper wich contains a lot of handy tools to start off your project.
Within the `public/css/` directory you'll find your theme specific variables and stylesheets that extend Blocss, aswell as housing blocss as an updatable submoldule.

### Install via command line

The command line install of Blocss is _super_ simple:

    $ git clone --recursive git@github.com:Blocss/blocsstrap.git your-project-folder
    $ cd your-project-folder
    $ ./go

What happens here is cloning an instance of Blocsstrap and its submodules(`--recursive`) into a directory wich you specify. Next we `cd` into that directory and run the `go` batch file. This script simply removes the web template’s Git instance and replaces it with a fresh one for your project, whilst also maintaining you Blocss submodule. After that the script tries to run `bower install` to install dependencies.

### Install via bower

You can install Blocss via twitter’s bower by including the framework in your `component.json`.
Or alternatively you can simply run `$ bower install blocss-framework`.

## Getting started

Once you have your project set up, you should be looking at a directory
structure a little like this:

    your-project-folder/
        public/
            css/
                blocss/
                theme/
                    base/
                        _toplevel.scss
                    _base.scss
                    _layout.scss
                    _modules.scss
                _vars.scss
                theme.scss
        index.html

Your CSS directory holds everything you need to get building:

* Everything in `public/css/blocss/` is library code wich should not be modified.
  If you want to update Blocss simply `cd` into here and run `$ git checkout master` to get your submodule on the most up to date & stable version of Blocss. After that if you want to upgrade simpy run `$ git pull` on the master branch.
* `_vars.scss` contains theme variables you need, as well as any overrides you wish to make to the Blocss library. It also houses switches to enable/disable Blocss’s modules.
* `theme.scss` is you master stylesheet wich will concatenate all other stylesheets from Blocss and your extensions when it’s compiled.

## How Blocss works

Blocss is a ‘layered’ framework, derived from the [SMACSS](http://smacss.com/) style guide. The base principle of Blocss’ is levels of extension; each ‘layer’ of code extends the layer below.

In `blocss/generic/` we find our most generic, low-level styling, things like a clearfix, [normalize.css](http://necolas.github.com/normalize.css/), restart, mixins and any shared styling like margins.

On top of that you’ll find our base styles, found in `blocss/base/`; these are the top-level elements. These are all design-free HTML elements that you can extend from.

Next up, in `blocss/modules/`, we have our modules and abstractions; these constructs hold no styling, but only do heavy lifting. In here we have modules like
are all scaffolding type constructs that hold no styling, but do heavy lifting.
In here we have things like [the media object](http://www.stubbornella.org/content/2010/06/25/the-media-object-saves-hundreds-of-lines-of-code/), the grid system and other unstyled objects that you can use to build design patterns _without_ design.

And at last we have our ‘helper’ classes; these live in the `blocss/generic/` directory.
These are things like width classes, margin helpers and other ‘style trumps’ which need to take precendence over any things that have gone before them. These classes are used to modify your modules on a case by case basis.

## Overriding Blocss’ defaults

All the Sass variables required for the library to compile without failing are stored in the `_defaults.scss` file. These variables are preset because Sass will error without them, but they are not set in stone, and you are encouraged to override and experiment with them.

To maintain updatability of the Blocss framework you must not directly edit anything within the framework.
When you need to override the variables set in `_defaults.scss` please do so in your `_vars.scss`. Lets’ take an example:

In Blocss’ `_defaults.scss` we find the following:

    $h1-size:           36px!default; // .alpha
    $h2-size:           30px!default; // .beta
    $h3-size:           24px!default; // .gamma
    $h4-size:           20px!default; // .delta
    $h5-size:           16px!default; // .epsilon
    $h6-size:           14px!default; // .zeta

Let’s say we want our `h1`s to be `48px` and not `36px`; instead of modifying
the value of `$h1-size` here, open up your `_vars.scss` file and add this in
the overrides section:

    /*----------------------------------------------------------------------------*\
        $OVERRIDES
        Place any variables that should override blocss’ defaults here.
    \*----------------------------------------------------------------------------*/

        $h1-size:       48px;

Now when you compile your CSS, Sass will know to ignore its preset value
(that is what `!default` is for) in favour of your own. By doing things this way
you can change the values that Blocss uses without having to modify Blocss
itself, and in that way leaving it free to be updated.

This file can also house any custom variables that you wish to use in extending
Blocss, as covered in the next section.

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