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
        let yakisobaChicken1 = Ingredient(text: "½ teaspoon sesame oil")
        let yakisobaChicken2 = Ingredient(text: "1 tablespoon canola oil")
        
        let ingredients = [yakisobaChicken1, yakisobaChicken2]
        
        self.ingredients = ingredients
    }
}
