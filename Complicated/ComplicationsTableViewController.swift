//
//  ComplicationsTableViewController.swift
//  Complicated
//
//  Created by Jeff Hokit on 5/11/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import UIKit

class ComplicationsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "complicationCell", for: indexPath)

        // Configure the cell...
        if let complicationCell = cell as? ComplicationTableViewCell
        {
            let theComplication = Complications.sharedInstance.complications[indexPath.row]
            complicationCell.nameLabel.text = theComplication.familyName
//            complicationCell.abbreviationLabel.text = theComplication.abbreviation
            complicationCell.thumbnailView.image = theComplication.image
        }
        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let complication = Complications.sharedInstance.complications[indexPath.row]
                let controller = segue.destination as! DetailViewController
                controller.complication = complication
            }
        }
        
    }

}
