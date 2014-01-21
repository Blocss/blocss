# Blocss components

A Blocss component is a specific HTML structure and its associated CSS.

Components are the building blocks of your application. Think of components as
if they were the internal implementation of custom HTML elements. You cannot
merge elements, only nest them, so avoid composing components on the same
element.

Since Blocss relies on Bower, each component can specify the utilities and
components it depends upon.

(Read about Blocss's [naming conventions](naming-conventions.md).)


## Working with components

Components are not _just_ CSS. A component is a combination of CSS and an HTML
template. A component's templates might make use of utilities and other
components.

### Component scope

The component's core class name (e.g., `component-name`) reserves a namespace
that can only be used by that component.

Avoid tight coupling between components, even if that means the code is not as
DRY as you think it should be.

### One pattern, one component, one file

**Each component should implement a single part of the UI**. Don't try to do
too much.

**Each component should have a dedicated SCSS file** with a name that
corresponds HTML class. For example, the SCSS for `button-group` should be in a
file called `_button-group.scss`. If you need additional files to help with
organization, use a `.`-separated suffix, e.g., `_button-group.plugin.scss`.

**All selectors in a component file must start with the component's
namespace**. For example, a component called `grid` could have CSS like this,
where every selector starts with the string `grid`.

```css
.grid {}
.grid__cell {}
.grid--gutterless > .grid__cell {}
```

### Component classes

Component names should be as short as possible but as long as necessary.

Components must use the `component-name__descendent-name` class name pattern to
clearly and directly style any descendant elements that the component requires
to realise itself. This helps to limit the specificity of the component
selectors.

For example, this component template…

```html
<article class="component  cf">
    <h1 class="component__title">...</h1>
    <img class="component__image" src="{{src}}" alt="">
    <p class="component__text">
      <span class="component__time">...</span>
      ...
    </p>
</div>
```

…is styled by this component CSS.

```css
.component {}
.component__title {}
.component__image {}
.component__text {}
.component__time {}
```

Each component uses selectors that limit the unintentional pollution – that
selectors like `component p` or `component > p` can introduce – of other contexts.

### Documenting HTML and implementation details

Components must document their HTML structure and non-obvious aspects of their
implementation. The CSS comments for a component should seek to answer the
following questions:

* What is the component for?
* How should it be used?
* What is the HTML template for this component?
* What are the modifiers?
* What are the known limitations?

### Adapting to ancestral context

**Most components should not set their own width, margin, and positioning.** By
authoring a component to be full-width or inline, it can better adapt to the
dimensions of an ancestral context.

```css
.button {
    border: 1px solid black;
    box-sizing: border-box;
    /* .. etc .. */
    margin: 0;
    padding: 0.5em;
    width: 100%;
}
```

### Nesting components

**A component should wrap a nested component in an element.** This wrapping
element should be used to control dimensions, margins, and positioning of the
nested component without directly modifying it. Inheritable styles can also be
applied to this wrapper.

```css
/* component */
.component {
    /* ... */
}

/* Wraps nested `button` component */
.component__wrap-button {
    display: inline-block;
    margin-top: 20px;
}
```

```html
<article class="component  cf">
    <div class="component__wrap-button">
        <button class="button  button--default" type="button">...</button>
    </div>
</article>
```

### Directly styling nested components

**Directly styling nested components is the last option.** If you need to add
custom styles directly to a nested component, the preferred pattern is shown
below. It scopes the changes to affect only `icon` components within the
`component__wrap-button` part of the `component` component.


```css
/* in component file for `component` */
.component__wrap-button .icon {
    display: none;
}

.component__wrap-button:hover .icon {
    display: block;
}
```