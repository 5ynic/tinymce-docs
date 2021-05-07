## statusbar

This option allows you to specify whether or not TinyMCE should display the status bar at the bottom of the editor. To disable the status bar, the `statusbar` option should be provided with a boolean `false` value.

**Type:** `Boolean`

**Default Value:** `true`

**Possible Values:** `true`, `false`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  statusbar: false
});
```
