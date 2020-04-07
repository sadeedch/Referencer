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
            /*  leading: EditButton() - specifies the edit button in the navigation bar on the left side
                trailing: Button(action) - specifies the add button in the navigation bar on the right side
                If the user clicks on add button, then it appends the ground array to add a new ground entry which is specified
                in action. */
            .navigationBarItems(leading: EditButton(),
            trailing: Button( action: {
                    withAnimation { self.groundList.grounds.append(Ground("","Ground Name...", "Ground Location...","","","","" )) }
                }) { Image(systemName: "plus") }
            )
        }
    }
}



