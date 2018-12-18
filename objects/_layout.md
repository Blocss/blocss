# Layout

Object for a CSS layout system. Layout makes use of `flexbox` and
`box-sizing` to provide features that `inline-block` & float-based layouts cannot.

**N.B.** This component relies on particular widths being applied to cells in
the grid via other classes. For example the [fractions utility](../utilities/_fractions.md).

## Features

* Fluid layout.
* Intelligent cell wrapping.
* Horizontal centering of cells.
* Custom vertical alignment of cells (top, bottom, or middle).
* Cell width is controlled independently of grid gutter.
* Infinite nesting.
* Built-in redundancy.

## Available classes

* `.o-layout`: Root module
* `.o-layout--align-center`: Center align cells
* `.o-layout--align-right`: Right align cells
* `.o-layout--align-middle`: Vertical align cells to middle
* `.o-layout--align-bottom`: Vertical align cells to bottom
* `.o-layout--reverse`: Reverse the order of all cells
* `.o-layout--fit`: Vertical Allow cells to equal distribute width
* `.o-layout--equalheight`: All cells match height of tallest cell in a row, requires direct child of `.o-layout__cell` to be a single element
* `.o-layout--gutter`: Adds a default gutter between all cells
* `.o-layout--gutter-tiny`: Adds a tiny gutter between all cells
* `.o-layout--gutter-small`: Adds a small gutter between all cells
* `.o-layout--gutter-large`: Adds a large gutter between all cells
* `.o-layout--gutter-huge`: Adds a huge gutter between all cells
* `.o-layout__cell`: Cell element, always needs to be direct child of `.o-layout`, defaults to be 100% wide.
* `.o-layout__cell--center`: Center aligns this cell
* `.o-layout__cell--fit`: Make a cell shrink wrap its content.
* `.o-layout__cell--fill`: Make a cell fill the remaining space.


## Available settings

* `$blocss-layout-namespace` - Prefixes classes with a namespace, defaults to `$blocss-namespace`
* `$blocss-layout-responsive-modifier` - Prefixes responsive classes, defaults to `$blocss-responsive-modifier`
* `$blocss-layout-gutter` - Defines the gutter width, defaults to `$blocss-space`
* `$blocss-layout-gutter-tiny` - Defines the tiny gutter width, defaults to `$blocss-space-tiny`
* `$blocss-layout-gutter-small` - Defines the small gutter width, defaults to `$blocss-space-small`
* `$blocss-layout-gutter-large` - Defines the large gutter width, defaults to `$blocss-space-large`
* `$blocss-layout-gutter-huge` - Defines the huge gutter width, defaults to `$blocss-space-huge`
* `$blocss-breakpoint-has-layout-fit` - Defines the breakpoints where `.o-layout__cell--fit` can be applied to, defaults to `()`.
* `$blocss-breakpoint-has-layout-fit` - Defines the breakpoints where `.o-layout__cell--fill` can be applied to, defaults to `()`.

## Use

A simple layout is easy to create. A layout container can have any number of child
cells.

```html
<div class="layout  [o-layout--align-center|o-layout--align-right|o-layout--align-middle|o-layout--align-bottom|o-layout--reverse|o-layout--fit|o-layout--equalheight|o-layout--gutter]">
    <div class="o-layout__cell  [o-layout__cell--center|o-layout__cell--fit|o-layout__cell-fill]"></div>
    <div class="o-layout__cell  [o-layout__cell--center|o-layout__cell--fit|o-layout__cell-fill]"></div>
    <div class="o-layout__cell  [o-layout__cell--center|o-layout__cell--fit|o-layout__cell-fill]"></div>
    <div class="o-layout__cell  [o-layout__cell--center|o-layout__cell--fit|o-layout__cell-fill]"></div>
</div>
```

## Deprecated
All the api calls which are deprecated: none

## Browser support

* Google Chrome (latest)
* Opera (latest)
* Firefox 4+
* Safari 5+
* Internet Explorer 10+

*NOTE*: For some of the supported browsers you need to add browserprefixes, most likely this already happens in your build process
