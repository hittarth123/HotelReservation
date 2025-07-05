//
//  Authmanager.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

// AuthManager.swift
// Airbnb

import Foundation

final class AuthManager: ObservableObject {
    static let shared = AuthManager()

    @Published var isLoggedIn: Bool = false
    @Published var currentUser: String?

    private init() {
        // Simulate session restoration (optional)
        self.isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        self.currentUser = UserDefaults.standard.string(forKey: "currentUser")
    }

    func login(username: String, password: String, completion: @escaping (Bool) -> Void) {
        // Dummy validation
        if !username.isEmpty && !password.isEmpty {
            self.isLoggedIn = true
            self.currentUser = username
            UserDefaults.standard.set(true, forKey: "isLoggedIn")
            UserDefaults.standard.set(username, forKey: "currentUser")
            completion(true)
        } else {
            completion(false)
        }
    }

    func signUp(username: String, password: String, completion: @escaping (Bool) -> Void) {
        // You can add persistence logic later
        login(username: username, password: password, completion: completion)
    }

    func logout() {
        isLoggedIn = false
        currentUser = nil
        UserDefaults.standard.removeObject(forKey: "isLoggedIn")
        UserDefaults.standard.removeObject(forKey: "currentUser")
    }
}

