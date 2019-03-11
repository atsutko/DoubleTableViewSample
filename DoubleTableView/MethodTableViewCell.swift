//
//  MethodTableViewCell.swift
//  DoubleTableView
//
//  Created by TakaoAtsushi on 2019/03/11.
//  Copyright © 2019 TakaoAtsushi. All rights reserved.
//

import UIKit

class MethodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var methodLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
