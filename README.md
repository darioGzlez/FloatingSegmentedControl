<img src="https://i.imgur.com/kQJQLoK.png" width="400">

> SwiftUI reusable implementation of the iOS 13 photos app picker.

[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

## :sparkles: Features

- [x] Auto resizable view based on the number of items and the size of them.
- [x] OnSelectedItem method to execute logic for item selection.

## :open_book: Next features
- [ ] Ability to customize the color of the bar, items and selector.
- [ ] Customization of disable the drop shadow of the view.

## :gear: Requirements

- iOS 13+
- Xcode 11+

### Installation

Using Swift Package Manager of Xcode, it can be install by going to `File -> Swift Packages -> Add Package Dependency` and pasting this url repository.

```swift
dependencies: [
  .package(url: "https://github.com/darioGzlez/FloatingSegmentedControl.git", from: "1.0.0")
]
```

### Usage

The floating segmented control takes two parameters, a string array being the elements to display and a function that takes an integer parameter to execute the code in the selection of the element.

```swift
public init(_ items: [String], onSelected: @escaping (Int) -> ()) {
        self.items = items
        self.onSelected = onSelected
    }
```

## Demo app
Simple app that uses de Floating Segmented Control to switch beetween satellite and standard modes for a MapView.

Satellite view             |  Standard view
:-------------------------:|:-------------------------:
![Satellite view](https://i.imgur.com/QZsSSPB.png)  |  ![Standard view](https://i.imgur.com/ZmlsBZM.png)

```swift
import FloatingSegmentedControl

struct ContentView: View {
    @State var items = ["Satellite", "Standad"]
    @State var mapType: MKMapType = .hybrid
    
    var body: some View {
        ZStack {
            Map(mapType: $mapType).edgesIgnoringSafeArea(.top)
            VStack {
                FloatingSegmentedControlView(items, onSelected: onSelected).padding(.top)
                Spacer()
            }
        }
    }
    
    func onSelected(index: Int) {
        switch index {
        case 0:
            mapType = .hybrid
        case 1:
            mapType = .standard
        default:
            mapType = .hybrid
        }
    }
    
}
```

## Licence
FloatingSegmentedControl is under the MIT license. See the LICENSE file for more info.
