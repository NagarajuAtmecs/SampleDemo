//
//  HomeVC.swift
//  SampleProject_Demo
//
//  Created by Nagaraju Kankanala on 20/01/25.
//

import UIKit
import Foundation

class HomeVC:UIViewController {
    var arrList = ["one","Two","Three","four"]
    @IBOutlet weak var homeListTbl:UITableView!
    override func viewDidLoad() {
        self.title = "HomeView"
        homeListTbl.delegate = self
        homeListTbl.dataSource = self
    
    }
}

extension HomeVC:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.titleLbl.text = arrList[indexPath.row]
        return cell
    }
}

class CustomCell : UITableViewCell {
    @IBOutlet weak var titleLbl:UILabel!
    
}
