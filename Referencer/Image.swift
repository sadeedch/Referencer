//
//  Image.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 6/4/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

func downloadedImage (_ img: String)-> Image {

guard let imageURL = URL(string:
    img)
    else {
        //print ("Invalid URL")
        return (Image("default"))
}


guard let imageData = try? Data(contentsOf: imageURL)
    else {
    fatalError("Could not download the image")
}

    guard let uiImage = UIImage(data: imageData) else {
        fatalError("Downloaded data do not contain an image")
    }
    
let downloadedImage = Image(uiImage: uiImage)
    
    return downloadedImage
}
