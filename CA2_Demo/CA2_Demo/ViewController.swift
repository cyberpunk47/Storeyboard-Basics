//
//  ViewController.swift
//  CA2_Demo
//
//  Created by Student on 29/10/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var text: UITextField!
    
    
    @IBAction func secondVCButton(_ sender: Any) {
        performSegue(withIdentifier: "tosecondvc", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondvc = segue.destination as! SecondVC
        secondvc.secondtext = text.text
        
    }
    
}

