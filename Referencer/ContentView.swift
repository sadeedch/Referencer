//
//  ContentView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 3/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        
        // for the image
        VStack() {
            VStack(){
            Image("markhor")
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            
                
        // for title and sub heading
            VStack {
                
                Text("Markhor")
                .font(.largeTitle)
                    .fontWeight(.bold)
                    //.multilineTextAlignment(.leading)
                
                Text("Capra falconeri")
                    .font(.subheadline)
                    .fontWeight(.light)
                    //.multilineTextAlignment(.leading)
                    .padding(.bottom ,30)
            }
                
            VStack(){
                HStack(){
                        Text("Kingdom:")
                            .fontWeight(.heavy)
                        Text("Animalia")
                    }
                    HStack {
                        Text("Location:")
                            .fontWeight(.heavy)
                        Text("Pakistan")
                    }
                    
                    HStack {
                        Text("Other Name:")
                            .fontWeight(.heavy)
                        Text("Snake Eater")
                    }
                    
                    
                }
            
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



