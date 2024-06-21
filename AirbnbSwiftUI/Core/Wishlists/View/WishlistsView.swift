//
//  WishlistsView.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/7/24.
//

import SwiftUI

struct WishlistsView: View {
    @State private var showLogin = false
    
    @ObservedObject var authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if authManager.userSessionId == nil {
                    WishlistLoginView(showLogin: $showLogin)
                } else {
                    WishlistEmptyStateView()
                }
            }
            .sheet(isPresented: $showLogin, content: {
                LoginView(authManager: authManager)
            })
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView(authManager: AuthManager(service: MockAuthService()))
}
