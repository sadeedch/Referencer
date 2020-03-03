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
            Image("gabba")
            .resizable()
            .scaledToFit()
            .frame(width: 400.0,height:400)
                
                
            Text("The Gabba Stadium")
                .font(.largeTitle)
                .bold()
            
            
                Text("Capacity:")
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
