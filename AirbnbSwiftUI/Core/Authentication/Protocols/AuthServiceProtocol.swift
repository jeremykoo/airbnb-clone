//
//  AuthServiceProtocol.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/11/24.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String?
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String?
    func signout()
}
