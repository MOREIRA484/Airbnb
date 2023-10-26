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
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
   
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            HStack {
                
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
            
            Spacer()
            //button clear
                if !destination.isEmpty {
                    Button("clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            
            } .padding()
            
            
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
            .modifier(CollapsibleDestinationViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
                
            }
            
            //Date selection View
            
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    
                        Text("When's Your trip ?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                    VStack(spacing: 3){
                            DatePicker("from", selection: $startDate, displayedComponents: .date)
                            
                            Divider()
                            
                            
                            DatePicker("to", selection: $endDate, displayedComponents: .date)
                        }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                       
                    
                    
                } else {
                    CollapsedPickerView(title: "When", descritipion: "Add Dates")
                        
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .onTapGesture {
                
                withAnimation(.snappy) {
                    selectedOption = .dates
                }

                
            }
            
            
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    
                   Text("Who's Coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                       numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                       numGuests -= 1
                    }
                       
                    
                    
                } else {
                    CollapsedPickerView(title: "Who", descritipion: "Add guests")
                        
                }
            }
           
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding()
        .background(.white)
        .cornerRadius(12)
        .padding()
        .shadow(radius: 10)
    }
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
