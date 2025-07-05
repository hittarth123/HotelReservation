//
//  SettingView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section(header: Text("Account")) {
                Text("Email Preferences")
                Text("Privacy")
                Text("Notifications")
            }

            Section(header: Text("General")) {
                Text("App Theme")
                Text("Language")
            }
        }
        .navigationTitle("Settings")
    }
}
#Preview {
    SettingsView()
}