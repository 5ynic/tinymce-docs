### `importcss_merge_classes`

This option is used in cases where the class attribute should be replaced or merged. For example, if you have multiple classes you can apply all of them to the same element. If this option is set to `false` it will always replace the contents of the class attribute.

**Type:** `Boolean`

#### Example: Using `importcss_merge_classes`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your html
  plugins: 'importcss',
  content_css: '/my-styles.css',
  menubar: 'format',
  importcss_merge_classes: false
});
```

