//
//  MHHeaderView.swift
//  MapHabit
//
//  Created by Dhananjaya Somanna on 10/15/18.
//  Copyright © 2018 Dhananjaya Somanna. All rights reserved.
//

import UIKit

class MHHeaderView: UITableViewCell {

    @IBOutlet weak var headerIMageView: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
