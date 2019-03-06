//
//  DayFunctions.swift
//  Itinerary
//
//  Created by Игорь Бопп on 06/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

class DayFunctions {
    
    static func createDay(at tripIndex: Int, using dayModel: DayModel) {
        
        Data.tripModels[tripIndex].dayModels.append(dayModel)
        
    }
    
}
