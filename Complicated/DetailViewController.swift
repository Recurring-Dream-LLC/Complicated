//
//  DetailViewController.swift
//  Complicated
//
//  Created by Jeff Hokit on 5/18/20.
//  Copyright © 2020 Recurring Dream LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet var complicationFamilyLabel: UILabel!
    @IBOutlet var imageProviderLabel: UILabel!
    @IBOutlet var templateLabel: UILabel!
    
    var complication: Complication?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if (complication != nil)
        {
            image.image = complication?.image
            complicationFamilyLabel.text = complication?.complicationFamily
            imageProviderLabel.text = complication?.imageProvider
            templateLabel.text = complication?.template
            self.navigationItem.title = complication?.familyName

        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
