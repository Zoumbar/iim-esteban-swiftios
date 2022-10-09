//
//  AccueilController.swift
//  iim-esteban-swiftios
//
//  Created by Esteban on 08/10/2022.
//

import UIKit

class AccueilViewController: UIViewController{
    
    @IBOutlet weak var changeColorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func changeColor(_ sender: UIButton) {
        
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())

        self.view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
    }
    
    
    
    
}
