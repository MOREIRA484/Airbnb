//
//  ExploreView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    
                   SearchAndFilterBar()
                    
                    ForEach(0 ... 5, id: \.self){ listing in
                        
                       ListingItemView()
                            .frame(height: 420)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
