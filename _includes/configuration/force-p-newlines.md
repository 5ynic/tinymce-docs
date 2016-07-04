## force_p_newlines (deprecated)

**This option is deprecated as of version 3.5 use [`forced_root_block: false`](#forced_root_block) instead to control `p` vs `br` behavior.**

This option enables you to disable/enable the creation of paragraphs on return/enter in Mozilla/Firefox.

**Type:** `Boolean`

**Default Value:** `true`

**Possible Values:** `true`, `false`

```js
tinymce.init({
  selector: 'textarea',  // change this value according to your HTML
  force_p_newlines : true
});
```
