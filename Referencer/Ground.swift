//
//  Ground.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 19/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

// Class Ground to have properties of a ground and an initializer
import SwiftUI

class Ground: ObservableObject {
    @Published var name: String
    @Published var location: String
    @Published var capacity: String
    @Published var opened: String
    @Published var owner: String
    @Published var notes: String
    
    // initilizer of the Ground class. 
    init(_ groundName: String, _ groundLocation: String, _ groundCapacity: String, _ groundOpened: String, _ groundOwner: String, _ groundNotes: String) {
        name = groundName
        location = groundLocation
        capacity = groundCapacity
        opened = groundOpened
        owner = groundOwner
        notes = groundNotes
        
    }
}
