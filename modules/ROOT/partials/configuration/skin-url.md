## skin_url

If you are using TinyMCE skins, this option enables you to specify the location of the skin file. This is useful if you are loading TinyMCE from one URL, for example a CDN, while loading a skin on, say, a local server.

**Type:** `String`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  skin_url: '/css/mytinymceskin'
});
```
