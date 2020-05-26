//
//  ItemView.swift
//  
//
//  Created by Darío González Martínez on 18/04/2020.
//

import SwiftUI

struct ItemView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 15))
            .fontWeight(.semibold)
            .lineLimit(1)
            .minimumScaleFactor(0.95)
            .frame(height: 30)
            .padding(.horizontal, 12)
            .cornerRadius(16)
    }
    
}
