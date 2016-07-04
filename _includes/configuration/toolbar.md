## toolbar

This option allows you to specify the [buttons]({{ site.baseurl }}/advanced/editor-control-identifiers/#toolbarcontrols) and the order that they will appear on TinyMCE's toolbar.

### Grouping toolbar controls

To specify the controls that should appear on TinyMCE's toolbar, the `toolbar` option should be provided with a space separated list of [toolbar controls]({{ site.baseurl }}/advanced/editor-control-identifiers/#toolbarcontrols). To create groups within this list, please add `|` pipe characters between the groups of controls that you would like to create.

**Type:** `String`

##### Example grouped toolbar

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  toolbar: 'undo redo | styleselect | bold italic | link image'
});
```

### Disabling the toolbar

To disable the toolbar, the toolbar option should be provided a boolean value of `false`.

**Type:** `Boolean`

**Default Value:** `true`

**Possible Values:** `true`, `false`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
    toolbar: false
});
```

### Using multiple toolbars

To specify multiple toolbars, the toolbar option should be provided with an array of space separated strings.

**Type:** `Array`

##### Example

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  toolbar: [
    'undo redo | styleselect | bold italic | link image',
    'alignleft aligncenter alignright'
  ]
});
```

Alternatively, you may specify multiple toolbars through the use of the [toolbar(n)](#toolbarn) option.
