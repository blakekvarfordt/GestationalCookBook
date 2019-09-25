//
//  RecipeVC.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/23/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController {
    
    
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var numberOfLikesLabel: UILabel!
    @IBOutlet weak var funTextLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    
    var recipe: Recipe? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
    
    func setupViews() {
        guard let recipe = recipe else { return }
        recipeImageView.image = recipe.image
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toIngredientsDIrections" {
            guard let recipe = recipe, let destination = segue.destination as? IngredientsDirectionsTVC else { return }
            destination.recipe = recipe
        }
    }
    

}
