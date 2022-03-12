//
//  SecondViewController.swift
//  Segue
//
//  Created by Bhumika Hirapara on 2/15/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name: \(username)"
    }
    


}
