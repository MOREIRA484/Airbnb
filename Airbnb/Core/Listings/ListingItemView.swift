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
            TabView {
                ForEach(images, id: \.self) { image in
                    
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
                .frame(height: 320)
                .cornerRadius(10)
                .tabViewStyle(.page)
            
            // listing details
            
            HStack(alignment: .top){
                // Details
                VStack(alignment: .leading) {
                  
                        Text("Miami, Florida ")
                            .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    Text("$567 night")
                        .fontWeight(.semibold)
                }
                
                Spacer()
                // Rating
                HStack(spacing: 2) {
                    
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
