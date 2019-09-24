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
        let recipe1 = Recipe(title: "Yakisoba Chicken", directions: "Step 1In a large skillet combine sesame oil, canola oil and chili paste; stir-fry 30 seconds. Add garlic and stir fry an additional 30 seconds. Add chicken and 1/4 cup of the soy sauce and stir fry until chicken is no longer pink, about 5 minutes. Remove mixture from pan, set aside, and keep warm. Step 2In the emptied pan combine the onion, cabbage, and carrots. Stir-fry until cabbage begins to wilt, 2 to 3 minutes. Stir in the remaining soy sauce, cooked noodles, and the chicken mixture to pan and mix to blend. Serve and enjoy!", prepTime: "prep1", cookTime: "cook1", image: UIImage(named: "yakisobaChicken"))
        let recipe2 = Recipe(title: "Recipe2", directions: "Recipe 2 directions", prepTime: "prep2", cookTime: "cook2", image: nil)
        let recipe3 = Recipe(title: "Recipe3", directions: "Recipe 3 directions", prepTime: "prep3", cookTime: "cook3", image: nil)
        let recipe4 = Recipe(title: "Recipe4", directions: "Recipe 4 directions", prepTime: "prep4", cookTime: "cook4", image: nil)
        let recipe5 = Recipe(title: "Recipe5", directions: "Recipe 5 directions", prepTime: "prep5", cookTime: "cook5", image: nil)
        
        let recipes = [recipe1, recipe2, recipe3, recipe4, recipe5]
        
        self.recipes = recipes
    }
}
