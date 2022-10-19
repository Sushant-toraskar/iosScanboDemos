//
//  ViewController.swift
//  demotask
//
//  Created by Neosoft on 17/10/22.
//

import UIKit

protocol CellDataDelegate {
    func handleClickdele()-> String
}

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var MainTable: UITableView!
    var othercell = "OtherTableViewCell"
    var maincell = "TaskTableViewCell"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        MainTable.delegate = self
        MainTable.dataSource = self
        
        let nib = UINib(nibName: othercell, bundle: nil)
        MainTable.register(nib, forCellReuseIdentifier: othercell)
        let mainnib = UINib(nibName: maincell, bundle: nil)
        MainTable.register(mainnib, forCellReuseIdentifier: maincell)

    }

    @IBAction func btn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc  = sb.instantiateViewController(identifier: "FormViewController") as! FormViewController
        
        vc.present(vc, animated: false, completion: nil)
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: othercell, for: indexPath) as! OtherTableViewCell
        cell.MainLabel.text = "Cell no \(indexPath.row)"
        print(indexPath.row)
        switch indexPath.row {
        case 0:
            return cell
        case 1:
            return cell
        case 2:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: maincell, for: indexPath) as! TaskTableViewCell
        
            return cell2
        case 3:
            return cell
        default:
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80.0
//    }
    
    
}

//extension ViewController : CellDataDelegate{
//    func handleClickdele()-> String {
//        return "Hello World"
//    }
//
//
//}
