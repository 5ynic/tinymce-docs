### `table_resize_bars`

This option makes it possible to disable the ability to resize table columns and rows by dragging the border between two columns or rows.

**Type:** `Boolean`

**Default Value:** `true`

**Possible Values:** `true`, `false`

#### Example: Using `table_resize_bars`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'table',
  menubar: 'table',
  toolbar: 'table',
  table_resize_bars: false
});
```

