//
//  ContentView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 3/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import SwiftUI


// content view to display the Navigation bar with the title. 
struct ContentView: View {
    @ObservedObject var groundList: GroundList
    var body: some View {
       NavigationView {
        MasterView(groundList: groundList)
            .navigationBarTitle("Sports Grounds List")
            .navigationBarItems(leading: EditButton(),
            trailing: Button(
                action: {
                    withAnimation { self.groundList.grounds.append(Ground("Ground Image...","Ground Name...", "Ground Location...","","","","" )) }
                }
                
                ) { Image(systemName: "plus") }
            )
       }
    }
    
    //   withAnimation { self.viewModel.grounds.append(Ground()) }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(groundList: GroundList())
    }
}


