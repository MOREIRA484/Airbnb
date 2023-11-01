//
//  ExploreView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDetinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if showDetinationSearchView {
                DestinationSearchView(show: $showDetinationSearchView, viewModel: viewModel)
                   
            } else {
                ScrollView {
                    LazyVStack(spacing: 32) {
                        
                        SearchAndFilterBar(location: $viewModel.searchLocation)
                            .onTapGesture {
                                withAnimation(.snappy) {
                                    showDetinationSearchView.toggle()
                                        
                                }
                            }
                        
                        ForEach(viewModel.listings){ listing in
                            
                            NavigationLink(value: listing) {
                                
                                ListingItemView(listing: listing)
                                     .frame(height: 420)
                                     .cornerRadius(10)
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                    
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
