---
layout: default
title: urlconverter_callback
---

This option enables you to add your own URL converter logic. This option should contain a JavaScript function name. The format of this converter function is: URLConverter(url, node, on_save), where:

url = the URL string to convert,

node = the element that contains the URL that is to be converted (this parameter may be set to null if there is no element for the URL), and

on_save is set to true when the contents are to be extracted from the editor (for example when the user submits the HTML form).

This function should return the converted URL as a string. This option is set to an internal TinyMCE function <editor>.[convertURL()](/wiki.php/API3:method.tinymce.Editor.convertURL) by default. You may call this function from your extension in order to use the built-in convert options.

## Example of usage of the urlconverter_callback option:

```html
function myCustomURLConverter(url, node, on_save) {
	// Do some custom URL convertion
	url = url.substring(3);

	// Return new URL
	return url;
}

tinyMCE.init({
	...
	urlconverter_callback : "myCustomURLConverter"
});
```