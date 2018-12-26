//
//  CommandCell.swift
//  MyTracker MessagesExtension
//
//  Created by Vitalii Obertynskyi on 6/1/18.
//  Copyright © 2018 miraving. All rights reserved.
//

import UIKit

class CommandCell: UICollectionViewCell {
    
    @IBOutlet weak var commandLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        commandLabel.clipsToBounds = true
        commandLabel.layer.cornerRadius = 8;
    }
}
