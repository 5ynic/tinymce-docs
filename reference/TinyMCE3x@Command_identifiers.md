---
layout: default
title: Command identifiers
---

TinyMCE uses commands to perform RTE actions, such as making the selected text bold or italic. There are two major types of commands, "global commands" and "instance commands". Global commands are independent of any editor instance (focusing a specific editor or adding a new editor to a textarea, for example). Instance commands are for a specific editor instance (making the current selection in a specific editor bold, for example).

## Invoking commands

There are a couple of methods for invoking these commands.

| Name | Summary |
| --- | --- |
| tinyMCE.execCommand(command, user_interface, value) | This will execute the specified command on the currently selected editor instance if it's an instance command. |
| tinyMCE.execInstanceCommand(editor_id, command, user_interface, value, focus) | This will execute the specified command on a specific editor instance by id. |
| inst.execCommand(command, user_interface, value); | This will execute the specified command on a specific editor instance. |

## Browser commands

Here are the built-in commands for various browsers.

*   [Gecko commands](http://developer.mozilla.org/en/docs/Midas)
*   [Explorer commands](http://msdn.microsoft.com/en-us/library/ms533049%28VS.85%29.aspx)

## Global commands

These commands can only be executed by using tinyMCE.execCommand.

| Name | Summary |
| --- | --- |
| mceFocus | Moves the focus and caret to the editor specified by its ID. Example: tinyMCE.execCommand('mceFocus',false,'myeditor'); |
| mceAddControl | Converts the specified textarea or div into an editor instance having the specified ID. Example: tinyMCE.execCommand('mceAddControl',false,'mydiv'); |
| mceAddFrameControl | Converts the specified textarea or div into an editor instance in a specific document having the specified ID. Example: tinyMCE.execCommand('mceAddFrameControl',false,{element_id:'someid', window:frame.window, other_init_option:'xyz'}); |
| mceRemoveControl | Removes an editor instance having the specified ID. Example: tinyMCE.execCommand('mceRemoveControl',false,'mydiv'); |
| mceResetDesignMode (removed in 3.3) | Resets the designMode attribute for all editors. This might get lost sometimes in Gecko. |
| mceToggleEditor | Toggles the WYSIWYG mode on or off by displaying or hiding the textarea and editor instance. This is not the same thing as mceAddControl or mceRemoveControl because the instance is still there and uninitialized, so this method is faster. |

## Instance commands

These commands are instance specific so they can only be executed on a specific editor.

| Name | Summary |
| --- | --- |
| mceAddUndoLevel | Adds a new undo level of the current editor HTML contents, unless processing is currently inside of a section marked by mceBeginUndoLevel and mceEndUndoLevel. |
| mceBeginUndoLevel (removed in 3.3) | Marks the beginning of a section of code that may initiate multiple changes that should all be considered as a single "undo" level. Use this in conjunction with mceEndUndoLevel at the end of the section of code. Any calls to mceAddUndoLevel, either directly invoked from this section of code or indirectly invoked by any other method, will be ignored. |
| mceCodeEditor | Opens the code editor dialogue where the document's underlying HTML code can be edited directly. The availability of the editor button which invokes this dialogue depends on your editor's configuration. |
| mceEndUndoLevel | Marks the end of a section of code that may initiate multiple changes that should all be considered as a single "undo" level. Calls mceAddUndoLevel. |
| mceCleanup | Peforms a clean up of the current editor HTML. |
| mceImage | Inserts an <img> element or updates an existing one - works with current selection. |
| mceInsertContent | Inserts HTML contents at the current selection or caret position. |
| mceInsertLink | Inserts an anchor or updates an existing one - works with current selection or a link at the caret's position (like what tinyMCE.themes["advanced"]._insertLink(URL, target); used to do in 2.x). |
| mceInsertRawHTML | Inserts raw HTML code at the current selection or caret position. |
| mceRemoveNode | Removes a specific node or element. |
| mceRepaint | Repaints the editor. Sometimes the browser has graphic glitches. |
| mceReplaceContent | Replaces the selected contents with the given value contents. |
| mceResize | resizes the editor container in the advanced theme (requires [theme_advanced_resizing](../configuration/Configuration3x@theme_advanced_resizing) set to true as by default) |
| mceSetAttribute | Sets an attribute on the selected element. |
| mceSetCSSClass (removed in 3.3) | Sets a CSS class of the selected element or selection. |
| mceSelectNode | Selects a specific node or element. |
| mceSelectNodeDepth | Selects an ancestor node or element by index. |
| mceSetContent | Sets the whole HTML contents to the given value. |
| mceSetStyleInfo (removed in 3.3) | Sets style information on a specific element. |
| mceStartTyping | User starts typing text. |
| mceEndTyping | User stops typing text. |
| mceToggleVisualAid | Turns on or off visual aids like table borders. |

## Examples

Here are some example command executions.

```html
<a href="#" onclick="tinyMCE.execCommand('Bold');return false;">[Bold]</a>
<a href="#" onclick="tinyMCE.execCommand('Italic');return false;">[Italic]</a>
<a href="#" onclick="tinyMCE.execCommand('mceInsertContent',false,'<b>Hello world!!</b>');return false;">[Insert some HTML]</a>
<a href="#" onclick="tinyMCE.execCommand('mceReplaceContent',false,'<b>{$selection}</b>');return false;">[Replace selection]</a>
```