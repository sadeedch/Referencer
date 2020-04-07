//
//  RowView.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 6/4/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import Foundation

import SwiftUI


struct RowView: View {
    @ObservedObject var groundRow: Ground
    var body: some View {
        
        // This horizontal stack contains the Ground image, Ground name and its location.
           
        HStack {
            (groundRow.image).resizable().frame(width: 120, height: 120)
            Text(self.groundRow.name).bold()
            Text(self.groundRow.location)
        }
           
    }
}
