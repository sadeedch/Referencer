//
//  DetailView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 19/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import SwiftUI



// showing the details of the grounds
struct DetailView: View {
    @State var ground: Ground
    var body: some View {
        VStack() {
             
            Image("\(ground.name)")
        
            VStack {
                
                Text("\(ground.name)")
                     .font(.largeTitle)
                     .fontWeight(.bold)
                
                 
                Text("\(ground.location)")
                     .font(.subheadline)
                     .fontWeight(.light)
                     .padding(.bottom)
                 }.frame(width: 300, alignment: .leading)
            
            
            
            VStack(alignment: .leading){
                HStack {
                    Text("Capacity:")
                        .fontWeight(.heavy)
                    Text("\(ground.capacity)")
                    }
                HStack {
                    Text("Opened:")
                        .fontWeight(.heavy)
                    Text("\(ground.opened)")
                    }
                HStack {
                    Text("Owner:")
                        .fontWeight(.heavy)
                    Text("\(ground.owner)")
                    }
                
            }.padding()
           
            HStack {
                Text("Notes:")
                    .fontWeight(.bold)
                    .font(Font.system(size: 20))
                TextField("Enter your notes...", text: $ground.notes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }.frame(width: 350, height: nil)
     
                          
        }
        
        
        
          
    }
}


