//
//  AddTripViewController.swift
//  Itinerary
//
//  Created by Игорь Бопп on 23/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripTextField: UITextField!
    
    var doneSaving: (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)

        
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func save(_ sender: UIButton) {
        
        TripFunctions.createTrip(TripModel(tripTextField.text!))
        
        if let doneSaving = doneSaving {
            doneSaving()
        }
        dismiss(animated: true)
    }
    
    
}
