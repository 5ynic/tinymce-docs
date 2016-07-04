## style_formats_merge

This option allows you to set whether TinyMCE should append the styles in the [`style_formats`](#style_formats) setting to the default style formats or completely replace them.

**Type:** `Array`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  style_formats: [
    {title: 'Bold text', inline: 'b'},
    {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}}
  ],
  style_formats_merge: true
});
```
