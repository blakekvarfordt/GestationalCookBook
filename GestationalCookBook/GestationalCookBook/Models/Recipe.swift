//
//  Recipe.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/15/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class Recipe {
    let title: String
    let ingredients: [Ingredient]
    let directions: String
    let image: UIImage
    
    init(title: String, ingredients: [Ingredient] = [], directions: String, image: UIImage) {
        self.title = title
        self.ingredients = ingredients
        self.directions = directions
        self.image = image
    }
}
