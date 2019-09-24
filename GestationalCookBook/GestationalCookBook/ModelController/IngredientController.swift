//
//  IngredientController.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/15/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import Foundation

class IngredientController {
    
    static let shared = IngredientController()
    
    var ingredients = [Ingredient]()
    
    init() {
        let food1 = Ingredient(text: "Food1", amount: "2 cups")
        let food2 = Ingredient(text: "Food2", amount: "3 tsp")
        
        let ingredients = [food1, food2]
        
        self.ingredients = ingredients
    }
}
