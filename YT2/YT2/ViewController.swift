//
//  ViewController.swift
//  YT2
//
//  Created by Student on 22/10/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var IntensityLabel: UILabel!
    
    @IBOutlet weak var ProgressView: UIProgressView!
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        IntensityLabel.text = "Intensity:  \(Int(sender.value))%"
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Workout", message: "Start Workout now", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Start", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        let sheet = UIAlertController(title: "Select Workout", message: nil, preferredStyle: .actionSheet)
        sheet.addAction(UIAlertAction(title: "Running", style: .default))
        sheet.addAction(UIAlertAction(title: "Cycling", style: .default))
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        sheet.popoverPresentationController?.sourceView = sender
        present(sheet, animated: true)
    }
    
    @IBAction func updateProgress(_ sender: UIButton) {
        ProgressView.progress += 0.25
        if ProgressView.progress >= 1.0{
            let alert = UIAlertController(title: "Goal reached !!", message: "Workout Comleted", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Awesome", style: .default))
            present(alert, animated: true)
            ProgressView.progress = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

