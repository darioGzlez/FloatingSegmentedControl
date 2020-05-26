//
//  ContentView.swift
//  DemoApp
//
//  Created by Darío González Martínez on 19/04/2020.
//  Copyright © 2020 Darío González Martínez. All rights reserved.
//

import SwiftUI
import MapKit
import FloatingSegmentedControl

struct ContentView: View {
    @State var items = ["Satellite", "Standard"]
    @State var mapType: MKMapType = .hybrid
    
    var body: some View {
        ZStack {
            MapView(mapType: $mapType).edgesIgnoringSafeArea(.vertical)
            VStack {
                FloatingSegmentedControlView(
                    items,
                    title: "Map view"
                    onSelected: onSelected)
                    .padding(.top)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
