//
//  GameCell.swift
//  VideoGamesApp
//
//  Created by User Admin on 8/15/18.
//  Copyright © 2018 Armando D Gonzalez All rights reserved.
//

import UIKit

final class GameCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
}
