//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import Foundation

class DeveloperPreview {
    
    static var shared = DeveloperPreview()
    
    var listings: [Listing] = [
        
        
    
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Leonardo Moreira",
              ownerImageURL: "leonardo",
              numberOfBedrooms: 4,
              numberOfGuests: 3,
              numberOFBeds: 4,
              pricePerNight: 567,
              latitude: 25.7850 ,
              longitude: -80.1936,
              ImageUrl: ["listing1","listing2","listing3","listing4"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              Title: "Miami Villa",
              rating: 4.86,
              features: [.selfCheckin, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa
             
             ),
       
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  ownerName: "Harry Style ",
                  ownerImageURL: "leonardo",
                  numberOfBedrooms: 4,
                  numberOfGuests: 3,
                  numberOFBeds: 4,
                  pricePerNight: 767,
                  latitude: 34.2 ,
                  longitude: -118.0426,
                  ImageUrl: ["listing10","listing11","listing12","listing13"],
                  address: "124 Main St",
                  city: "Los Angeles",
                  state: "California",
                  Title: "Beatiful Los Angeles Home in Malibu",
                  rating: 4.96,
                  features: [.selfCheckin, .superHost],
                  amenities: [.wifi, .alarmSystem, .pool],
                  type: .apartament
                  
                 ),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  ownerName: "Timoth Chalamet ",
                  ownerImageURL: "leonardo",
                  numberOfBedrooms: 4,
                  numberOfGuests: 3,
                  numberOFBeds: 4,
                  pricePerNight: 763,
                  latitude: 34.1 ,
                  longitude: -118.1426,
                  ImageUrl: ["listing14", "listing15", "listing16", "listing17"],
                  address: "124 Main St",
                  city: "Los Angeles",
                  state: "California",
                  Title: "Beatiful Los Angeles Home in the HollyWood Hills",
                  rating: 4.96,
                  features: [.selfCheckin, .superHost],
                  amenities: [.wifi, .alarmSystem, .pool, .tv, .balcony],
                  type: .apartament
                  
                  
                 ),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  ownerName: "Timoth Chalamet ",
                  ownerImageURL: "leonardo",
                  numberOfBedrooms: 4,
                  numberOfGuests: 3,
                  numberOFBeds: 4,
                  pricePerNight: 763,
                  latitude: 34.1 ,
                  longitude: -118.1426,
                  ImageUrl: ["listing18", "listing19", "listing20"],
                  address: "124 Main St",
                  city: "Los Angeles",
                  state: "California",
                  Title: "Beatiful Los Angeles Home in the HollyWood Hills",
                  rating: 4.96,
                  features: [.selfCheckin, .superHost],
                  amenities: [.wifi, .alarmSystem, .pool, .tv, .balcony],
                  type: .apartament
                 )

    ]
}
