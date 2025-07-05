//
//  ProfileView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 06/07/25.
//

//import SwiftUI
//
//struct ProfileView: View {
//    var body: some View {
//        VStack {
////            profile login view
//            VStack(alignment: .leading, spacing: 32) {
//                VStack(alignment: .leading, spacing: 8) {
//                    Text("Profile")
//                        .font(.largeTitle)
//                        .fontWeight(.semibold)
//                    Text("Log in to start planning your next trip")
//                        .foregroundColor(.red)
//                }
//                
//                Button {
//                    print("Log in")
//                } label: {
//                    Text("Log in")
//                        .foregroundStyle(.white)
//                        .font(.subheadline)
//                        .fontWeight(.semibold)
//                        .frame(width: 360, height: 48)
//                        .background(.pink)
//                        .clipShape(RoundedRectangle(cornerRadius: 8))
//                }
//                
//                HStack {
//                    Text("Don't have an account?")
//                    Text("Sign up")
//                        .fontWeight(.semibold)
//                        .underline()
//                }
//                .font(.caption)
//            }
//            VStack(spacing: 24){
//                ProfileOptionRowView(imageName: "gear", title: "Settings")
//                ProfileOptionRowView(imageName: "gear", title: "Accesbility")
//                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
//                
//            }
//            .padding(.vertical)
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ProfileView()
//}
import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                        .foregroundColor(.red)
                }

                NavigationLink(destination: LoginView()) {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }

                HStack {
                    Text("Don't have an account?")
                    NavigationLink(destination: SignupView()) {
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .underline()
                    }
                }
                .font(.caption)

                VStack(spacing: 24) {
                    NavigationLink(destination: SettingsView()) {
                        ProfileOptionRowView(imageName: "gear", title: "Settings")
                    }
                    NavigationLink(destination: AccessibilityView()) {
                        ProfileOptionRowView(imageName: "figure.roll", title: "Accessibility")
                    }
                    NavigationLink(destination: HelpCenterView()) {
                        ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
                    }
                }
                .padding(.top)
                
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    ProfileView()
}
