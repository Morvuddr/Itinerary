//
//  TripModel.swift
//  Itinerary
//
//  Created by Игорь Бопп on 22/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class TripModel {
    let id: UUID
    var title: String
    var image: UIImage?
    
    init(_ title: String, _ image: UIImage? = nil) {
        id = UUID()
        self.title = title
        self.image = image
    }
    
}
