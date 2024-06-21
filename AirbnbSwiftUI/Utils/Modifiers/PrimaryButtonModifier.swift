//
//  PrimaryButtonModifier.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/8/24.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 350, height: 44)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
