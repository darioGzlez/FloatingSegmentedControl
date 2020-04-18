//
//  WidthUpdater.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import SwiftUI

struct WidthUpdater: ViewModifier {
    @Binding var selectedIndex: Int
    @Binding var widths: [CGFloat]
    let onSelected: (Int) -> ()
    let id: Int

    func body(content: Content) -> some View {
        var w: CGFloat = 0
        return Group {
            if selectedIndex == id {
                content.alignmentGuide(.underlineLeading) { d in
                    w = d.width
                    return d[.leading]
                }.onAppear(perform: {self.widths[self.id] = w})

            } else {
                content.onTapGesture {
                    self.selectedIndex = self.id
                    self.onSelected(self.selectedIndex)
                }
            }
        }
    }
}
