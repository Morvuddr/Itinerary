//
//  UIButton.swift
//  Itinerary
//
//  Created by Игорь Бопп on 23/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

extension UIButton {

    func createFloatingActionButton(){
        backgroundColor = Theme.tint
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 0.25
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }

}
