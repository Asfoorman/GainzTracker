//
//  Meal.swift
//  GainzTracker
//
//  Created by Anes Mehai  on 6/26/18.
//  Copyright © 2018 Anes Mehai . All rights reserved.
//

import Foundation

//Every meal has a name and the food item(s) array of Foods
struct Meal {
    
    var name: String
    var food: [Food]

    init(name:String, food:[Food]) {
        self.name = name
        self.food = food
    }
    
    
    
    
}


