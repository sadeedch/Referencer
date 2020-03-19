//
//  MasterView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 19/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//


import SwiftUI

// master view with image name and lcation of grounds
struct MasterView: View {
    var groundList: GroundList
    var body: some View {
        List {
            ForEach(0..<groundList.grounds.count) { i in        // iterating through all the grounds
                NavigationLink (destination: DetailView(ground:     //destination will take to detailview after clicking on a ground
                self.groundList.grounds[i])){
                    HStack{
                       
                        Image("\(self.groundList.grounds[i].name)")
                        .resizable().frame(width: 120, height: 120)
                        Text("\(self.groundList.grounds[i].name)").bold()
                        Text("\(self.groundList.grounds[i].location)")
                        
                    }
                }
            }
        }
    }
}

