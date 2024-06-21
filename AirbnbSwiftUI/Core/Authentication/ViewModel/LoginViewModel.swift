//
//  LoginViewModel.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/8/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    func login(withEmail email: String, password: String) async {
        do {
            try await authManager.login(withEmail: email, password: password)
        } catch {
            print("DEBUG: Failed to login with error: \(error.localizedDescription)")
        }
    }
}
