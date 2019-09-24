//
//  RecipeTVC.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/15/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class RecipeTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecipeController.shared.recipes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)

        let recipe = RecipeController.shared.recipes[indexPath.row]
        
        cell.textLabel?.text = recipe.title

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToIngredientTVC" {
            guard let index = tableView.indexPathForSelectedRow, let destination = segue.destination as? IngredientTVC else { return }
            let recipe = RecipeController.shared.recipes[index.row]
            destination.recipe = recipe
        }
    }
    

}
