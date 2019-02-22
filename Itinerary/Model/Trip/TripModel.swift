//
//  TripModel.swift
//  Itinerary
//
//  Created by Игорь Бопп on 22/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

class TripModel {
    var id: String!
    var title: String!
    
    init(_ title: String) {
        id = UUID().uuidString
        self.title = title
    }
    
}
