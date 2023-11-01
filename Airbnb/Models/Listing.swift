//
//  Listing.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import Foundation


struct Listing: Identifiable, Codable, Hashable {
    
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
    var ImageUrl: [String]
    let address: String
    let city: String
    let state: String
    let Title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [listingAmenities]
    var type: ListingType
}

enum ListingFeatures: Int,Identifiable, Codable, Hashable {
    case selfCheckin
    case superHost
    
    var ImageName: String {
        switch self {
        case .selfCheckin: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckin: return "self check-in"
        case .superHost: return "SuperHost"
        }
    }
    
    var subTitle: String {
        switch self {
        case .selfCheckin: return "Check yourself in with the keypad"
        case .superHost: return "Superhosts are experienced, hishly rated hosts who are commited to providing great stars for guests"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum listingAmenities: Int,Codable, Identifiable, Hashable {
   
    
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    
        var title: String {
            switch self {
            case .pool: return "Pool"
            case .kitchen: return "Kitchen"
            case .wifi: return "Wifi "
            case .laundry: return "Laundry"
            case .tv: return "TV"
            case .alarmSystem : return "Alarme System"
            case .office: return "Office"
            case .balcony: return "Balcony"
            }
        }
        
        var ImageName: String {
          
                switch self {
                case .pool: return "figure.pool.swim"
                case .kitchen: return "fork.knife"
                case .wifi: return "wifi"
                case .laundry: return "washer"
                case .tv: return "tv"
                case .alarmSystem : return "checkerboard.shield"
                case .office: return "pencil.and.ruler.fill"
                case .balcony: return "building"
                }
            }
        
        var id: Int { return self.rawValue }
    }
            
enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartament
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartament: return "Apartament"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    var id: Int { return self.rawValue }
}

