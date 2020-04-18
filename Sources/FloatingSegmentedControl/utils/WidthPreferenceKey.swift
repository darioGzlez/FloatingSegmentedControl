//
//  WidthPreferenceKey.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import SwiftUI

struct WidthPreferenceKey: PreferenceKey {
    static var defaultValue = CGFloat(0)

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }

    typealias Value = CGFloat
}
