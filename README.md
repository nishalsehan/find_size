# Find Size

A Flutter plugin to easily obtain the size of widgets within your application. This plugin is designed to simplify the process of retrieving the size of a widget, making it useful for a variety of use cases such as dynamic layout adjustments and responsive design.

![demo](https://github.com/nishalsehan/find_size/assets/44578204/50d161b3-abc5-4f6c-807d-be0b147fbea3)

## Platform Support

| **Android** | **iOS** | **Web** | **MacOS** | **Linux** | **Windows** |
|:-----------:|:-------:|:-------:|:---------:|:---------:|:-----------:|
|   &#9989;   | &#9989; | &#9989; |  &#9989;  |  &#9989;  |   &#9989;   |

## Features

- Retrieve the height and width of a Flutter widget.
- Works with any widget type.

## Getting Started

1. Add this plugin to your `pubspec.yaml` file:

```yaml
   dependencies:
     find_size: ^1.0.0
```

Run `flutter pub` get to install the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:find_size/find_size.dart';
```

Use the `FindSize` widget in your widget tree:

```dart
// Wrap the widget whose size you want to obtain with a `FindSize` widget.
FindSize(
    onChange: (Size size){
      // Use the size information as needed.
      print("Widget size: $size");
    },
    child: YourWidget(),
)
```

This code will output the size of the `YourWidget` within the `onChange` callback.

## Example

Here's a simple example of how to use this plugin to get the size of a widget:

```dart
import 'package:find_size/find_size.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Find Size Plugin Example'),
        ),
        body: Center(
          child: FindSize(
            onChange: (Size size) {
              print("Button size: $size");
            },
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
```

![find_size_plugin_screenshot](https://github.com/nishalsehan/find_size/assets/44578204/169d4f89-d273-4353-ad8e-4e82d8aff264)

## Example

For a complete example of how to use this plugin, check out the [example](https://github.com/nishalsehan/find_size/tree/main/example) folder in this repository.

## Feedback and Contributions

We value your feedback and encourage contributions to the Find Size Plugin. If you have suggestions, encounter issues, or would like to contribute to its development, please visit our [GitHub](https://github.com/nishalsehan/find_size) repository to open an issue or create a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/nishalsehan/find_size/blob/main/LICENSE) file for details.

## Contact

If you have any questions or require assistance, please don't hesitate to contact us at nishal.sehan@gmail.com.

Thank you for choosing the Find Size Plugin for your application, and we hope it enhances the user experience of your flutter application.
