//
//  TableViewCellController.swift
//  TableViewDemo2
//
//  Created by Vincent Salinas on 5/22/22.
//

import UIKit

class TableViewCellController: UITableViewCell {

    @IBOutlet weak var tableViewCellImage: UIImageView!
    @IBOutlet weak var tableViewCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
