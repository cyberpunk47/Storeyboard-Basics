# Q2 Calculator - Storyboard

Screen 1 (ViewController) - Navigation Controller me embed karo
- 2 Text Field -> outlets: firstTextField, secondTextField (Keyboard Type: Decimal Pad)
- 4 Buttons + - x / -> actions: addButton, subtractButton, multiplyButton, divideButton (UIButton)
- Label -> outlet: resultLabel
- Button "Choose Operation" -> action: operationSheet (UIButton)
- Progress View -> outlet: progressView
- Switch -> action: themeToggle (UISwitch)
- Button "Show Result" -> action: showResult (UIButton)

Screen 2 (SecondVC) - Custom Class = SecondVC
- 4 Labels -> outlets: firstLabel, secondLabel, operationLabel, resultLabel

Segue: yellow icon -> Screen 2 -> Show, Identifier = toResult
