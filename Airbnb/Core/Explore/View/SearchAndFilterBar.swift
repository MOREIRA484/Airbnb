//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @Binding var location: String
    var body: some View {
       
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text(location.isEmpty ? "Where yo?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("\(location.isEmpty ? "Any Week - " : "")Any Week - Add guests")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
                    
            })
        }
        .padding(.horizontal)
        .padding(.vertical)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.3)
                
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar(location: .constant("Los Angeles"))
}
