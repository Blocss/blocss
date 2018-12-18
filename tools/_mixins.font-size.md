# Font-size
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
