//
//  ViewController.swift
//  TaskForwordandBackord
//
//  Created by Digvijay Nikam on 04/11/22.
//

import UIKit

class ViewController: UIViewController,BackDatapassing{
    
    
    @IBOutlet weak var firstVCtextfield: UITextField!
    
    @IBOutlet weak var secondVCtextfield: UITextField!
    
    @IBOutlet weak var thirdVCtextField: UITextField!
    
    @IBOutlet weak var firstVClabel: UILabel!
    
    @IBOutlet weak var secondVClabel: UILabel!
    
    @IBOutlet weak var thirdVclabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstVCtextfield.text = ""
        self.secondVCtextfield.text = ""
        self.thirdVCtextField.text = ""
        
    }
    
    @IBAction func firstVCBtn(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        navigationController?.pushViewController(secondVC!, animated: true)
        
        let dataTobepassed1 = self.firstVCtextfield.text
        secondVC?.dataFormfirstVC1 = dataTobepassed1!
        
        
        let dataTobepassed2 = self.secondVCtextfield.text
        secondVC?.dataFormfirstVC2 = dataTobepassed2!
        
        let datatobepassed3 = self.thirdVCtextField.text
        secondVC?.dataFormfirstVc3 = datatobepassed3!
        
        secondVC?.delegate = self
        
        
        
    }
    func passingdatatofirstViewController(textTopass: String,textToPass1 : String,textToPass2 : String) {
        self.firstVClabel.text = textTopass
        self.secondVClabel.text = textToPass1
        self.thirdVclabel.text = textToPass2
    }
    
    
}

