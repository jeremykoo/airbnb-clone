//
//  ContentView.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        VStack {
            MainTabView(authManager: authManager)
        }
    }
}

#Preview {
    ContentView(authManager: AuthManager(service: MockAuthService()))
}
