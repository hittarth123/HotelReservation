//
//  SignupView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

// SignupView.swift
// Airbnb

//import SwiftUI
//
//struct SignupView: View {
//    @Environment(\.dismiss) var dismiss
//    @State private var username = ""
//    @State private var password = ""
//    @State private var confirmPassword = ""
//    @State private var showError = false
//    @State private var errorMessage = ""
//
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 20) {
//                Text("Sign up")
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
//                SecureField("Confirm Password", text: $confirmPassword)
//                    .textFieldStyle(.roundedBorder)
//
//                if showError {
//                    Text(errorMessage)
//                        .foregroundColor(.red)
//                        .font(.footnote)
//                }
//
//                Button {
//                    if username.isEmpty || password.isEmpty || confirmPassword.isEmpty {
//                        errorMessage = "Please fill all fields."
//                        showError = true
//                    } else if password != confirmPassword {
//                        errorMessage = "Passwords do not match."
//                        showError = true
//                    } else {
//                        AuthManager.shared.signUp(username: username, password: password) { success in
//                            if success {
//                                dismiss()
//                            } else {
//                                errorMessage = "Signup failed. Try again."
//                                showError = true
//                            }
//                        }
//                    }
//                } label: {
//                    Text("Sign up")
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
//    SignupView()
//}
import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    var body: some View {
        VStack(spacing: 24) {
            Text("Create an account")
                .font(.title2)
                .fontWeight(.semibold)

            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

            Button("Sign Up") {
                // Handle signup logic
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.pink)
            .foregroundColor(.white)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
        .navigationTitle("Sign Up")
    }
}
#Preview {
    SignupView()
}