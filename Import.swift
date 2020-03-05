//
//  Import.swift
//  realApp
//
//  Created by Robert Underwood on 1/24/20.
//  Copyright © 2020 Robert Underwood. All rights reserved.
//

import Foundation
import SwiftUI

struct Room : Identifiable{

    var id = UUID()
    var name: String
    var x: String
    var capacity: Int
    var isheld: Bool = false
    
    var imageName: String {return name}
    var thumbnailName: String {return  name + "Thumb"}

    }
   

let Company = [

    Room(name: "ConocoPhillips", x:"hello", capacity: 124),
    Room(name: "Exxon",x:"hello",  capacity: 214),
    Room(name: "Paycom",x:"hello",  capacity: 216),
    Room(name: "MBA Program",x:"hello",  capacity: 117),
    Room(name: "Oneok",x:"hello",  capacity: 124),
    Room(name: "PWC",x:"hello",  capacity: 124),


]

