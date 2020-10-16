//
//  MyCustomTableViewCell.swift
//  exec_09_28
//
//  Created by Thiago Monteiro on 28/09/20.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet var labelTitle: UILabel?
    @IBOutlet var imageViewPhoto: UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
