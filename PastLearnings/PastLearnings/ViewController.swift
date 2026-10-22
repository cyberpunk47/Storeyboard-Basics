//
//  ViewController.swift
//  PastLearnings
//
//  Created by Student on 19/10/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet  var titleLabel: UILabel!
    
    
    @IBOutlet weak var nametextfield: UITextField!
    
    
    @IBOutlet weak var biotextview: UITextView!
    
    
    @IBOutlet weak var themeswitch: UISwitch!
    
    @IBOutlet weak var durationlable: UILabel!
    
    
    @IBOutlet weak var durationSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func themeSwitchToggle(_ sender: UISwitch) {
        overrideUserInterfaceStyle = sender.isOn ? .dark : .light
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        durationlable.text = "Reading : \(Int(sender.value)) min"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let name = nametextfield.text?.isEmpty == false ? nametextfield.text! : "Friend";
        titleLabel.text = "Saved : \(name)";
    }
    
    
}

