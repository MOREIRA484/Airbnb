//
//  ListingView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    
    var body: some View {
        VStack(spacing: 8) {
            // IMages
            
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .cornerRadius(10)
            
    
            // listing details
            
            HStack(alignment: .top){
                // Details
                VStack(alignment: .leading) {
                  
                    Text("\(listing.city), \(listing.state) ")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    
                    Text("Nov 3 - 10")
                        .foregroundColor(.gray)
                
                    
                    Text("\(listing.pricePerNight)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                // Rating
                HStack(spacing: 2) {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.black)
                    
                    Text("\(listing.rating)")
                        .foregroundStyle(.black)
                }
            }
        }
        .padding()
    }
}



#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
