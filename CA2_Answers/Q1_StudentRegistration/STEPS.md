# Q1 Student Registration - Storyboard

Screen 1 (ViewController) - Navigation Controller me embed karo
- Image View (Image: person.circle.fill) - sirf storyboard, code nahi
- 3 Text Field -> outlets: nameTextField, rollNumberTextfield, emailTextField
  (Keyboard Type Attributes Inspector se: Roll = Number Pad, Email = Email Address)
- Switch -> action: themeToggle (UISwitch)
- Progress View -> outlet: progressView
- Button "Register" -> action: registerButton (UIButton)

Screen 2 (SecondVC) - Custom Class = SecondVC
- 3 Labels -> outlets: nameLabel, rollLabel, emailLabel

Segue: yellow icon -> Screen 2 -> Show, Identifier = toDetails
