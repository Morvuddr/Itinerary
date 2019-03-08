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
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var subtitleTextField: UITextField!

    
    var doneSaving: ((DayModel) -> ())?
    var tripIndex: Int!
    var tripModel: TripModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)

    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func save(_ sender: UIButton) {
        
        if alreadyExists(datePicker.date) {
            let alert = UIAlertController(title: "Day Already Exists", message: "Choose another day", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            return
        }
        
        let dayModel = DayModel(datePicker.date, subtitleTextField.text ?? "", nil)
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
    
    func alreadyExists(_ date: Date) -> Bool {
        if tripModel.dayModels.contains(where: { (dayModel) -> Bool in
            return dayModel.title.mediumDate() == date.mediumDate()
        }) {
            return true
        }
        return false
    }
    
    @IBAction func done(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
}
