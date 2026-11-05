# CA2 Answers (PassingData style)

Har folder me sirf 2 Swift files: ViewController.swift (Screen 1) aur SecondVC.swift (Screen 2)
STEPS.md me storyboard ka kaam: outlets, actions, segue identifier.

Teeno me same pattern:
1. Button -> action sheet (Confirm / Cancel)
2. Confirm -> progressView.progress = 1.0 -> alert -> OK -> performSegue
3. prepare: if let vc = segue.destination as? SecondVC { vc.name2 = nameTextField.text }
4. SecondVC: var name2 : String?  ->  nameLabel.text = "Name: \(name2 ?? " ")"
