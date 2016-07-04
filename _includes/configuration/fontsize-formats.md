## fontsize_formats

This option allows you to override the font sizes displayed in the font size select box using a space or comma separated list of font sizes

**Type:** `String`

**Default Value:** `'8pt 10pt 12pt 14pt 18pt 24pt 36pt'`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  toolbar: 'fontsizeselect',
  fontsize_formats: '8pt 10pt 12pt 14pt 18pt 24pt 36pt'
});
```
