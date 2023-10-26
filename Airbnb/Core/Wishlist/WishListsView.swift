//
//  WishListsView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import SwiftUI

struct WishListsView: View {
    var body: some View {
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 32){
                    
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Log in to view your wishlist")
                            .fontWeight(.semibold)
                        
                        Text("you can create, view or edit wishlists once you've logged in")
                        
                        
                        Button {
                            
                        } label: {
                            Text("Log in")
                                .frame(width: 360, height: 46)
                                .foregroundStyle(.white)
                                .background(.pink)
                                .cornerRadius(12)
                                .padding(.top, 30)
                            
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("WishLists")
        }
    }
}

#Preview {
    WishListsView()
}
