//
//  VGCompanyCell.swift
//  VideoGamesApp
//
//  Created by Armando D Gonzalez on 8/1/18.
//  Copyright © 2018 Armando D Gonzalez All rights reserved.
//

import UIKit

final class VGCompanyCell: UITableViewCell {
    
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupFonts()
        self.selectionStyle = .none
    }
    
    private func setupFonts() {
        let fontName = "HelveticaNeue-Regular"
        let fontSize: CGFloat = 40.0
        self.titleLabel.font = UIFont(name: fontName, size: fontSize)
        self.descriptionLabel.font = UIFont(name: fontName, size: fontSize)
    }
}
