//
//  TripsTableViewCell.swift
//  Itinerary
//
//  Created by Игорь Бопп on 22/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardView.addShadowAndRoundedCorners()
        cardView.backgroundColor = Theme.accent
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 35)
        titleLabel.textColor = Theme.tint
    }
    
    func setup(_ tripModel: TripModel){
        titleLabel.text = tripModel.title
    }


}

