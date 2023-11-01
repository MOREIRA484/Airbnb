//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 20/10/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        
        
        TabView {
            ForEach(listing.ImageUrl, id: \.self) { imagem in
                
                Image(imagem)
                    .resizable()
                    .scaledToFill()
            }
        }
            
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
