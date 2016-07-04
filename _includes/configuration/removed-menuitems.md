## removed_menuitems

This option allows you to remove items from TinyMCE's drop down menus. This is useful if you are using the [menubar](#menubar) option to set your menus rather than the more specific [menu](#menu) option.

**Type:** `String`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  removed_menuitems: 'undo, redo'
});
```
