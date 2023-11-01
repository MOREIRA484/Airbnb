//
//  ExploreService.swift
//  Airbnb
//
//  Created by leonardo Moreira on 31/10/23.
//

import Foundation


class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
