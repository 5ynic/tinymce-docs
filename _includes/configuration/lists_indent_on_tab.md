### `lists_indent_on_tab`

This boolean option allows to disable the indent on tab key functionality. Its default value is set to `true`.

For example:

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'lists',
  toolbar: 'numlist bullist',
  lists_indent_on_tab: false
});
```