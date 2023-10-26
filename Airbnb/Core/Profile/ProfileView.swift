//
//  ProfileView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        //Profile login View
        VStack(alignment: .leading, spacing: 10) {
            Text("Profile")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Log in to start planning your next trip")
                .font(.subheadline)
            
            Button {
                //
            } label: {
                Text ("Log in")
                    .frame(width: 350, height: 46)
                    .foregroundStyle(.white)
                    .background(.pink)
                    .cornerRadius(12)
                    .padding(.top)
                    
            }
            HStack {
                Text("dont't have as account ?")
                
                Text("Sing Up")
                    .fontWeight(.semibold)
                    .underline()
                    
            }
            .font(.caption)
        }
        
        
        //Profile options
        VStack(spacing: 24) {
            ProfileOptionRowView(imageName: "gear", title: "Setting")
            ProfileOptionRowView(imageName: "gear", title: "Accessibility")
            ProfileOptionRowView(imageName: "questionmark.circle", title: "visit the help center")
        }
        .padding(.vertical)
    }
}

#Preview {
    ProfileView()
}
