//
//  TripFunctions.swift
//  Itinerary
//
//  Created by Игорь Бопп on 22/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

class TripFunctions {
    
    static func createTrip(_ tripModel: TripModel){
        Data.tripModels.append(tripModel)
    }
    
    static func readTrips(completion: @escaping () -> ()){
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModels.count == 0 {
                Data.tripModels.append(TripModel("Trip to Bali!"))
                Data.tripModels.append(TripModel("Mexico!"))
                Data.tripModels.append(TripModel("Russian Trip!"))
            }
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    static func updateTrip(_ tripModel: TripModel){
        
    }
    
    static func deleteTrip(_ tripModel: TripModel){
        
    }
    
}
