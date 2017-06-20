# Utility: visually-hidden

Hide elements only visually, but have it available for screenreaders.

## Usage

Include the `lib/utilities/_visually-hidden.scss` into your own Sass application.

```html
<div class="u-visually-hidden">
  <!-- Component that should be hidden visually, but maintain screenreader availability -->
</div>
```

## Available classes
* `.u-visually-hidden` - The base class

## Available settings
* `$blocss-visually-hidden-namespace` - Defaults to `$blocss-namespace`.
* `$blocss-breakpoint-has-visually-hidden` - Defines on which namespaced breakpoints you would like to generate `visually-hidden`, defaults to `()`.

## Browser support

* Google Chrome (latest)
* Opera (latest)
* Firefox 4+
* Safari 5+
* Internet Explorer 8+
