# Tooltip

see <https://zensical.org/docs/authoring/tooltips/>

[Hover me](https://example.com "I'm a tooltip!")

[Hover me][example]

  [example]: https://example.com "I'm also a tooltip!"

icon with tooltip, should work with zensical

:material-information-outline:{ title="Important information" }  

css 2026

see <https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/position-try-fallbacks>

~~~
/* Define your anchor point */
.trigger-button {
  anchor-name: --my-anchor;
}

/* Position relative to it */
.tooltip {
  position: absolute;
  position-anchor: --my-anchor;
  inset-area: top;
  margin-bottom: 8px;
}

/* Automatic fallback positioning */
.tooltip {
  position-try-fallbacks:
    flip-block,  /* Try bottom if top doesn't fit */

    flip-inline; /* Try sides if vertical doesn't work */
}
~~~
