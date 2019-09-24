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

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeTVCell else { return UITableViewCell() }

        let recipe = RecipeController.shared.recipes[indexPath.row]
        
        cell.recipe = recipe

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToIngredientTVC" {
            guard let index = tableView.indexPathForSelectedRow, let destination = segue.destination as? RecipeVC else { return }
            let recipe = RecipeController.shared.recipes[index.row]
            destination.recipe = recipe
        }
    }
    

}
