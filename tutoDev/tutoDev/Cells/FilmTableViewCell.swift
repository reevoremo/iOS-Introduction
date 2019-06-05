//
//  FilmTableViewCell.swift
//  tutoDev
//
//  Created by Behan Remoshan on 02/05/2019.
//  Copyright © 2019 Behan Remoshan. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        //super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = .white
        }
    }

}
