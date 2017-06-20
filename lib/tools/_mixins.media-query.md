# Media query
Enclose a block of code with a media query as named in `$blocss-breakpoints`.
Sample usage:
```scss
// in your project's variables
$blocss-breakpoints: (
  "lap": "(min-width: 480px)",
  "desk": "(min-width: 960px)"
);

// In your component
@include blocss-media-query(lap) {
  outline: 1px solid red;
}
```
Compiles to:
```scss
@media (min-width: 480px) {
  outline: 1px solid red;
}
```
