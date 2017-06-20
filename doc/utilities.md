# Blocss utilities

Utilities are structural, positional, and visual styling hooks. They are very small
and focused, usually concerned with just one or two attributes.

(Read about Blocss [naming conventions](naming-conventions.md).)


## When to use utilities

Utilities should be used when you always want a style to be applied (i.e., they
are viewport-size agnostic).

For example, don’t use `float--left` to float a large part of the UI (like a
sidebar) if you don't intend to float it at all viewport widths. But **do** use
utilities for positioning avatars or controlling text wrapping and color,
etc.

If you find that a design change means that it becomes problematic to continue
using a specific utility in a component's template, then shift the presentation
into the component itself, and remove the utility from the HTML template. It's
pretty easy to migrate presentation between the utility and component layers of
the CSS.


## Using Utilities

Make sure to read the documentation within the CSS files of utilities. It will
contain information about each utility class and the implementation.

In general utilities need to be imported last in your codebase since they need to
override everything that is defined before.

Blocss utilities are grouped by type. The names of utilities with similar
concerns usually start with a common string, e.g., `u-text--center`,
`u-text--left`; `u-float--left`, `u-float--none`.

```html
<div class="widget  u-cf">
    <a class="u-float--left" href="{url}">
        <img class="u-display--block" src="{src}" alt="">
    </a>
    <p class="u-text--light">
        …
    </p>
</div>
```


## Creating utilities

If a utility class needs to be created, please ensure that it's well
documented/commented. It's very important for other people to be able to know
precisely what a utility does, how it does it, and any short-comings it may
have.

If a utility needs to apply styles to a descendant element, that element should
be targeted using a class that is made from the full utility name, followed by
two underscores and a lowercase descendant name:

```html
<a class="u-link-complex" href="{url}">
    Link text
    <span class="u-link-complex__target">target</span>
</a>
```

Applicaton-level utilities may provide an interface for common text color and
size modifications, link types, paddings, etc – any custom abstraction that is
widely used in the application.


## Modifiying utilities

utilities should not be edited while in use, unless it is to fix a bug.
Modifications to utilities cascade throughout the application and should be
made with extreme care.

If a utility class needs to be replaced or removed, mark it as deprecated -
`^deprecated` - and initiate a phase out.
