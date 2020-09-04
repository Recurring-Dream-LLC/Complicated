//
//  ComplicationTableViewCell.swift
//  Complicated
//
//  Created by Jeff Hokit on 5/11/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import UIKit

class ComplicationTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var thumbnailView: UIImageView!
    @IBOutlet weak var abbreviationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
