//
//  Recipe.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/15/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class Recipe {
    let title: String?
    let directions: String?
    let prepTime: String?
    let cookTime: String?
    let image: UIImage?
    let ingredients: [Ingredient]?
    
    init(title: String?, directions: String?, prepTime: String?, cookTime: String?, image: UIImage?, ingredients: [Ingredient]?) {
        self.title = title
        self.directions = directions
        self.prepTime = prepTime
        self.cookTime = cookTime
        self.image = image
        self.ingredients = ingredients
    }
}
