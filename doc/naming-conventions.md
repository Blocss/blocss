# Blocss naming conventions

Blocss relies on _structured class names_ and _meaningful hyphens_ (i.e., not
used simply to separate words) in style of the BEM naming convention. This helps
to work around the current limits of applying CSS to the DOM (i.e., the lack of
style encapsulation), and to better communicate the relationships between classes.


<a name="components"></a>
## [Components](components.md)

Components are UI patterns. They usually need to style multiple elements within
their HTML tree.

Syntax: `[<namespace>-]<component-name>[--modifier-name|__descendant-name]`

This has several benefits when writing CSS and reading HTML:

* It helps to distinguish classes for base components, modifiers of components,
  and child elements.
* It keeps the specificity of selectors low.
* It helps to decouple presentation semantics from document semantics.


<a name="component-name"></a>
### component-name

The component's name must be written hyphen-delimited & lowercase.

```css
.my-component { /* … */ }
```

```html
<article class="my-component">
    …
</article>
```

<a name="component-name--modifier-name"></a>
### component-name--modifier-name

A component modifier is a class that modifies or extends the presentation of
the base component in some form. Modifier names must be written hyphen-delimited
& lowercase, and be separated from the component name by two hyphens.
The class should be included in the HTML _in addition_ to the base component class.

```css
/* Core button */
.button { /* … */ }
/* Default button theme */
.button--default { /* … */ }
```

```html
<button class="button  button--default" type="button">…</button>
```

<a name="component-name__descendant-name"></a>
### component-name__descendant-name

A component descendant is a class that is attached to a descendant node of a
component. It's responsible for applying presentation directly to the
descendant on behalf of a particular component. Descendant names must be
written hyphen-delimited & lowercase, and separated from the component name by
two underscores.

```html
<article class="tweet">
    <header class="tweet__header">
        <img class="tweet__avatar" src="{{src}}" alt="{{alt}}">
        …
    </header>
    <div class="tweet__body">
        …
    </div>
</article>
```

<a name="is-state"></a>
### component-name.is-state

Use `is-stateName` for state-based modifications of components. The state name
must be lowercase & hyphen delimited. **Never style these classes directly;
they should always beused as an adjoining class.**

JS can add/remove these classes. This means that the same state names can be
used in multiple contexts, but every component must define its own styles for
the state (as they are scoped to the component).

```css
.tweet { /* … */ }
.tweet.is-expanded { /* … */ }
```

```html
<article class="tweet  is-expanded">
    …
</article>
```

<a name="namespace"></a>
### namespace (optional)

If necessary, components can be prefixed with a namespace. For example, you may
wish to avoid the potential for collisions between libraries and your custom
components by prefixing all your components with a namespace.

```css
.namespace-widget { /* … */ }
.namespace-masthead { /* … */ }
```

This makes it clear, when reading the HTML, which components are part of your
library.


## Other

<a name="js--some-name"></a>
### js--some-name

**CSS must not use `js--*` classes in selectors.**

Use the `id` attribute and `js--*` class names are reserved for JavaScript-only
use. Application-specific data or content can be stored in `data-*`
attributes.

The example below includes a dedicated JavaScript utility class to which
behaviour is bound. It is independent of any specific UI component.

```html
<a class="js--show-profile" data-username="John Doe" href="{url}">...</a>
```