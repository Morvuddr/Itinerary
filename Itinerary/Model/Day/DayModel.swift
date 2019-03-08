//
//  DayModel.swift
//  Itinerary
//
//  Created by Игорь Бопп on 03/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

struct DayModel {
    
    var id: String!
    var title = Date()
    var subtitle = ""
    var activityModels = [ActivityModel]()
    
    init(_ title: Date, _ subtitle: String, _ data: [ActivityModel]?) {
        id = UUID().uuidString
        self.title = title
        self.subtitle = subtitle
        
        if let data = data {
            self.activityModels = data
        }
    }
    
}


extension DayModel: Comparable {
    static func < (lhs: DayModel, rhs: DayModel) -> Bool {
        return lhs.title < rhs.title
    }
    
    static func == (lhs: DayModel, rhs: DayModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    
}
