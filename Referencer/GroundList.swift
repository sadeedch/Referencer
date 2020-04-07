//
//  GroundList.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 19/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

//class GroundList extends class Ground by having an array of grounds
import SwiftUI

class GroundList: ObservableObject, Identifiable {
   @Published var grounds: [Ground] = []

}
