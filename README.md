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

[OnLaunch](https://github.com/kula-app/OnLaunch) is a service allowing app developers to notify app users about updates, warnings and maintenance
Our open-source framework provides an easy-to-integrate client to communicate with the backend and display the user interface.

## Features

- Display customizable messages to your app users
- Set your app into maintenance mode with blocking messages
- Easy to integrate with SwiftUI and UIKit

## Installation

You can integrate `OnLaunch` into your project using Swift Package Manager.

1. In Xcode, go to **File --> Swift Packages --> Add Package Dependency**.
2. Paste the package repository URL: `https://github.com/kula-app/OnLaunch-Flutter-Client`
3. Choose the desired version or branch (e.g. `main` for the latest development version).
4. Select the target where you want to add `OnLaunch`.
5. Click **Finish** to complete the integration.

## Usage

### Apps built with SwiftUI

1. Import the `OnLaunch` Flutter client into your `App` file:

```swift
import OnLaunch
```

2. Apply the configuration view modifier on your root content `View` to set your public key:

```swift
@main
struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .configureOnLaunch { options in
                    // Configure the public key to authenticate with the API endpoint
                    options.publicKey = "<YOUR PUBLIC APP KEY>"
                }
        }
    }
}
```

3. Optionally configure the `OnLaunch` client by modifying the `options`:

```swift
...
.configureOnLaunch { options in
    // Configure the public key to authenticate with the API endpoint
    options.publicKey = "<YOUR PUBLIC APP KEY>"

    // (Optional) Configure a custom base URL to your API host
    // options.baseURL = "https://your-domain.com/api"
}
...
```

### Options

The OnLaunch Flutter client provides a couple of configuration options:

| Name                     | Description                                                                                                                                                                                                                                                                  | Default                                                                                                                                                          |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `baseURL`                | Base URL where the OnLaunch API is hosted at. Change this to point to your self-hosted instance of the OnLaunch server.                                                                                                                                                      | `https://onlaunch.kula.app/api/`                                                                                                                                 |
| `publicKey`              | Public key used to authenticate with the API                                                                                                                                                                                                                                 |                                                                                                                                                                  |
| `shouldCheckOnConfigure` | Flag indicating if the client should check for new messages immediately after it has been configured.                                                                                                                                                                        | `true`                                                                                                                                                           |
| `hostScene`              | Scene used to host the OnLaunch client UI. Required if you use UIKit with scenes                                                                                                                                                                                             |                                                                                                                                                                  |
| `theme`                  | Custom theme used by the OnLaunch client UI. Adapt the values to change the theme to match your preferences. To see all possible configuration values, see [`Theme.swift`](https://github.com/kula-app/OnLaunch-Flutter-Client/blob/main/Sources/OnLaunch/Theme/Theme.swift) | Default values as defined in `Theme.standard` in [Theme.swift](https://github.com/kula-app/OnLaunch-Flutter-Client/blob/main/Sources/OnLaunch/Theme/Theme.swift) |

## Contributing Guide

Please see our [Contributing Guide](https://github.com/kula-app/OnLaunch-Flutter-Client/blob/main/CONTRIBUTING.md).

## License

Distributed under the [MIT License](https://github.com/kula-app/OnLaunch-Flutter-Client/blob/main/LICENSE)
