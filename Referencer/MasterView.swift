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
            ForEach(groundList.grounds) { i in  // this loop iterate through list of all the grounds
                //destination will take to detailview after clicking on a ground
                NavigationLink (destination: DetailView(ground: i)){
                        RowView(groundRow: i)
                }
            }.onDelete {indices in indices.forEach { self.groundList.grounds.remove(at: $0) }}
        }
    }
}


