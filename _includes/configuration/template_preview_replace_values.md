### `template_preview_replace_values`

This is an object containing items that will be replaced with their respective string values in the template preview shown in the template dialog; **but will not be replaced when a template is inserted into the editor content**.

**Type:** `Object`

#### Example: Using `template_preview_replace_values`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'template',
  menubar: 'insert',
  toolbar: 'template',
  template_preview_replace_values: {
    username: 'Jack Black',
    staffid: '991234'
  }
});
```

This can then be used in a template or snippet that looks like this:

```html
<p>Name: {$username}, StaffID: {$staffid}</p>
```

And the preview will look like:

```html
<p>Name: Jack Black, StaffID: 991234</p>
```

