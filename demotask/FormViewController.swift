//
//  FormViewController.swift
//  demotask
//
//  Created by Neosoft on 18/10/22.
//

import UIKit



class FormViewController: UIViewController {
    var delegate : CellDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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

extension FormViewController : CellDataDelegate{
    func handleClickdele() -> String {
        return "some"
    }
    
    
}
