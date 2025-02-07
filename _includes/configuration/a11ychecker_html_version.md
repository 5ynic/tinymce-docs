### `a11ychecker_html_version`

This configuration option sets the HTML version to use when checking issues.

For example: Setting the version to HTML 4 will enable the rule "Complex tables should have summaries", where `summary` is a valid attribute in HTML 4 but not HTML 5.

**Type:** `String`

**Default value:** `html4`

**Possible Values:** `html4`, `html5`

#### Example: Using `a11ychecker_html_version`

```js
tinymce.init({
  selector: 'textarea',
  plugins: 'a11ychecker',
  toolbar: 'a11ycheck',
  a11ychecker_html_version: 'html5'
});
```

