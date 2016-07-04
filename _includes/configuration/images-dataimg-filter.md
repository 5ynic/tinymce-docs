## images_dataimg_filter

This option lets you specify a filter predicate function for disabling the logic that converts base64 images into blobs while within the editor. This is normally used for very advanced integrations where you handle all base64/blob images with custom logic.

**Type:** `JavaScript Function`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  images_dataimg_filter: function(img) {
    return img.hasAttribute('internal-blob');
  }
});
```
