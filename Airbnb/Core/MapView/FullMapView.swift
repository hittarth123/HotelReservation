//
//  FullMapView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

import SwiftUI
import MapKit

struct FullMapView: View {
    let region: MKCoordinateRegion

    @State private var cameraPosition: MapCameraPosition

    init(region: MKCoordinateRegion) {
        self.region = region
        self._cameraPosition = State(initialValue: .region(region))
    }

    var body: some View {
        Map(position: $cameraPosition)
            .edgesIgnoringSafeArea(.all)
    }
}
