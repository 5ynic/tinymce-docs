---
layout: default
title: onchange_callback
---

This option should contain a function name to be executed each time content is modified by TinyMCE. This function is called each time an undo level is added to TinyMCE. The format of this function is: `onchange(inst)`, where `inst` is the editor instance object reference.

## Example of usage of the onchange_callback option

```js
function myCustomOnChangeHandler(inst) {
  alert("Some one modified something");
  alert("The HTML is now:" + inst.getBody().innerHTML);
}

tinyMCE.init({
  onchange_callback : "myCustomOnChangeHandler"
});
```

## Note:

This function is called once the user "blurs" the area (in the same way a `textarea` or input field is blurred upon exiting that field) and it will check if a change has occurred. It will also fire when a new undo level is added to the queue. Undo levels are added when the user types text and then moves the cursor, performs an action like pressing the bold button while having text selected, or pressing return. There are many ways undo levels get added to the editor.

We strongly recommend users to utilize the [isDirty](/api/class_tinymce.Editor.html/#isdirty) method to determine if the editor contents were changed or not since this is much more exact because it doesn't need undo levels/blurring, etc.

It is important to note that the `onchange` callback will not fire on each keystroke due to performance considerations. Executing the onchange callback all the time is just a bad design practice and it wastes the users CPU. It's better to check the [isDirty](/api/class_tinymce.Editor.html/#isdirty) state before leaving the page in a document `onbeforeunload` event. This is how the autosave plugin functions. The [isDirty](/api/class_tinymce.Editor.html/#isdirty) approach is the recommended way of tracking if an editor instance has been modified or not.
