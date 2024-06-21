//
//  WishlistEmptyStateView.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/11/24.
//

import SwiftUI

struct WishlistEmptyStateView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Create your first wishlist")
                .font(.headline)
            
            Text("As you explore, tap the heart icon to save your favorite places to a wishlist.")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WishlistEmptyStateView()
}
