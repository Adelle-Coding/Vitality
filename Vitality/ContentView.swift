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
                Text("Vitality")
                NavigationLink(destination: Checklist()) {
                    Text("Checklist")
                        
                }
                    
                    NavigationLink(destination: Encouragement_.init()) {
                        Text("Encouragement")
                        
                
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
