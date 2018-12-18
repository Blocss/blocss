# Rem
This is a mixin which can convert a property's value directly to a `rem` value.
Sample usage:
```scss
@include blocss-rem(margin, 0 auto 300px, !important);
```
Which, with a `$blocss-base-font-size` of `16px`, will compile to:
```scss
margin: 0 auto 18.75rem !important;
```
