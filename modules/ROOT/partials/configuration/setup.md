## setup

This option allows you to specify an event that will be executed before the TinyMCE editor instance is rendered.

To specify a setup event, please provide the `setup` option with a JavaScript function. This function should have one argument, which is a reference to the editor that is being set up.

A common use case for this setting is to add editor events to TinyMCE. For instance, if you would like to add a click event to TinyMCE, you would add it through the setup configuration setting.

**Type:** `JavaScript Function`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  setup: function(editor) {
    editor.on('click', function(e) {
      console.log('Editor was clicked');
    });
  }
});
```
