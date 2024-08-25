//
//  XibTableVC.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 23/08/24.
//

import UIKit

class XibTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var xibTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        xibTableView.register(UINib(nibName: "TableCell", bundle: nil), forCellReuseIdentifier: "XibTableCell")
        xibTableView.dataSource = self
        xibTableView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XibTableCell", for: indexPath) as! TableCell

        cell.titleLabel.text = "name \(indexPath.row)"
        cell.subtitleLabel.text = "chat no. \(indexPath.row)"
        return cell
    }

}
