### `importcss_exclusive`

If set to `false` then selectors will not be globally exclusive meaning they can exist in two separate groups. This can be useful for scenarios where you want to have a ".class" imported as a paragraph selector and as a span format selector.

**Type:** `Boolean`

**Default Value:** `true`

#### Example: Using `importcss_exclusive`

```css
// Sample compressed stylesheet:

/* Normalize */
article, aside, footer, header, main, nav, section {display: block;}

/* jQueryUI */
.ui-helper-hidden { display: none; }

/* Custom Styles */
.myCustomStyleStart {display:none;}
       // INCLUDE ALL MY CLASSES HERE IN THE Formats menu!
.myCustomStyleEnd {display:none;}

/* Any other possible styles afterward ... */
```

```js
var keepSelector = false;
tinymce.init({
  importcss_selector_converter: function(selector) {
    if (selector == '.myCustomStyleStart') {
      keepSelector = true;
      return false;
    } else if (selector == '.myCustomStyleEnd') {
      keepSelector = false;
    }
    if (!keepSelector ) {
      return false;
    }
    return this.convertSelectorToFormat(selector);
  }
});
```
