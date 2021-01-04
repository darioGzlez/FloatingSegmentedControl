//
//  BlurView.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import UIKit
import SwiftUI

struct BlurView: UIViewRepresentable {
    var accentColor:UIColor
    var style: UIBlurEffect.Style = .systemMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
        uiView.backgroundColor = accentColor
    }
    
}
