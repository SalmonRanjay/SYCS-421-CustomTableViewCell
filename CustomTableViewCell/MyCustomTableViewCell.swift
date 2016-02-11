//
//  MyCustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Ranjay Salmon on 2/10/16.
//  Copyright © 2016 Ranjay Salmon. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel:UILabel!;
    @IBOutlet weak var addressLabel:UILabel!;
    @IBOutlet weak var numberLabel:UILabel!;
    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
