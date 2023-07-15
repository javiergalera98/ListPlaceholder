# List Placeholder
A library to present a customizable placeholder view when a SwiftUI List is empty.
It provides a simple and convenient way to enhance the user experience by showing relevant information or UI elements when there is no content to display.


## Installation
Requires iOS 14+, macOS 11+, watchOS 7+ or tvOS 14+.

### Swift Package Manager

You can use Swift Package Manager to integrate ListPlaceholder into your Xcode project. Follow these steps:

1. In Xcode, go to "File" -> "Swift Packages" -> "Add Package Dependency".
2. Enter the repository URL: `https://github.com/javiergalera98/ListPlaceholder`.
3. Specify the version or branch you want to use.
4. Xcode will resolve the package and you can choose the target where you want to add ListPlaceholder.


## Usage

To present a list placeholder in SwiftUI, use the `.placeholder(for: items, content: view)` modifier.

```swift
import SwiftUI
import ListPlaceholder

struct ContentView: View {
    @State var contacts: [String] = []
    
    var body: some View {
        List {
            ForEach(contacts, id: \.self) { contact in
                Text(contact)
            }
        }
        .placeholder(for: contacts) {
            Text("No contacts registered.")
                .foregroundStyle(Color.secondary)
        }
    }
}
```

## Community

Author | Contributing | Need Help?
--- | --- | ---
Popovers is made by [Javier](https://github.com/javiergalera98). | All contributions are welcome. Just [fork](https://github.com/javiergalera98/ListPlaceholder/fork) the repo, then make a pull request. | Open an [issue](https://github.com/javiergalera98/ListPlaceholder/issues). You can also DM me on [Twitter](https://twitter.com/javiergalera98). Or read the source code — there's lots of comments.


## License

```
MIT License

Copyright (c) 2023 Javier Galera.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

![Stats](https://repobeats.axiom.co/api/embed/d1f4ffbfaabfb410a5d70fe8647ee0c58a36c625.svg "Stats")
