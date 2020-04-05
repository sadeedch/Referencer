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
    @ObservedObject var groundList: GroundList
    var body: some View {
        List {
            //ForEach(0..<groundList.grounds.count, id: \.self) { i in
            
            ForEach(0..<groundList.grounds.count, id: \.self) { i in        // this loop iterate through list of all the grounds
                //destination will take to detailview after clicking on a ground
                NavigationLink (destination: DetailView(ground:self.groundList.grounds[i])){
                    HStack{     //This horizontal stack contains the Ground image, Ground name and its location.
                        /* The image is being used form the Assets folder which contains image with the same name
                        as the ground name of a particular ground*/
                        Image("\(self.groundList.grounds[i].name)")
                            .resizable().frame(width: 120, height: 120)
                        Text("\(self.groundList.grounds[i].name)")
                            .bold()
                        Text("\(self.groundList.grounds[i].location)")
                        
                    }
                }
            }.onDelete {indices in
                indices.forEach { self.groundList.grounds.remove(at: $0) }
            }
        }
    }
    
    
    
    
   
}



