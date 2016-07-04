---
layout: default
title: paste
---

This plugin was completely rewritten for TinyMCE 3.2.3\. The new version will auto detect word contents and automatically clean it up before inserting it to the editor. So there is no longer any need to use the dialogs to paste contents from third party sources.

1.  Add plugin to TinyMCE plugin option list example: plugins : "paste".
2.  Add the button names to button list, example: theme_advanced_buttons3_add : "pastetext,pasteword,selectall".

## Initialization Example

```html
tinyMCE.init({
        theme : "advanced",
        mode : "textareas",
        plugins : "paste",
        theme_advanced_buttons3_add : "pastetext,pasteword,selectall",
        paste_auto_cleanup_on_paste : true,
        paste_preprocess : function(pl, o) {
            // Content string containing the HTML from the clipboard
            alert(o.content);
            o.content = "-: CLEANED :-\n" + o.content;
        },
        paste_postprocess : function(pl, o) {
            // Content DOM node containing the DOM structure of the clipboard
            alert(o.node.innerHTML);
            o.node.innerHTML = o.node.innerHTML + "\n-: CLEANED :-";
        }
});
```

## Plugin options

| Name | Summary |
| --- | --- |
| [paste_auto_cleanup_on_paste] | If enabled contents will be automatically processed when you paste using Ctrl+V or similar methods. This is enabled by default. |
| [paste_preprocess] | Callback function to execute before the contents is processed into a DOM structure. This callback enables you to do regexp replaces on the clipboard contents before it's inserted. |
| [paste_postprocess] | Callback function to execute after the contents has been converted into a DOM structure. This callback enables you to do DOM manipulation on the clipboard nodes before they get inserted. |
| [paste_convert_middot_lists] | Controls if the paste plugin should try to convert Word lists into semantic XHTML list elements or not. Enabled by default. |
| [paste_block_drop] | Enables you to block drag/drop from/to the editor and inside it. |
| [paste_retain_style_properties] | Comma separated list of style properties to retain during the paste operation from Word. For example: "font-size,color". If you want to remove all style properties use an empty string "" or "none", false will cause an error in IE. If you want to keep all style properties, use "all" or "*". Default is "none". |
| [paste_strip_class_attributes] | Enables you to strip the class attributes when pasted. Valid option values are "none", "all", and "mso". In the release 3.2.6 the default value was "all", in the current development version it is "mso". |
| [paste_remove_spans] | Enables you to remove all span elements while pasting. Defaults to false. |
| [paste_remove_styles] | If true, removes all style information when pasting, regardless of browser type. Pasting from Word 2000 will cause tinyMCE to error. Default is false. |
| [paste_remove_styles_if_webkit] | If true, removes all style information when pasting in WebKit since it has a serious paste bug. Default is true. |
| [paste_dialog_width] | Enables you to set the width of the paste as plain text and paste from word dialogs. |
| [paste_dialog_height] | Enables you to set the height of the paste as plain text and paste from word dialogs. |
| [paste_text_sticky] | Keeps Paste Text feature active until user deselects the Paste as Text button |
| [paste_text_use_dialog] | Enables legacy support for the Paste as Text button. Will use a dialog instead of treating the button as a toggle. |
| [paste_text_linebreaktype] | Converts plaintext linebreaks to br or p elements. This can be set to br, p or combined. |