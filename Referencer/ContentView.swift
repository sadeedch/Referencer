//
//  ContentView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 3/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var ground: Ground
    
    var body: some View {
        Text("This is \(ground.name) in \(ground.location)")
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ground: Ground ("MCG","Melbourne"))
    }
}


/*
 
 
 
     VStack() {
        
          // for the image
         Image("markhor")
             .shadow(radius: 20)
         
     // for title and sub heading
         VStack {
             Text("Markhor")
                 .font(.largeTitle)
                 .fontWeight(.bold)
            
             
             Text("Capra falconeri")
                 .font(.subheadline)
                 .fontWeight(.light)
                 .padding(.bottom ,30)
             }.frame(width: 370, alignment: .leading)
             
         VStack(alignment: .leading){
             HStack {
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
     
 
 */





