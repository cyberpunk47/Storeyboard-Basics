//
//  SecondVC.swift
//  Q1 Student Registration - Screen 2
//

import UIKit

class SecondVC: UIViewController {

    var name2 : String?
    var roll2 : String?
    var email2 : String?

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var rollLabel: UILabel!

    @IBOutlet weak var emailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name: \(name2 ?? " ")"
        rollLabel.text = "Roll Number: \(roll2 ?? " ")"
        emailLabel.text = "Email: \(email2 ?? " ")"
    }
}
