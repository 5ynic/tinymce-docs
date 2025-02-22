### `importcss_selector_filter`

This option enables you to only import classes from selectors matching the filter. The filter can be a `string`, `regexp` or a `function`. See the examples below.

**Type:** `String`

#### Example using a string filter with `importcss_selector_filter`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'importcss',
  menubar: 'format',
  content_css: '/my-styles.css',
  importcss_selector_filter: '.my-prefix-'
});
```

#### Example using a RegExp filter with `importcss_selector_filter`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'importcss',
  menubar: 'format',
  content_css: '/my-styles.css',
  importcss_selector_filter: /\.prefix|\.otherprefix/
});
```

#### Example using a function filter with `importcss_selector_filter`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'importcss',
  menubar: 'format',
  content_css: '/my-styles.css',
  importcss_selector_filter: function(selector) {
    return selector.indexOf('myprefix') !== -1;
  }
});
```

