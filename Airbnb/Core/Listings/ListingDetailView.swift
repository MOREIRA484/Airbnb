//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    let listing: Listing
    
    @Environment(\.dismiss) var dismiss
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(center: listing.city == "Los Angeles" ? .losAngeles : .miami, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        
        ScrollView {
            
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                
                
                Button {
                    dismiss()
                }  label: {
                  
                    Image(systemName: "chevron.left")
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black)
                        .background(.white)
                        .cornerRadius(50)
                        
                }
                .padding(50)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                
                    
                Text(listing.Title)
                        .font(.title)
                        .fontWeight(.semibold)
                    
                HStack {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                        .font(.footnote)
                    
                    Text("-  28 reviews")
                        .underline()
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Text("\(listing.city), \(listing.state)")
                        .font(.footnote)
            }
            
            .frame(maxWidth: .infinity, alignment: .leading )
            .padding(.horizontal)
            
            Divider()
            
            //Host info View
            
            HStack {
                VStack(alignment: .leading){
                    
                    Text( "Entire \(listing.type.description) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack{
                        Text("\(listing.numberOfGuests) -")
                        Text("\(listing.numberOfBedrooms) -")
                        Text("\(listing.numberOFBeds) -")
                        Text("\(listing.numberOfBedrooms) -")
                    }
                    .font(.footnote)
                }
                .frame(width: 300)
                
                Spacer()
                
                Image(listing.ownerImageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
                
                
            }
            .padding()
            
            Divider()
            
            
            //listing feature
          
            VStack(alignment: .leading, spacing: 16){
                
                ForEach(listing.features) { feature in
                    
                    HStack(spacing: 12) {
                        Image(systemName: feature.ImageName)
                        
                        
                        VStack(alignment: .leading){
                            
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subTitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                    Spacer()
                       
                    }
                }
            }
            .padding()
            
            Divider()
            
            //breedrooms view
            
            VStack(alignment: .leading, spacing: 16){
                Text("where you'll sleep")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    
                    HStack(spacing: 16){
                        
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
                            
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("bedroom \(bedroom)")
                                
                                
                            }
                            .padding()
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // Listing amenities
            
            VStack(alignment: .leading, spacing: 16){
                
                Text("What this place offers")
                    .font(.headline)
                  
                
                
                ForEach(listing.amenities, id: \.self) {  amenity in
                    
                        HStack {
                            
                            Image(systemName: amenity.ImageName)
                            
                            
                            Text(amenity.title)
                                .font(.footnote)
                            
                            Spacer()
                    }
                }
                    
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .cornerRadius(12)
             
            }
            .padding()
            }
        .toolbar(.hidden, for: .tabBar)
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("$\(listing.pricePerNight)")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxas")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                    }
                    .padding(.leading, 40)
                    .padding(.bottom)
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("reserve")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .padding(.horizontal, 32)
                  
                }
                .background(.white)
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
