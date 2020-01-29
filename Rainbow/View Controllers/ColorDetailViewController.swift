//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Kendra McVay on 1/28/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
// unwraps the optional declared
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
        
        
    }
    
}
