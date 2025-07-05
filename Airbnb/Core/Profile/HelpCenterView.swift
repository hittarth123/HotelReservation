//
//  HelpCenter.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

import SwiftUI

struct HelpCenterView: View {
    var body: some View {
        List {
            Text("How Airbnb works")
            Text("Payment issues")
            Text("Booking help")
            Text("Cancellation policy")
            Text("Contact support")
        }
        .navigationTitle("Help Center")
    }
}
#Preview {
    HelpCenterView()
}