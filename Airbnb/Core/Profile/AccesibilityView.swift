//
//  AccesibilityView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

import SwiftUI

struct AccessibilityView: View {
    var body: some View {
        List {
            Text("VoiceOver Support")
            Text("Text Size")
            Text("Color Contrast")
            Text("Motion Reduction")
        }
        .navigationTitle("Accessibility")
    }
}
#Preview {
    AccessibilityView()
}