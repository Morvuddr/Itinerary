//
//  ActivityTableViewCell.swift
//  Itinerary
//
//  Created by Игорь Бопп on 04/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var activityImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cardView.addShadowAndRoundedCorners()
        cardView.backgroundColor = Theme.accent
        titleLabel.font = UIFont(name: Theme.bodyFontNameDemiBold, size: 17)
        subtitleLabel.font = UIFont(name: Theme.bodyFontName, size: 17)
    }
    
    func setup(_ model: ActivityModel){
        
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
        activityImageView.image = getActivityImage(model.activityType)
        
    }
    
    func getActivityImage(_ activityType: ActivityType) -> UIImage? {
        
        switch activityType {
        case .auto:
            return UIImage(named: "Car")
        case .excursion:
            return UIImage(named: "Excursion")
        case .flight:
            return UIImage(named: "Flight")
        case .food:
            return UIImage(named: "Food")
        case .hotel:
            return UIImage(named: "Hotel")
        }
        
    }
}
