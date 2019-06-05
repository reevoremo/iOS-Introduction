//
//  UserTableViewCell.swift
//  randomuser
//
//  Created by Behan Remoshan on 05/06/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
