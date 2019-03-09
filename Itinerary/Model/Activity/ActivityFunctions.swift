//
//  ActivityFunctions.swift
//  Itinerary
//
//  Created by Игорь Бопп on 09/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

class ActivityFunctions {
    
    static func createActivity(at tripIndex: Int, for dayIndex: Int, using activityModel: ActivityModel) {
        
        Data.tripModels[tripIndex].dayModels[dayIndex].activityModels.append(activityModel)
        
    }
    
}
