//
//  ViewController.swift
//  Q3 Theme Settings - Screen 1
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var themeSwitch: UISwitch!

    @IBOutlet weak var colorSegment: UISegmentedControl!

    @IBOutlet weak var sizeSlider: UISlider!

    @IBOutlet weak var sizeLabel: UILabel!

    @IBOutlet weak var progressView: UIProgressView!

    @IBAction func themeToggle(_ sender: UISwitch) {
        overrideUserInterfaceStyle = sender.isOn ? .dark : .light
    }

    @IBAction func sizeChanged(_ sender: UISlider) {
        sizeLabel.text = "Text Size: \(Int(sender.value))"
    }

    @IBAction func applyButton(_ sender: UIButton) {
        progressView.progress = 0.5

        let sheet = UIAlertController(title: "Apply", message: "Save these settings?", preferredStyle: .actionSheet)

        sheet.addAction(UIAlertAction(title: "Confirm", style: .default) { _ in
            self.progressView.progress = 1.0

            let alert = UIAlertController(title: "Updated", message: "Settings Updated Successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
                self.performSegue(withIdentifier: "toPreview", sender: nil)
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
            vc.isDark2 = themeSwitch.isOn
            vc.color2 = colorSegment.selectedSegmentIndex
            vc.size2 = Int(sizeSlider.value)
        }
    }
}
