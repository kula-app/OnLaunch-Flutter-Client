# OnLaunch Flutter Client

<p align="center">
  <a href="https://github.com/kula-app/OnLaunch-Flutter-Client/releases">
    <img src="https://img.shields.io/github/release/kula-app/onlaunch-Flutter-client.svg"/>
  </a>
  <a href="https://codecov.io/gh/kula-app/OnLaunch-Flutter-Client" >
    <img src="https://codecov.io/gh/kula-app/OnLaunch-Flutter-Client/branch/main/graph/badge.svg?token=SW7EXARH5G"/>
  </a>
  <a href="https://swiftpackageindex.com/kula-app/OnLaunch-Flutter-Client">
    <img src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fkula-app%2FOnLaunch-Flutter-Client%2Fbadge%3Ftype%3Dswift-versions" alt="Swift Versions" />
  </a>
  <a href="https://github.com/kula-app/OnLaunch-Flutter-Client/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/kula-app/OnLaunch-Flutter-Client.svg"/>
  </a>
</p>

<p align="center">
    <sub>Created and maintained by <a href="https://kula.app">kula.app</a> and all the amazing <a href="https://github.com/kula-app/OnLaunch-Flutter-Client/graphs/contributors">contributors</a>.</sub>
</p>

[OnLaunch](https://github.com/kula-app/OnLaunch) is a service allowing app developers to notify app
users about updates, warnings and maintenance
Our open-source framework provides an easy-to-integrate client to communicate with the backend and
display the user interface.

## Features

- Display customizable messages to your app users
- Set your app into maintenance mode with blocking messages
- Easy to integrate with existing Flutter apps

## Installation 💻

**❗ In order to start using Onlaunch you must have the [Flutter SDK][flutter_install_link] installed
on your machine.**

Add `flutter_onlaunch` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_onlaunch:
```

Install it:

```sh
flutter packages get
```

---

## Usage

### Setup

Initialize the service in your main function:

```dart
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  OnLaunch().init(publicKey, baseURL);
  runApp(const MyApp());
}
```

Wrap your top widget with OnLaunchOverlay. The overlay has to come AFTER the MaterialAppWidget (or
similar)

```dart
  return MaterialApp(home: OnLaunchOverlay(child: MainWidget()));
```

### Test

To verify the setup, you can call the test method `OnLaunch().preview({blocking})`.

### Options

The OnLaunch Flutter client provides a couple of configuration options:

| Name                     | Description                                                                                                             | Default                          |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| `baseURL`                | Base URL where the OnLaunch API is hosted at. Change this to point to your self-hosted instance of the OnLaunch server. | `https://onlaunch.kula.app/api/` |
| `publicKey`              | Public key used to authenticate with the API                                                                            |                                  |
| `shouldCheckOnConfigure` | Flag indicating if the client should check for new messages immediately after it has been configured.                   | `true`                           |

## Contributing Guide

Please see
our [Contributing Guide](https://github.com/kula-app/OnLaunch-Flutter-Client/blob/main/CONTRIBUTING.md)
.

## License

Distributed under
the [MIT License](https://github.com/kula-app/OnLaunch-Flutter-Client/blob/main/LICENSE)

## Continuous Integration 🤖

Onlaunch comes with a built-in [GitHub Actions workflow][github_actions_link] powered
by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD
solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This
ensures the code remains consistent and behaves correctly as you add functionality or make changes.
The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options
used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link]
.

---

## Running Tests 🧪

For first time users, install the [very_good_cli][very_good_cli_link]:

```sh
dart pub global activate very_good_cli
```

To run all unit tests:

```sh
very_good test --coverage
```

To view the generated coverage report you can
use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[flutter_install_link]: https://docs.flutter.dev/get-started/install

[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg

[license_link]: https://opensource.org/licenses/MIT

[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only

[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only

[mason_link]: https://github.com/felangel/mason

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

[very_good_cli_link]: https://pub.dev/packages/very_good_cli

[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage

[very_good_ventures_link]: https://verygood.ventures

[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only

[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only

[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
