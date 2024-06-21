//
//  AirbnbSwiftUIApp.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/4/24.
//

import SwiftUI

@main
struct AirbnbSwiftUIApp: App {
    let authManager = AuthManager(service: MockAuthService())
    
    var body: some Scene {
        WindowGroup {
            ContentView(authManager: authManager)
        }
    }
}
