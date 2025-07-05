//
//  LoginView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

// LoginView.swift
// Airbnb

//import SwiftUI
//
//struct LoginView: View {
//    @Environment(\.dismiss) var dismiss
//    @State private var username = ""
//    @State private var password = ""
//    @State private var showError = false
//
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 20) {
//                Text("Log in")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//
//                TextField("Username", text: $username)
//                    .autocapitalization(.none)
//                    .textFieldStyle(.roundedBorder)
//
//                SecureField("Password", text: $password)
//                    .textFieldStyle(.roundedBorder)
//
//                if showError {
//                    Text("Invalid credentials. Try again.")
//                        .foregroundColor(.red)
//                        .font(.footnote)
//                }
//
//                Button {
//                    AuthManager.shared.login(username: username, password: password) { success in
//                        if success {
//                            dismiss()
//                        } else {
//                            showError = true
//                        }
//                    }
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
//                Spacer()
//            }
//            .padding()
//            .toolbar {
//                ToolbarItem(placement: .cancellationAction) {
//                    Button("Cancel") {
//                        dismiss()
//                    }
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    LoginView()
//}
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 24) {
            Text("Log in to your account")
                .font(.title2)
                .fontWeight(.semibold)

            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .textContentType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

            Button("Login") {
                // Handle login logic
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.pink)
            .foregroundColor(.white)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
        .navigationTitle("Login")
    }
}
#Preview {
    LoginView()
}
