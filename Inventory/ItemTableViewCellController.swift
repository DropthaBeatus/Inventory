//
//  ItemTableViewCellController.swift
//  Inventory
//
//  Created by Liam Flaherty on 11/30/18.
//  Copyright © 2018 Liam Flaherty. All rights reserved.
//

import UIKit

class ItemTableViewCellController: UITableViewCell {

    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemQuantity: UILabel!
    
    @IBOutlet weak var itemPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
