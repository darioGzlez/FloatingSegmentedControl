//
//  MapView.swift
//  DemoApp
//
//  Created by Darío González Martínez on 19/04/2020.
//  Copyright © 2020 Darío González Martínez. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    class Coordinator: NSObject, MKMapViewDelegate {

        @Binding var mapType: MKMapType

        init(mapType: Binding<MKMapType>) {
            _mapType = mapType
        }

    }

    @Binding var mapType: MKMapType

    func makeCoordinator() -> Coordinator {
        return Coordinator(mapType: $mapType)
    }

    func makeUIView(context: Context) -> MKMapView {
        let view = MKMapView(frame: .zero)
        view.delegate = context.coordinator
        return view
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.mapType = mapType

    }

}
