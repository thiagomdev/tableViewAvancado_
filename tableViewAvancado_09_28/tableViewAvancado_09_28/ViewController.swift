//
//  ViewController.swift
//  tableViewAvancado_09_28
//
//  Created by Thiago Monteiro on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayCars = ["BMW", "FORD", "VW", "FERRARI", "TESLA"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableViewList.delegate = self
        tableViewList.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayCars[indexPath.row]
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayCars.remove(at: indexPath.row)
        tableViewList.reloadData()
    }
}

