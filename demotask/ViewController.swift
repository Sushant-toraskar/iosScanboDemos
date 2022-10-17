//
//  ViewController.swift
//  demotask
//
//  Created by Neosoft on 17/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainTable: UITableView!
    var othercell = "OtherTableViewCell"
    override func viewDidLoad() {
        
        super.viewDidLoad()
        MainTable.delegate = self
        MainTable.dataSource = self
        
        let nib = UINib(nibName: othercell, bundle: nil)
        MainTable.register(nib, forCellReuseIdentifier: othercell)

    }
    
    


}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: othercell, for: indexPath) as! OtherTableViewCell
        cell.MainLabel.text = "Cell no \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    
}

