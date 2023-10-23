//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 20/10/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        
        
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
    }
}

#Preview {
    ListingImageCarouselView()
}
