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

    
    var doneSaving: (() -> ())?
    var tripIndexToEdit: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)
        
        //Drop shadow on title
        titleLabel.layer.shadowOpacity = 1
        titleLabel.layer.shadowColor = UIColor.white.cgColor
        titleLabel.layer.shadowOffset = CGSize.zero
        titleLabel.layer.shadowRadius = 5
        
        
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func save(_ sender: UIButton) {
        titleTextField.rightViewMode = .never
        
        guard titleTextField.text != "", let newTripName = titleTextField.text else {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
            imageView.image = UIImage(named: "Warning")
            imageView.contentMode = .scaleAspectFit
            titleTextField.rightView = imageView
            titleTextField.rightViewMode = .always
            return
        }
//        if let index = tripIndexToEdit{
//            TripFunctions.updateTrip(at: index, title: newTripName, image: imageView.image)
//        } else {
//            TripFunctions.createTrip(TripModel(newTripName, imageView.image))
//        }
        
        if let doneSaving = doneSaving {
            doneSaving()
        }
        dismiss(animated: true)
    }

}
