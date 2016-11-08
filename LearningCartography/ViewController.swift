//
//  ViewController.swift
//  LearningCartography
//
//  Created by Matías Elorriaga on 8/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import Cartography

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Learning Cartography"
        
        view.backgroundColor = UIColor.yellow
        
        let box = UIView()
        view.addSubview(box)
        
        box.backgroundColor = UIColor.cyan
        constrain(view, box) { view, box in
            box.top == topLayoutGuideCartography + 10
            box.left == view.left + 10
            box.right == view.right - 10
            box.bottom == view.bottom - 10
        }
        
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = UIColor.red
        view.addSubview(button)
        
        constrain(box, button) { box, button in
            button.height == 50
            button.bottom == box.bottom
            button.left == box.left
            button.right == box.right
        }
        
        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
    }
    
    func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }

}
