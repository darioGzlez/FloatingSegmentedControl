<img src="https://i.imgur.com/kQJQLoK.png" width="400">

> A SwiftUI package for a reusable floating picker, replicating the desing of the Photos.app

[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

## Requirements

- iOS 13+
- Xcode 11+

### Installation

Using Swift Package Manager of Xcode, it can be install by going to `File -> Swift Packages -> Add Package Dependency` and pasting this url repository.

### Usage

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

### Licence
FloatingSegmentedControl is under the MIT license. See the LICENSE file for more info.
