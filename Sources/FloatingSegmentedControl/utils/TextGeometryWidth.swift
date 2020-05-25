//
//  TextGeometryWidth.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import SwiftUI

struct TextGeometryWidth: View {
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.clear)
                .preference(key: WidthPreferenceKey.self, value: geometry.size.width)
        }
    }
}
