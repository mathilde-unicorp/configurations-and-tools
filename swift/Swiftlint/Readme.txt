Swiftlint library: https://github.com/realm/SwiftLint

1. Copy the `.swiftlint.yml` file present in this folder
2. Add Build phase in your project, at the very end of the list.

```
if which swiftlint > /dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
```

3. Uncheck the "Based on package dependency" boxes to avoid warnings about output
