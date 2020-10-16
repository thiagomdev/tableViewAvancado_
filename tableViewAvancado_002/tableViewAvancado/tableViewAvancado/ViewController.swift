//
//  ViewController.swift
//  tableViewAvancado
//
//  Created by Thiago Monteiro on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayPerson = ["Marivaldo", "Paolo", "Thiago", "Narlei", "Jessica"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
    }
    
    
}

