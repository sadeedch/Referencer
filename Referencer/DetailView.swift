//
//  DetailView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 19/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import SwiftUI



// This Detail View shows the details of all the ground including its different properties.
struct DetailView: View {
    @State var ground: Ground    //Singular instance of ground containing data
    var body: some View {
        
        VStack() {               // all the Ground data shown in this view is included in this Vertical Stack.
            
            VStack(alignment: .leading) {  // This vertical stack shows the Text Field to enter the notes
                Text("Notes:")
                    .fontWeight(.bold)
                    .font(Font.system(size: 20))
                //  text field to enter the notes and the entered text is bounded to ground.notes
                TextField("Enter your notes...", text: $ground.notes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }.frame(width: 350, height: nil)
            
            //shwoing the image of each ground
            Image("\(ground.name)")
        
            // Vertical Stack to show the Ground name and location.
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
                HStack {                    // Horizontal stack to show the capcaity of a ground
                    Text("Capacity:")
                        .fontWeight(.heavy)
                    Text("\(ground.capacity)")
                    }
                HStack {                    // Horizontal stack to show the opening date of a ground
                    Text("Opened:")
                        .fontWeight(.heavy)
                    Text("\(ground.opened)")
                    }
                HStack {                    // Horizontal stack to show the owner of a ground
                    Text("Owner:")
                        .fontWeight(.heavy)
                    Text("\(ground.owner)")
                    }
            }
        }
    }
}


