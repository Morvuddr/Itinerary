//
//  AddDayViewController.swift
//  Itinerary
//
//  Created by Игорь Бопп on 06/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class AddDayViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subtitleTextField: UITextField!

    
    var doneSaving: ((DayModel) -> ())?
    var tripIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)

    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func save(_ sender: UIButton) {
        
        guard titleTextField.hasValue, let newDayName = titleTextField.text else {
            return
        }
        
        let dayModel = DayModel(newDayName, subtitleTextField.text ?? "", nil)
        DayFunctions.createDay(at: tripIndex, using: dayModel)
        
//        if let index = tripIndexToEdit{
//            TripFunctions.updateTrip(at: index, title: newTripName, image: imageView.image)
//        } else {
//            TripFunctions.createTrip(TripModel(newTripName, imageView.image))
//        }
        
        if let doneSaving = doneSaving {
            doneSaving(dayModel)
        }
        dismiss(animated: true)
    }

}
