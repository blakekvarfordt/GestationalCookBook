//
//  RecipeTVCell.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/23/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class RecipeTVCell: UITableViewCell {

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    
    
    var recipe: Recipe? {
        didSet {
            setupViews()
        }
    }
    
    func setupViews() {
        guard let recipe = recipe else { return }
        recipeImageView.image = recipe.image
        recipeTitleLabel.text = recipe.title
        
    }

}
