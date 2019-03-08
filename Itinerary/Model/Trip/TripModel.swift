//
//  TripModel.swift
//  Itinerary
//
//  Created by Игорь Бопп on 22/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

struct TripModel {
    let id: UUID
    var title: String
    var image: UIImage?
    var dayModels = [DayModel]() {
        didSet {
            dayModels = dayModels.sorted(by: < )
        }
    }
    
    init(_ title: String, _ image: UIImage? = nil, _ dayModels: [DayModel]? = nil) {
        id = UUID()
        self.title = title
        self.image = image
        
        if let dayModels = dayModels {
            self.dayModels = dayModels
        }
        
    }
    
}
