### `link_quicklink`

This option changes the behaviour of the `CTRL + K` shortcut. By default, pressing `CTRL + K` will open the link dialog. If `link_quicklink` is set to `true`, pressing `CTRL + K` will instead open the link context toolbar. If the cursor is within an existing link, this context toolbar will contain fields for modifying, removing and opening the selected link. If not, the context toolbar allows for the quick insertion of a link.

> **Note**: This context toolbar is the same as the context toolbar mentioned in the [`link_context_toolbar`](#link_context_toolbar) documentation above.

**Type:** `Boolean`

**Default Value:** `false`

**Possible Values:** `true`, `false`

#### Example: Using `link_quicklink`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'link',
  menubar: 'insert',
  toolbar: 'link',
  link_quicklink: true
});
```

