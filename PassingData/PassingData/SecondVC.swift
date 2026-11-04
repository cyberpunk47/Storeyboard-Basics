//
//  SecondVC.swift
//  PassingData
//
//  Created by Student on 04/11/26.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        studentName.text = "Name \(StudentName2 ?? " ")"
        rollNumber.text = "Roll Number:  \(StudentRoll2 ?? " ")"
        studentMarks.text = "Marks: \(marks2 ?? 0) /100"
        progressView.progress = 1.0;
        
    }
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var studentName: UILabel!
    
    @IBOutlet weak var rollNumber: UILabel!
    
    @IBOutlet weak var studentMarks: UILabel!
    
    
    var StudentName2 : String?
    
    var StudentRoll2 : String?
    var marks2 : Int?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
