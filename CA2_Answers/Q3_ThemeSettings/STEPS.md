# Q3 Theme Settings - Storyboard

Screen 1 (ViewController) - Navigation Controller me embed karo
- Image View (Image: paintpalette.fill) - sirf storyboard, code nahi
- Switch -> outlet: themeSwitch, action: themeToggle (UISwitch)
- Segmented Control (Segments = 3: Blue, Red, Green) -> outlet: colorSegment
- Label -> outlet: sizeLabel
- Slider (Min 12, Max 30, Value 17) -> outlet: sizeSlider, action: sizeChanged (UISlider)
- Progress View -> outlet: progressView
- Button "Apply" -> action: applyButton (UIButton)

Screen 2 (SecondVC) - Custom Class = SecondVC
- 3 Labels -> outlets: themeLabel, colorLabel, sizeLabel

Segue: yellow icon -> Screen 2 -> Show, Identifier = toPreview
