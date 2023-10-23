//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 19/10/23.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "listing-2",
        "listing-1",
        "listing-3",
        "listing-4",
    ]
    
    var SystemName = [
        "wifi",
        "alarm",
        "av.remote",
        "wifi",
        "tv",
        ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ScrollView {
            
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                
                
                Button {
                    dismiss()
                }  label: {
                  
                    Image(systemName: "chevron.left")
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.black)
                        .background(.white)
                        .cornerRadius(50)
                        
                }
                .padding(50)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                
                    
                    Text("Miami Villa")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                HStack {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                        .font(.footnote)
                    
                    Text("-  28 reviews")
                        .underline()
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                   Text("Miami,Florida")
                        .font(.footnote)
            }
            
            .frame(maxWidth: .infinity, alignment: .leading )
            .padding(.horizontal)
            
            Divider()
            
            //Host info View
            
            HStack {
                VStack(alignment: .leading){
                    
                    Text("Entire villa Hoster By Jhon Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack{
                        Text("4 guests -")
                        Text("1 room -")
                        Text("2  bed -")
                        Text("1 bathroom -")
                        
                    
                    }
                    .font(.footnote)
                }
                .frame(width: 300)
                
                Spacer()
                
                Image("leonardo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
                
                
            }
            .padding()
            
            Divider()
            
            
            //listing feature
          
            VStack(alignment: .leading, spacing: 16){
                
                ForEach(0 ..< 2) { feature in
                    
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        
                        VStack(alignment: .leading){
                            
                            Text("Sell check-in")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experience, highly rated hosts who are commited to providing great stars guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                    Spacer()
                       
                    }
                }
            }
            .padding()
            
            Divider()
            
            //breedrooms view
            
            VStack(alignment: .leading, spacing: 16){
                Text("where you'll sleep")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    
                    HStack(spacing: 16){
                        
                        ForEach(1 ..< 5) { bedroom in
                            
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("bedroom \(bedroom)")
                                
                                
                            }
                            .padding()
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // Listing amenities
            
            VStack(alignment: .leading, spacing: 16){
                
                Text("What this place offers")
                    .font(.headline)
                  
                
                
                ForEach(SystemName, id: \.self) {  feature in
                    
                        HStack {
                            Image(systemName: feature)
                                .frame(width: 32)
                            
                            
                            Text("")
                                .font(.footnote)
                            
                            Spacer()
                    }
                }
                    
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
             
            }
                        
            }
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("$500")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxas")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                    }
                    .padding(.leading, 40)
                    .padding(.bottom)
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("reserve")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .padding(.horizontal, 32)
                  
                }
                .background(.white)
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    ListingDetailView()
}
