//
//  ListingView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    
    var body: some View {
        VStack(spacing: 8) {
            // IMages
            
            ListingImageCarouselView()
                .frame(height: 320)
                .cornerRadius(10)
            
    
            // listing details
            
            HStack(alignment: .top){
                // Details
                VStack(alignment: .leading) {
                  
                        Text("Miami, Florida ")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    Text("$567 night")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                // Rating
                HStack(spacing: 2) {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.black)
                    
                    Text("4.86")
                        .foregroundStyle(.black)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
