## hidden_input

This option gives you the ability to disable the auto generation of hidden input fields for inline editing elements. By default all inline editors have a hidden input element in which content gets saved when an `editor.save()` or `tinymce.triggerSave()` is executed.

This can be disabled if you don't need these controls.

**Type:** `Boolean`

**Default Value:** `true`

**Possible Values:** `true`, `false`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  inline: true,
  hidden_input: false
});
```
