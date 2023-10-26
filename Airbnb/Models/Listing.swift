//
//  Listing.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import Foundation


struct Listing: Identifiable, Codable {
    
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageURL: String
    let numberOfBedrooms: Int
    let numberOfGuests: Int
    let numberOFBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let Title: String
    var rating: Double
}

enum ListingFeatures: Int,Identifiable, Codable, Hashable {
    case selfCheckin
    case superHost
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Identifiable, Hashable {
  
    
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var id: Int { return self.rawValue }
}
