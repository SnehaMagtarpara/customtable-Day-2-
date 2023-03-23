//
//  ViewController.swift
//  customtable
//
//  Created by R93 on 08/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var setting = ["Chats","Notifications","Account","Privacy","payments","Storage and Data"]
    
    var number = [1,2,3,4,5,6]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.label1.text = "\(number[indexPath.row])"
        cell.label2.text = setting[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

