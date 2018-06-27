//
//  Food.swift
//  GainzTracker
//
//  Created by Anes Mehai  on 6/26/18.
//  Copyright © 2018 Anes Mehai . All rights reserved.
//

import Foundation

//every meal has a name and description. Later add nutrient info/calories/macro/micro etc
struct Food {
    
    var name: String
    var description: String
    
    init(name:String, description:String) {
        self.name = name
        self.description = description
    }
   
}
