//
//  DividerView.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import SwiftUI

struct DividerView: View {
    @Binding var buttomTapScale: CGFloat
    
    var body: some View {
        Rectangle()
            .padding(.horizontal, 12)
            .foregroundColor(.clear)
            .background(BlurView(style: .systemChromeMaterialDark))
            .cornerRadius(16)
            .scaleEffect(buttomTapScale)
            .animation(.spring())
    }
}
