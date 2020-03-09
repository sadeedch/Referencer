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
       
       VStack() {
            Image("markhor")
            .resizable()
                .frame(width: 420.0,height:300)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                
                
        Text("Markhoor")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.leading)
        Text("Capra falconeri")
            .font(.subheadline)
            .fontWeight(.light)
            .multilineTextAlignment(.leading)
        .padding(.bottom, 100)
            
            
                Text("Kingdom:")
                    .bold()
                
                Text("City:")
                    .bold()
                Text("Sport:")
                    .bold()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
