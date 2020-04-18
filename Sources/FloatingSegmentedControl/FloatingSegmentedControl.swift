//
//  Copyright © 2020 Dario Gonzalez.
//
//  Licensed under the MIT license. See the LICENSE file for more info.
//

import SwiftUI

public struct FloatingSegmentedControlView: View {
    @State private var widths: [CGFloat] = Array.init(repeating: 0, count: 100)
    @State private var selectedIndex: Int = 0
    @State private var buttomTapScale: CGFloat = 1
    
    var items: [String]
    var onSelected: (Int) -> ()
    
    public var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 7) {
                ForEach(self.items, id: \.self) { item in
                    ItemView(text: item)
                        .foregroundColor(self.selectedIndex == self.items.firstIndex(of: item)! ? .clear : .gray)
                }
            }
            .padding(.horizontal, 4.0)
            VStack(alignment: .underlineLeading) {
                Button(action: {
                    withAnimation(.easeIn(duration: 1)) {
                        self.buttomTapScale = 0.8
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        withAnimation(.easeIn(duration: 1)) {
                          self.buttomTapScale = 1
                        }
                    }
                }) {
                    DividerView(buttomTapScale: $buttomTapScale)
                }
                .alignmentGuide(.underlineLeading) { d in d[.leading]  }
                .frame(width: widths[selectedIndex], height: 30)
                .animation(.spring())
                .offset(y: 19)
                HStack(alignment: .center, spacing: 7) {
                    ForEach(self.items, id: \.self) { item in
                        ItemView(text: item)
                            .foregroundColor(self.selectedIndex == self.items.firstIndex(of: item)! ? .white : .clear)
                            .modifier(WidthUpdater(selectedIndex: self.$selectedIndex, widths: self.$widths, onSelected: self.onSelected, id: self.items.firstIndex(of: item)!))
                            .background(TextGeometryWidth())
                            .onPreferenceChange(WidthPreferenceKey.self, perform: { self.widths[self.items.firstIndex(of: item)!] = $0 })
                    }
                }
                .offset(y: -18.5)
            }
            .frame(height: 30)
        }
        .padding(.vertical, 4.0)
        .background(BlurView(style: .systemMaterialLight))
        .cornerRadius(16)
        .shadow(radius: 10)
    }
    
}

extension FloatingSegmentedControlView {

    public init(_ items: [String], onSelected: @escaping (Int) -> ()) {
        self.items = items
        self.onSelected = onSelected
    }

}
