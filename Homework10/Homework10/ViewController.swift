//
//  ViewController.swift
//  Homework10
//
//  Created by Kato on 4/28/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numProducts = 0
    var addPrice = 0
    var addWeight = 0
    
    var nameText = ""
    var numberText = ""
    var priceText = ""
    var weightText = ""
    
    var newSet = Set<String>()
    
    
    @IBOutlet weak var productNameTextField: UITextField!
    
    @IBOutlet weak var numProductsLabel: UILabel!
    
    @IBOutlet weak var numProductsTextField: UITextField!
    
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onAddTapped(_ sender: Any) {
        
        self.nameText = productNameTextField.text!
        self.numberText = numProductsTextField.text!
        self.priceText = priceTextField.text!
        self.weightText = weightTextField.text!
        
        if nameText == "" || numberText == "" || priceText == "" || weightText == "" {
            let alert1 = UIAlertController(title: "Try Again", message: "You must enter information in all fields in order to continue.", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert1, animated: true, completion: nil)
        }
        else {
            
        numProducts += Int(numProductsTextField.text!)!
        numProductsLabel.text! = String(numProducts)
        
        addPrice += Int(numberText)! * Int(priceText)!
        addWeight += Int(numberText)! * Int(weightText)!
            
        newSet.insert(nameText)
        }
    }
    
    
    @IBAction func onCalculateTapped(_ sender: UIButton) {
        
        
        self.nameText = productNameTextField.text!
        self.numberText = numProductsTextField.text!
        self.priceText = priceTextField.text!
        self.weightText = weightTextField.text!
        
        if nameText == "" || numberText == "" || priceText == "" || weightText == "" {
            let alert1 = UIAlertController(title: "Try Again", message: "You must enter information in all fields in order to continue.", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert1, animated: true, completion: nil)
        }
        else {
            
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let infoVC = storyboard.instantiateViewController(withIdentifier: "info_vc")
        
        if let realinfoVC = infoVC as? ProductsViewController {
            realinfoVC.totalPrice = addPrice
            realinfoVC.totalWeight = addWeight
            realinfoVC.finalSet = newSet
        }
        
        //self.navigationController?.pushViewController(infoVC, animated: true)
        
        
        present(infoVC, animated: true, completion: nil)
            
        }
        
    }
    
 
}

