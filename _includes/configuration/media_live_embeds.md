### `media_live_embeds`

When you enable this option users will see a live preview of embedded video content within the editable area, rather than a placeholder image. This means that users can play a video clip, such as YouTube, within the editor.

This option is enabled by default and accepts URLs input into the source field or embed field in the dialog box by the user.

**Type:** `Boolean`

**Default Value:** `true`

**Possible Values:** `true`, `false`

#### Example: Using `media_live_embeds`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  plugins: 'media',
  menubar: 'insert',
  toolbar: 'media',
  media_live_embeds: true
});
```

