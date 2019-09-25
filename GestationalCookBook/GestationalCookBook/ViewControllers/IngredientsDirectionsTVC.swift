//
//  IngredientsDirectionsTVC.swift
//  GestationalCookBook
//
//  Created by Blake kvarfordt on 9/24/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class IngredientsDirectionsTVC: UITableViewController, IngredientsContainerDataSource {

    @IBOutlet weak var directionsLabel: UILabel!
    
    var recipe: Recipe? {
        didSet {
            setupViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    
    func setupViews() {
        loadViewIfNeeded()
        guard let recipe = recipe else { return }
        directionsLabel.text = recipe.directions
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toIngredientsContainer" {
            guard let destination = segue.destination as? IngredientsContainer else { return }
            destination.dataSource = self
        }
    }


}
