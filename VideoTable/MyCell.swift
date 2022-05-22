//
//  MyCell.swift
//  VideoTable
//
//  Created by Danil Ryumin on 22.05.2022.
//

import UIKit
import AVKit

class MyCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
