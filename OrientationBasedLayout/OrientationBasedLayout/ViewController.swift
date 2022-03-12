//
//  ViewController.swift
//  OrientationBasedLayout
//
//  Created by Bhumika Hirapara on 2/5/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    Sign In -> trailing and vertical spacing to upper textfield
//    |(view) -> height, width, horozontal spacing to sign in and vertically in container with sign in
//    Create account -> horizontal spacing to |view and vertically in container to |view.
    
//    Instead of making fixed height of view and imageview, make a height with its superview(proportion view) so that in small size iPhone everything looks good
    
//    Delete LoginView height -> from Loginview to superview(equal height) -> multiplier- 1:2
    
//    Delete fixed width of usernameTextfield - textfield to loginview(equal width) -> multiplier -> 2:3
    
//    Delete the height of the imageview -> from imageview to superview(equal height) -> multiplier - 1:2.5
    
//    Delete bottom constraint of imageview -> from imageview to loginview(vertical spacing) -> constant 0(I set 20)
}

