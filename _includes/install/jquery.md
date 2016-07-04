### Step 1: Download the jQuery package

We have a jQuery plugin [available here](http://archive.tinymce.com/download/custom_package.php) if you'd rather install TinyMCE using this method.

> Note: the above link will take you to the custom package download page. When building your jQuery package, select "TinyMCE core (jQuery) under the "Core Elements" section.

As with the [SDK](#sdkinstall) option, unzip the package and move the `'path/to/tinymce/'` directory into a web accessible location on your web server (for example, `localhost`).

### Step 2: Installation

Include this line of code in the `<head>` of your page:

```html
<script src="/path/to/tinymce/tinymce.min.js"></script>
<script src="/path/to/tinymce/jquery.tinymce.min.js"></script>
```

### Step 2: Initialize TinyMCE as part of a web form

With the script included, initialize TinyMCE on any element (or elements) in your web page.

Since TinyMCE lets you identify replaceable elements via a CSS3 selector all you need do is pass an object that contains a selector to `tinymce.init()`.

In this example, let's replace `<textarea id='mytextarea'>` with a TinyMCE editor instance by passing the selector `'#mytextarea'` to `tinymce.init()`.

```html
<!DOCTYPE html>
<html>
<head>
  <script src="/path/to/tinymce/tinymce.min.js"></script>
  <script src="/path/to/tinymce/jquery.tinymce.min.js"></script>
  <script type="text/javascript">
  tinymce.init({
    selector: '#mytextarea'
  });
  </script>
</head>

<body>
  <h1>TinyMCE Getting Started Guide</h1>
  <form method="post">
    <textarea id="mytextarea"></textarea>
  </form>
</body>
</html>
```

### Step 3: Saving Content with a form POST

When the `form` is submitted the TinyMCE editor mimics the behavior of a normal HTML `<textarea>` during a form `post`. No additional configuration is required.

> If you have decided the use the jQuery version, move on to the next step [Work with Plugins](../work-with-plugins/), where you'll start customizing TinyMCE. If you'd like to learn about other install options please keep reading.
