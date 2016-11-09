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
        
        view.backgroundColor = .yellow
        
        let box = UIView()
        box.backgroundColor = .cyan
        
        let header = UIImageView()
        header.image = UIImage(named: "fractal")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "CABJ")
        logo.contentMode = .scaleAspectFit
        
        let button = UIButton()
        button.setTitle("Go To TableView", for: .normal)
        button.backgroundColor = .red
        
        view.addSubview(box)
        view.addSubview(header)
        view.addSubview(logo)
        view.addSubview(button)
        
        constrain(view, box) { view, box in
            box.top == topLayoutGuideCartography + 10
            box.right == view.right - 10
            box.bottom == view.bottom - 10
            box.left == view.left + 10
        }
        
        constrain(box, header) { box, header in
            header.height == box.height / 4
            header.top == box.top
            header.right == box.right
            header.left == box.left
        }
        
        constrain(header, logo) { header, logo in
            logo.height == header.height
            logo.center == header.center
        }
        
        constrain(box, button) { box, button in
            button.height == 50
            button.right == box.right
            button.bottom == box.bottom
            button.left == box.left
        }
        
        button.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
    }
    
    func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }

}
