//
//  OtherTableViewCell.swift
//  demotask
//
//  Created by Neosoft on 17/10/22.
//

import UIKit

class OtherTableViewCell: UITableViewCell {

    @IBOutlet weak var MainView: UIView!
    @IBOutlet weak var MainLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        MainView.backgroundColor = .cyan
        MainView.layer.cornerRadius = 15.0
        MainView.layer.borderColor = UIColor.black.cgColor
        MainView.layer.borderWidth = 1.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
