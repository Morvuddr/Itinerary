//
//  HeaderTableViewCell.swift
//  Itinerary
//
//  Created by Игорь Бопп on 03/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        titleLabel.font = UIFont(name: Theme.bodyFontNameBold, size: 17)
        subtitleLabel.font = UIFont(name: Theme.bodyFontName, size: 15)
        
    }

    func setup(_ model: DayModel){
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
    }

}
