//
//  SecondVC.swift
//  CA2_Demo
//
//  Created by Student on 29/10/26.
//

import UIKit

class SecondVC: UIViewController {

    var secondtext : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = secondtext

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
