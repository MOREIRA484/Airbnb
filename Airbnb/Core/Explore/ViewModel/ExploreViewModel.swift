//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by leonardo Moreira on 31/10/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing] ()
    @Published var searchLocation = ""
    private var listingsCopy = [Listing]()
    private let service: ExploreService
    
    init (service: ExploreService) {
        
        self.service = service
        self.listings = listings
        
        Task { await fetchListing()}
        
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListing()
        } catch {
            print ("Debug: failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation()  {
        let filteredListings = listings.filter( {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
