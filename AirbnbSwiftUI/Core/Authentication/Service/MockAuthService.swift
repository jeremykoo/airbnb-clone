//
//  MockAuthService.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/8/24.
//

import Foundation

struct MockAuthService: AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String? {
        return UUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? {
        return UUID().uuidString
    }
    
    func signout() {
        
    }
}
