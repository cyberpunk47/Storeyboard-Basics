//
//  ViewController.swift
//  Q1 Student Registration - Screen 1
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var rollNumberTextfield: UITextField!

    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var progressView: UIProgressView!

    @IBAction func themeToggle(_ sender: UISwitch) {
        overrideUserInterfaceStyle = sender.isOn ? .dark : .light
    }

    @IBAction func registerButton(_ sender: UIButton) {
        progressView.progress = 0.5

        let sheet = UIAlertController(title: "Register", message: "Confirm Registration?", preferredStyle: .actionSheet)

        sheet.addAction(UIAlertAction(title: "Confirm", style: .default) { _ in
            self.progressView.progress = 1.0

            let alert = UIAlertController(title: "Status", message: "Registration Successful", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
                self.performSegue(withIdentifier: "toDetails", sender: nil)
            })
            self.present(alert, animated: true)
        })

        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in
            self.progressView.progress = 0
        })

        present(sheet, animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondVC {
            vc.name2 = nameTextField.text
            vc.roll2 = rollNumberTextfield.text
            vc.email2 = emailTextField.text
        }
    }
}
