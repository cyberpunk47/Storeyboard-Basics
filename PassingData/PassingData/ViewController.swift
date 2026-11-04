//
//  ViewController.swift
//  PassingData
//
//  Created by Student on 04/11/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var rollNumberTextfield: UITextField!
    
    @IBOutlet weak var marksSlider: UISlider!
    
    @IBOutlet weak var marksLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func marksSliderChanged(_ sender: UISlider) {
        marksLabel.text = "Marks : \(Int(sender.value))"
        progressView.progress = sender.value/100.0
    }
    
    @IBAction func themeToggle(_ sender: UISwitch) {
        overrideUserInterfaceStyle = sender.isOn ? .dark : .light
        
    }
    
    @IBAction func buttonSubmit(_ sender: UIButton) {
        let alert = UIAlertController(title: "Submit", message: "Choose Submit Type", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Submit data", style: .default) { _ in
            self.performSegue(withIdentifier: "successsegue", sender: nil)
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in
            self.performSegue(withIdentifier: "cancelsegue", sender: nil)
        })
        
        present(alert, animated: true)
        
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let vc = segue.destination as? SecondVC{
             vc.StudentName2 = nameTextField.text
             vc.StudentRoll2 = rollNumberTextfield.text
             vc.marks2 = Int(marksSlider.value)
         }
            
    }
    
}



