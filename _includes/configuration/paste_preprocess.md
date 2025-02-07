{% if page.title == "Paste plugin" %}
### `paste_preprocess`

This option enables you to modify the pasted content before it gets inserted into the editor.

**Type:** `Function`

#### Example: Using `paste_preprocess`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'paste',
  menubar: 'edit',
  toolbar: 'paste',
  paste_preprocess: function(plugin, args) {
    console.log(args.content);
    args.content += ' preprocess';
  }
});
```
{% else %}
### `paste_preprocess`

This option allows you to run custom filtering on the content from the clipboard before it is run through PowerPaste's filters. The callback is passed two arguments: the PowerPaste plugin instance and an object containing event data. This object contains:

- Standard paste event data.
- `content` - A string containing the content to be pasted.
- `mode` - A string indicating whether PowerPaste is in `clean`, `merge`, or `auto` mode.
- `source` - A string indicating which kind of filtering PowerPaste will run based on the source of the content. This will return `html`, `msoffice`, `googledocs`, `image`, `imagedrop`, `plaintext`, `text`, or `invalid`.

> **Note**: The `imagedrop` `source` was added in {{site.productname}} 5.3.

> **Note**: The mode 'auto' is used when the content source does not have formatting to "clean" or "merge". For example, when pasting an image with no text or markup content.

Example {{site.productname}} configuration:

```js
const yourCustomFilter = function(content) {
  // Implement your custom filtering and return the filtered content
  return content;
};

tinymce.init({
  selector: 'textarea',
  plugins: 'powerpaste',
  paste_preprocess: function (pluginApi, data) {
    console.log(data.content, data.mode, data.source);
    // Apply custom filtering by mutating data.content
    // For example:
    const content = data.content;
    const newContent = yourCustomFilter(content);
    data.content = newContent;
  }
});
```
{% endif %}
