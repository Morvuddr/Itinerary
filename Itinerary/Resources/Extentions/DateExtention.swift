//
//  DateExtention.swift
//  Itinerary
//
//  Created by Игорь Бопп on 08/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import Foundation

extension Date {
    func add(days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: Date())!
    }
}
