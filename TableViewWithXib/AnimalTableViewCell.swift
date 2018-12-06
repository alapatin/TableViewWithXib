//
//  AnimalTableViewCell.swift
//  TableViewWithXib
//
//  Created by macbook air on 06/12/2018.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        picture.center.y = view.center.y
//        name.frame = CGRect(x: 96, y: view.center.y,
//                            width: 200, height: 64)
//
//        picture.frame = CGRect(x: 16, y: view.center.y,
//                               width: 64, height: 64)
        picture.layer.cornerRadius = 32
        picture.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
