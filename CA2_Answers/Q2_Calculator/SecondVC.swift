//
//  SecondVC.swift
//  Q2 Calculator - Screen 2
//

import UIKit

class SecondVC: UIViewController {

    var first2 : String?
    var second2 : String?
    var operation2 : String?
    var result2 : Double?

    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var operationLabel: UILabel!

    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstLabel.text = "First Number: \(first2 ?? " ")"
        secondLabel.text = "Second Number: \(second2 ?? " ")"
        operationLabel.text = "Operation: \(operation2 ?? " ")"
        resultLabel.text = "Result: \(result2 ?? 0)"
    }
}
