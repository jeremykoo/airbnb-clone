//
//  ProfileView.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/7/24.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var authManager: AuthManager
    @State private var showLogin = false
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        VStack {
            // profile login view
            if authManager.userSessionId == nil {
                ProfileLoginView(showLogin: $showLogin)
            } else {
                UserProfileHeaderView()
            }
            
            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
            
            if authManager.userSessionId != nil {
                Button {
                    authManager.signout()
                } label: {
                    Text("Log Out")
                        .underline()
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
        }
        .sheet(isPresented: $showLogin, content: {
            LoginView(authManager: authManager)
        })
        .padding()
    }
}

#Preview {
    ProfileView(authManager: AuthManager(service: MockAuthService()))
}
