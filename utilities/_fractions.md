# Utilities: Fractions

A collection of utility classes for low-level CSS fractions. These can and should be used on the blocss [layout](../objects/_layout.md) system to provide the cells with some flexible widths.

## Available classes
Note: these are defaults, you can alter the names with variables

`.u-fraction--XofX`: Gives an element width proportionate to the given fraction.

You can alter the `$blocss-fractions` variable to create several proportional divisions.

For example, `2 4 6 12` will let you use the `.u-fraction--1of2`, `.u-fraction--2of4`, `.u-fraction--3of6`, and
`.u-fraction--6of12` classes to specify that an element should take up 50% of its container.

## Available settings

* `$blocss-fractions-namespace` - Prefixes classes with a namespace, defaults to `$blocss-namespace`
* `$blocss-fractions-responsive-modifier` - Prefixes classes with a namespace, defaults to `$blocss-responsive-modifier`
* `$blocss-fractions` - create several proportional divisions as read above, defaults to `12` for twelve colums
* `$blocss-breakpoint-has-fractions` - Defines which namespaced breakpoints you would like to generate fractions, defaults to `()`
* `$blocss-fractions-name-fraction` - the name of fractions, defaults to `fraction`

## Sample
```scss
// In your vars.scss file
$blocss-fractions: 2 4;
$blocss-breakpoint-has-fractions: ('lap');
```
Generates:
```css
.u-fraction--1of2,
.u-fraction--2of4 {
  width: 50%;
}
.u-fraction--1of4 {
  width: 25%;
}
.u-fraction--3of4 {
  width: 75%;
}
.u-fraction--2of2,
.u-fraction--4of4 {
  width: 100%;
}

@media (min-width: 34em) {
  .u-fraction--1of2\@lap,
  .u-fraction--2of4\@lap {
    width: 50%;
  }
  .u-fraction--1of4\@lap {
    width: 25%;
  }
  .u-fraction--3of4\@lap {
    width: 75%;
  }
  .u-fraction--2of2\@lap,
  .u-fraction--4of4\@lap {
    width: 100%;
  }
}
```

## Browser support

* Google Chrome (latest)
* Opera (latest)
* Firefox 4+
* Safari 5+
* Internet Explorer 8+
