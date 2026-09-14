//
//  FirstVC.swift
//  ViewControlller Demo
//
//  Created by Student on 14/09/26.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SecondR(_ sender: UIButton) {
        performSegue(withIdentifier: "secondRoute", sender: nil)
    }
    
    @IBAction func ThirdR(_ sender: UIButton) {
        performSegue(withIdentifier: "thirdRoute", sender: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
