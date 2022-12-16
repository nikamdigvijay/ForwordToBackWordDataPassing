//
//  SecondViewController.swift
//  TaskForwordandBackord
//
//  Created by Digvijay Nikam on 04/11/22.
//

import UIKit
protocol BackDatapassing{
    func passingdatatofirstViewController(textTopass : String,textToPass1 : String,textToPass2 : String)   // backwordstep 1
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondVClabel1: UILabel!
    
    @IBOutlet weak var secondVClabel2: UILabel!
    
    @IBOutlet weak var secondVClabel3: UILabel!
    
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    @IBOutlet weak var textfield3: UITextField!
    
    
    
    
    var dataFormfirstVC1 : String = ""
    var dataFormfirstVC2 : String = ""
    var dataFormfirstVc3 : String = ""
  
    var delegate : BackDatapassing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondVClabel1.text = dataFormfirstVC1
        self.secondVClabel2.text = dataFormfirstVC2
        self.secondVClabel3.text = dataFormfirstVc3
        
    }
    @IBAction func secondVCBtn(_ sender: Any) {
        guard let delegateTosecondViewController = delegate else{
            print("Delegate Not Found")
            return
            
        }
        let nameRetriveToFirstViewController1 = self.textfield1.text
        
        let nameRetriveToFirstViewController2 = self.textfield2.text
        
        let nameRetrivetoFirstViewController3 = self.textfield3.text
        delegateTosecondViewController.passingdatatofirstViewController(textTopass: nameRetriveToFirstViewController1!, textToPass1: nameRetriveToFirstViewController2!, textToPass2: nameRetrivetoFirstViewController3!)
        navigationController?.popViewController(animated: true)
        
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
