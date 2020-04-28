//
//  ProductsViewController.swift
//  Homework10
//
//  Created by Kato on 4/28/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {
    
    var totalWeight: Int = 0
    var totalPrice: Int = 0
    
    var finalSet : Set = [""]

    @IBOutlet weak var totalWeightLabel: UILabel!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    @IBOutlet weak var productNamesLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        totalWeightLabel.text = "ჯამური წონა: \(String(totalWeight)) კგ"
        totalPriceLabel.text = "ჯამური ფასი: \(String(totalPrice)) ლარი"
        productNamesLabel.text = "თქვენ შეიძინეთ: \(finalSet.joined(separator: ", "))"
        
        
        // Do any additional setup after loading the view.
    }
    

}
