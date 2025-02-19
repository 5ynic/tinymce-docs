### `powerpaste_word_import`

This option controls how content pasted from Microsoft Word is filtered.

**Type:** `String` or `Function`

**Default Value:** `prompt`

{% include plugins/powerpaste_import_types.md %}

> **Note:** When using the Windows operating system, copying and pasting content from Microsoft Word 2013 (or later) in "Protected View" will result in plain, unformatted text. This is due to how Protected View interacts with the clipboard.

#### Example: `powerpaste_word_import` using an asynchronous function

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'powerpaste',
  powerpaste_word_import: function() {
    // use a native confirm dialog to prompt the user to choose between clean and merge
    return new Promise(function (resolve) {
      if (confirm('Would you like to keep formatting?')) {
        resolve('merge');
      } else {
        resolve('clean');
      }
    });
  }
});
```
