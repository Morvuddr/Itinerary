//
//  ActivitiesViewController.swift
//  Itinerary
//
//  Created by Игорь Бопп on 03/03/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class ActivitiesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var addButton: AppButton!
    
    
    var tripId: UUID!
    var tripTitle: String = ""
    var tripModel: TripModel?
    var sectionHeaderHeight: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = tripTitle
        addButton.createFloatingActionButton()
        
        tableView.dataSource = self
        tableView.delegate = self

        TripFunctions.readTrip(by: tripId) { [weak self] (model) in
            guard let self = self else { return }
            self.tripModel = model
            
            guard let model = model else { return }
            
            self.backgroundImageView.image = model.image
            self.tableView.reloadData()
        }
        
        sectionHeaderHeight =  tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier)?.contentView.bounds.height ?? 44
        
    }
    
    @IBAction func addAction(_ sender: AppButton) {
        let alert = UIAlertController(title: "Which would you like to add?", message: nil, preferredStyle: .actionSheet)
        let dayAction = UIAlertAction(title: "Day", style: .default) { (action) in
            let viewController = AddDayViewController.getInstance()
            self.present(viewController, animated: true, completion: nil)
        }
        let activityAction = UIAlertAction(title: "Activity", style: .default) { (action) in
            print("Activity")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(dayAction)
        alert.addAction(activityAction)
        alert.addAction(cancelAction)
        alert.popoverPresentationController?.sourceView = addButton
        alert.popoverPresentationController?.sourceRect = CGRect(x: 0, y: -3, width: addButton.bounds.width, height: addButton.bounds.height)
        present(alert, animated: true, completion: nil)
        
    }
    
    
}


extension ActivitiesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tripModel?.dayModels[section].activityModels.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = tripModel?.dayModels[indexPath.section].activityModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: ActivityTableViewCell.identifier) as! ActivityTableViewCell
        
        cell.setup(model!)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tripModel?.dayModels.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let dayModel = tripModel?.dayModels[section]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier) as! HeaderTableViewCell
        cell.setup(dayModel!)
        
        return cell.contentView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return sectionHeaderHeight
    }
    
}

