//
//  ExploreService.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 07/07/25.
//

import Foundation
class ExploreService {
    func fetchListings() async throws-> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
