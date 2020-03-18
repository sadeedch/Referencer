//
//  Ground.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 19/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//


class Ground {
    var name: String = ""
    var location: String = ""
    var capacity: Int
    var opened: String = ""
    var owner: String = ""
    
    
    init(_ groundName: String, _ groundLocation: String, _ groundCapacity: Int, _ groundOpened: String, _ groundOwner: String) {
        name = groundName
        location = groundLocation
        capacity = groundCapacity
        opened = groundOpened
        owner = groundOwner
    }
}
