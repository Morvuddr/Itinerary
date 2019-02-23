//
//  AppButton.swift
//  Itinerary
//
//  Created by Игорь Бопп on 23/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class AppButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = Theme.tint
        layer.cornerRadius = frame.height / 2
        setTitleColor(UIColor.white, for: .normal)
        
    }

}
