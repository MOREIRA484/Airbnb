//
//  ProfileOptionRowView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    let imageName: String
    let title: String
    
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            
            }
            
            Divider()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
