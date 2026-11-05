//
//  ViewController.swift
//  Q2 Calculator - Screen 1
//

import UIKit

class ViewController: UIViewController {

    var result = 0.0
    var operation = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var firstTextField: UITextField!

    @IBOutlet weak var secondTextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var progressView: UIProgressView!

    @IBAction func themeToggle(_ sender: UISwitch) {
        overrideUserInterfaceStyle = sender.isOn ? .dark : .light
    }

    @IBAction func addButton(_ sender: UIButton) {
        let a = Double(firstTextField.text ?? "") ?? 0
        let b = Double(secondTextField.text ?? "") ?? 0
        result = a + b
        operation = "+"
        resultLabel.text = "Result: \(result)"
        progressView.progress = 1.0
    }

    @IBAction func subtractButton(_ sender: UIButton) {
        let a = Double(firstTextField.text ?? "") ?? 0
        let b = Double(secondTextField.text ?? "") ?? 0
        result = a - b
        operation = "-"
        resultLabel.text = "Result: \(result)"
        progressView.progress = 1.0
    }

    @IBAction func multiplyButton(_ sender: UIButton) {
        let a = Double(firstTextField.text ?? "") ?? 0
        let b = Double(secondTextField.text ?? "") ?? 0
        result = a * b
        operation = "×"
        resultLabel.text = "Result: \(result)"
        progressView.progress = 1.0
    }

    @IBAction func divideButton(_ sender: UIButton) {
        let a = Double(firstTextField.text ?? "") ?? 0
        let b = Double(secondTextField.text ?? "") ?? 0
        result = a / b
        operation = "÷"
        resultLabel.text = "Result: \(result)"
        progressView.progress = 1.0
    }

    @IBAction func operationSheet(_ sender: UIButton) {
        let sheet = UIAlertController(title: "Operation", message: "Select Operation", preferredStyle: .actionSheet)

        sheet.addAction(UIAlertAction(title: "Add", style: .default) { _ in
            self.addButton(sender)
        })
        sheet.addAction(UIAlertAction(title: "Subtract", style: .default) { _ in
            self.subtractButton(sender)
        })
        sheet.addAction(UIAlertAction(title: "Multiply", style: .default) { _ in
            self.multiplyButton(sender)
        })
        sheet.addAction(UIAlertAction(title: "Divide", style: .default) { _ in
            self.divideButton(sender)
        })
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))

        present(sheet, animated: true)
    }

    @IBAction func showResult(_ sender: UIButton) {
        let alert = UIAlertController(title: "Result", message: "Answer is \(result)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            self.performSegue(withIdentifier: "toResult", sender: nil)
        })
        present(alert, animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondVC {
            vc.first2 = firstTextField.text
            vc.second2 = secondTextField.text
            vc.operation2 = operation
            vc.result2 = result
        }
    }
}
