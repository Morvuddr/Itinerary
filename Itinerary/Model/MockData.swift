//
//  MockData.swift
//  Itinerary
//
//  Created by Игорь Бопп on 03/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

class MockData {
    
    static func createMockTripModelData() -> [TripModel] {
        var mockTrips = [TripModel]()
        mockTrips.append(TripModel("Trip to Bali!", nil, createmockDayModelData()))
        mockTrips.append(TripModel( "Mexico"))
        mockTrips.append(TripModel( "Russian Trip"))
        return mockTrips
    }
    
    static func createmockDayModelData() -> [DayModel] {
        var dayModels = [DayModel]()
        dayModels.append(DayModel( Date().add(days: 1),"Departure", createMockActivityModelData( "April 18")))
        dayModels.append(DayModel( Date().add(days: 2),"Exploring", createMockActivityModelData( "April 19")))
        dayModels.append(DayModel( Date().add(days: 3),"Scuba Diving!", createMockActivityModelData( "April 20")))
        dayModels.append(DayModel( Date().add(days: 4),"Volunteering", createMockActivityModelData( "April 21")))
        dayModels.append(DayModel( Date().add(days: 5),"Time to go back home", createMockActivityModelData( "April 22")))
        return dayModels
    }
    static func createMockActivityModelData(_ sectionTitle: String) -> [ActivityModel] {
        var models = [ActivityModel]()
        switch sectionTitle {
        case "April 18":
            models.append(ActivityModel( "SLC",  "12:25 - 13:45", ActivityType.flight))
            models.append(ActivityModel( "LAX",  "17:00 - 11:00", ActivityType.flight))
        case "April 19":
            models.append(ActivityModel( "DPS",  "", ActivityType.flight))
            models.append(ActivityModel( "Bintang Kuta Hotel Checkin",  "Confirmation: AX76Y2", ActivityType.hotel))
            models.append(ActivityModel( "Pick up rental",  "Confirmation: 996464", ActivityType.auto))
            models.append(ActivityModel( "Island Excusion",  "Touring the island", ActivityType.excursion))
            models.append(ActivityModel( "Dinner",  "at Warung Sanur Segar", ActivityType.food))
        case "April 20":
            models.append(ActivityModel( "Scuba Diving",  "Checking out the Reefs!", ActivityType.excursion))
            models.append(ActivityModel( "Dinner",  "at Malaika Secret Moksha", ActivityType.food))
        case "April 21":
            models.append(ActivityModel( "Travel",  "to Nusa Penida", ActivityType.flight))
            models.append(ActivityModel( "Volunteering",  "at Tanglad Village", ActivityType.excursion))
            models.append(ActivityModel( "Dinner",  "at Warung Made", ActivityType.food))
            models.append(ActivityModel( "Travel",  "back to Denpasar", ActivityType.flight))
        case "April 22":
            models.append(ActivityModel( "Hotel Checkout",  "from Bintang Kuta Hotel", ActivityType.hotel))
            models.append(ActivityModel( "DPS",  "Denpasar", ActivityType.flight))
            models.append(ActivityModel( "LAX",  "Los Angeles", ActivityType.flight))
            models.append(ActivityModel( "SLC",  "Salt Lake City", ActivityType.flight))
        default:
            models.append(ActivityModel( "",  "", ActivityType.excursion))
        }
        return models
    }
}
