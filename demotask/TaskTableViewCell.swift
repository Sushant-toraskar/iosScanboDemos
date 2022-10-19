//
//  TaskTableViewCell.swift
//  demotask
//
//  Created by Neosoft on 17/10/22.
//

import UIKit



class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet weak var rightImg: UIImageView!
    @IBOutlet weak var leftIMg: UIImageView!
    @IBOutlet weak var originalCell: UIView!
    @IBOutlet weak var MainViewOriginal: UIView!
    
   let sb = UIStoryboard(name: "Main", bundle: nil)
    var delegate : CellDataDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let touch = UITapGestureRecognizer(target: self, action: #selector(handleClick))
        rightImg.layer.cornerRadius = imageView?.frame.height ?? 100/2
        rightImg.layer.borderColor = UIColor.systemBlue.cgColor
        rightImg.layer.borderWidth = 0.5
        originalCell.layer.borderColor = UIColor.black.cgColor
        originalCell.layer.borderWidth = 1
        MainViewOriginal.layer.borderColor = UIColor.black.cgColor
        MainViewOriginal.layer.cornerRadius = MainViewOriginal.frame.height/4
        MainViewOriginal.layer.borderWidth = 1.0
        MainViewOriginal.addGestureRecognizer(touch)
        MainViewOriginal.isUserInteractionEnabled = true
   
    }

    @objc func handleClick() {
        var str = delegate?.handleClickdele()
        
//        let vc = self.sb.instantiateViewController(identifier: "FormViewController") as! FormViewController

        print(str)

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

