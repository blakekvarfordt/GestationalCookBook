//
//  RecipeController.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/15/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class RecipeController {
    
    static let shared = RecipeController()
    
    var recipes = [Recipe]()
    
    init() {
        let recipe1 = Recipe(title: "Recipe1", directions: "Recipe 1 directions", prepTime: "prep1", cookTime: "cook1", image: nil)
        let recipe2 = Recipe(title: "Recipe2", directions: "Recipe 2 directions", prepTime: "prep2", cookTime: "cook2", image: nil)
        let recipe3 = Recipe(title: "Recipe3", directions: "Recipe 3 directions", prepTime: "prep3", cookTime: "cook3", image: nil)
        let recipe4 = Recipe(title: "Recipe4", directions: "Recipe 4 directions", prepTime: "prep4", cookTime: "cook4", image: nil)
        let recipe5 = Recipe(title: "Recipe5", directions: "Recipe 5 directions", prepTime: "prep5", cookTime: "cook5", image: nil)
        
        let recipes = [recipe1, recipe2, recipe3, recipe4, recipe5]
        
        self.recipes = recipes
    }
}
