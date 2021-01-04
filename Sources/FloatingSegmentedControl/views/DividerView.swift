//
//  DividerView.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import SwiftUI

struct DividerView: View {
    @Binding var buttomTapScale: CGFloat
    var allowBlur:Bool
    var backgroundColor:UIColor
    
    var body: some View {
        Rectangle()
            .padding(.horizontal, 12)
            .foregroundColor(.clear)
            .background(backgroundView)
                //BlurView(accentColor: backgroundColor, style: .systemChromeMaterialDark))
            
            .cornerRadius(16)
            .scaleEffect(buttomTapScale)
            .animation(.spring())
    }
    
    var backgroundView: some View {
        if allowBlur {
            return AnyView(BlurView(accentColor: backgroundColor, style: .systemChromeMaterialDark))
        }else{
            return AnyView(Color(backgroundColor))
        }
    }
    
}
