//
//  ContentView.swift
//  Vitality
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{

                
                Text("Vitality!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.071, green: 0.398, blue: 0.309))
                Image("daisy")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(100)
                Spacer()
                
                
                NavigationLink(destination: ChecklistView()) {
                    
                    Text("Vitality")
                    NavigationLink(destination: ChecklistView()) {

                        
                        Text("Checklist")
                        //text color in the button is sand
                            .foregroundColor(Color(red: 0.937, green: 0.894, blue: 0.812))
                        //button color dark green
                            .background(Color(red: 0.071, green: 0.398, blue: 0.309))
                            .cornerRadius(100)
                            .controlSize(.large)
                    }
                    
                    NavigationLink(destination: Encouragement_.init()) {
                        Text("Encouragement")
                        
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    (Color(red: 0.576, green: 0.804, blue: 0.698))
                        .ignoresSafeArea()
                }
                
            }
            
            
            
        }
        
        
        #Preview {
            ContentView()
        }
        
    }
}
