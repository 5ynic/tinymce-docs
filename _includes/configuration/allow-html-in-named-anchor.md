## allow_html_in_named_anchor

This option allows you to specify whether the editor should parse and keep `html` within named `anchor` tags.

**Type:** `Boolean`

**Default Value:** `false`  // confirmation required

**Possible Values:** `true`, `false`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  allow_html_in_named_anchor: true
});
```
