//
//  ViewController.swift
//  Segue
//
//  Created by Bhumika Hirapara on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    
//    Whenever you embed in Navigation controller then you automatically get Navigation Bar and Back button when you connect any new controller with Segue
//    Segue - from UIElements(segue from buttons) is not good idea and instead
//    Segue - from ViewController is better to connect and you have to give segueIdentifier here

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {   // called after the controller's view is loaded into the memory
        super.viewDidLoad()
        print("viewDidLoad called")
        
//        nameTextField.text = "" // if I go back from VC2 -> textfield should become empty but I cannot do that here in viewDidLoad because it gets called only once when the app gets launched
    }

    override func viewWillAppear(_ animated: Bool) {    // notifies the view controller that its view is about to be added to a view hierarchy
        print("viewWillappear called")
        nameTextField.text = "" // I can do it here in viewWillAppear
    }
    
    override func viewDidAppear(_ animated: Bool) { // notifies the view controller that its view was added to a view hierarchy
        print("viewDidAppear called")
    }
    
    override func viewWillDisappear(_ animated: Bool) { // notifies the view controller that its view is about to be removed from view hierarchy
        print("viewWillDisappear called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {    // notifies the view controller that its view was removed from view hierarchy
        print("viewDidDisappear called")
    }

    @IBAction func nextButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.username = nameTextField.text!
        }
    }
}

