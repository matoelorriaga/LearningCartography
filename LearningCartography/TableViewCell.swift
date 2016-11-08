//
//  TableViewCell.swift
//  LearningCartography
//
//  Created by Matías Elorriaga on 8/11/16.
//  Copyright © 2016 melorriaga. All rights reserved.
//

import UIKit
import Cartography

class TableViewCell: UITableViewCell {

    let customImageView = UIImageView()
    let customTextLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        customImageView.image = UIImage(named: "CABJ")
        customTextLabel.numberOfLines = 0
        
        contentView.addSubview(customImageView)
        contentView.addSubview(customTextLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        constrain(contentView, customImageView, customTextLabel) { contentView, customImageView, customTextLabel in
            customImageView.width == contentView.width / 4
            customImageView.top == contentView.top + 10
            customImageView.bottom == contentView.bottom - 10
            customImageView.left == contentView.left + 10
            customTextLabel.left == customImageView.right + 10
            customTextLabel.right == contentView.right - 10
            customTextLabel.top == contentView.top
            customTextLabel.bottom == contentView.bottom
        }
    }
}
