# Blocss helpers

Helpers are structural, positional, and visual styling hooks. They are very small
and focused, usually concerned with just one or two attributes.

(Read about Blocss [naming conventions](naming-conventions.md).)


## When to use helpers

Helpers should be used when you always want a style to be applied (i.e., they
are viewport-size agnostic).

For example, don’t use `float--left` to float a large part of the UI (like a
sidebar) if you don't intend to float it at all viewport widths. But **do** use
helpers for positioning avatars or controlling text wrapping and color,
etc.

If you find that a design change means that it becomes problematic to continue
using a specific helper in a component's template, then shift the presentation
into the component itself, and remove the helper from the HTML template. It's
pretty easy to migrate presentation between the helper and component layers of
the CSS.


## Using helpers

Make sure to read the documentation within the CSS files of helpers. It will
contain information about each helper class and the implementation.

In general helpers need to be imported last in your codebase since they need to
override everything that is defined before.

Blocss helpers are grouped by type. The names of helpers with similar
concerns usually start with a common string, e.g., `text--center`,
`text--left`; `float--left`, `float--none`.

```html
<div class="widget  cf">
    <a class="float--left" href="{url}">
        <img class="display--block" src="{src}" alt="">
    </a>
    <p class="text--light">
        …
    </p>
</div>
```


## Creating helpers

If a helper class needs to be created, please ensure that it's well
documented/commented. It's very important for other people to be able to know
precisely what a helper does, how it does it, and any short-comings it may
have.

If a helper needs to apply styles to a descendant element, that element should
be targeted using a class that is made from the full helper name, followed by
two underscores and a lowercase descendant name:

```html
<a class="link-complex" href="{url}">
    Link text
    <span class="link-complex__target">target</span>
</a>
```

Applicaton-level helpers may provide an interface for common text color and
size modifications, link types, paddings, etc – any custom abstraction that is
widely used in the application.


## Modifiying helpers

Helpers should not be edited while in use, unless it is to fix a bug.
Modifications to helpers cascade throughout the application and should be
made with extreme care.

If a helper class needs to be replaced or removed, mark it as deprecated -
`^deprecated` - and initiate a phase out.