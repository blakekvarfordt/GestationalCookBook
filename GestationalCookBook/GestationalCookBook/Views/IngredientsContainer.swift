//
//  IngredientsContainer.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/24/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

protocol IngredientsContainerDataSource: class {
    var recipe: Recipe? { get }
}

class IngredientsContainer: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var ingredientsTableView: UITableView!
    
    weak var dataSource: IngredientsContainerDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientsTableView.dataSource = self
        ingredientsTableView.delegate = self
    }

    // MARK: - Table view data source
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let ingredients = dataSource?.recipe?.ingredients else { return 0}
        return ingredients.count
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell", for: indexPath)

        guard let ingredients = dataSource?.recipe?.ingredients else { return UITableViewCell() }
        
        let ingredient = ingredients[indexPath.row]
        cell.textLabel?.text = ingredient.text

        return cell
    }
 

}
