//
//  PopupUIView.swift
//  Itinerary
//
//  Created by Игорь Бопп on 23/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class PopupUIView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addShadowAndRoundedCorners()
        backgroundColor = Theme.backgroung
        
    }

}
