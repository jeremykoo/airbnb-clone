//
//  ExploreService.swift
//  AirbnbSwiftUI
//
//  Created by Jeremy Koo on 3/7/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
