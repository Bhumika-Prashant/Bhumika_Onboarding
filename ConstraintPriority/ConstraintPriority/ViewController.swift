//
//  ViewController.swift
//  ConstraintPriority
//
//  Created by Bhumika Hirapara on 2/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paperbackButton: UIButton!
    @IBOutlet weak var iBookButton: UIButton!
    @IBOutlet weak var kindleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    Paperback - leading to safe area, top(vertical spacing to image)
//    iBook - top(center vertically to paperback), horizontal spacing to paperback(constant - standard value(default value))
//    Kindle - trailing to safe area, top(center vertically to paperback), horizontal spacing to iBook(constant - standard value(default value)
    
//    then selct three -> height - 40 and equal widths
    
//    for behavior -> paperback pressed -> two others dismiss
//    Paperback - trailing to safe area (priority - lower to 1000(set to 900))
//    priority 1000 -> constraint has to be satisfied no matter what
//    priority lower than 1000 (900) -> constraint will be satisfied if there are no other constraints with the higher value exist.
    
//    if iBook removed -> Kindle to paperback horizontal spacing, constant - standard value, priority - 900
    
//    if Kindle removed -> iBook to trailing spacing to safe area, constant - 20, priority - 900
    
    
    @IBAction func anyButtontapped(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5) {
            
            switch sender.tag {
            case 0:
                iBookButtonRemoved()
                kindleButtonRemoved()
            case 1:
                kindleButtonRemoved()
            case 2:
                iBookButtonRemoved()
            default:
                break
            }
            self.view.layoutIfNeeded()
        }
        
        func iBookButtonRemoved() {
            if let iBookButton = iBookButton {
                iBookButton.removeFromSuperview()
            }
        }
        
        func kindleButtonRemoved() {
            if let kindleButton = kindleButton {
                kindleButton.removeFromSuperview()
            }
        }
        
    }
        
}

