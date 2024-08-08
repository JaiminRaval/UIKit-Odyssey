//
//  TableVC.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 08/08/24.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var colorTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupTable()
    }
    
    func setupTable(){
        colorTable.dataSource = self
        colorTable.delegate = self
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath) as! ColorCell
        cell.cellLabel.text = "Color \(indexPath.row)"
        
        return cell
    }

}
