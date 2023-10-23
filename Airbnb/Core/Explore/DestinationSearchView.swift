//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 23/10/23.
//

import SwiftUI


enum DestinationSearchOptions {
    
    case location
    case dates
    case guests
}


struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
   
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
                
            
            } label: {
                Image(systemName: "xmark.circle")
                    .frame(width: 50, height: 50)
                    .imageScale(.large)
                    .foregroundStyle(.gray)
                    .padding(.horizontal)
            }
            
            VStack(alignment: .leading) {
                
                if selectedOption == .location {
                    
                    
                    Text("Where to ?")
                        .font(.title2)
                    .fontWeight(.semibold)
                    
                    
                    HStack{
                        
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destination", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", descritipion: "Add destination")
                }
                
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .cornerRadius(12)
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
                
            }
            
            //Date selection View
            
            VStack {
                if selectedOption == .dates {
                    
                    HStack {
                        Text("  Show expanded view")
                        
                        Spacer()
                    }
                    
                } else {
                    CollapsedPickerView(title: "When", descritipion: "Add Dates")
                        
                }
            }
              .padding()
              .frame(height: selectedOption == .dates ? 120 : 64)
              .background(.white)
              .cornerRadius(10)
              .padding()
              .shadow(radius: 10)
            
            .onTapGesture {
                
                withAnimation(.snappy) {
                    selectedOption = .dates
                }

                
            }
            
            
            VStack {
                if selectedOption == .guests {
                    
                    HStack {
                        Text("  Show expanded view")
                        
                        Spacer()
                    }
                    
                } else {
                    CollapsedPickerView(title: "Who", descritipion: "Add guests")
                        
                }
            }
           
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .cornerRadius(12)
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    
    let  title: String
    let descritipion: String
    
    var body: some View {
      VStack {
            
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(descritipion)
                    .fontWeight(.semibold)
                
            }
        }
    }
}
