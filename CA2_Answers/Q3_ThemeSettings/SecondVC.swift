//
//  SecondVC.swift
//  Q3 Theme Settings - Screen 2
//

import UIKit

class SecondVC: UIViewController {

    var isDark2 : Bool?
    var color2 : Int?
    var size2 : Int?

    @IBOutlet weak var themeLabel: UILabel!

    @IBOutlet weak var colorLabel: UILabel!

    @IBOutlet weak var sizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        themeLabel.text = isDark2 == true ? "Theme: Dark" : "Theme: Light"

        if color2 == 0 {
            colorLabel.text = "Accent Color: Blue"
        } else if color2 == 1 {
            colorLabel.text = "Accent Color: Red"
        } else {
            colorLabel.text = "Accent Color: Green"
        }

        sizeLabel.text = "Text Size: \(size2 ?? 0)"
    }
}
