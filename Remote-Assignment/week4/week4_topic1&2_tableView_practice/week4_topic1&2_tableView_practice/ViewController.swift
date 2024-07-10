//
//  ViewController.swift
//  week4_topic1&2_tableView_practice
//
//  Created by 小妍寶 on 2024/7/8.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var section0Labels = [String]()
    var section1Labels = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        for i in 0...9 {
            let section0Label = "This is section 0, row \(i)."
            section0Labels.append(section0Label)
        }
        
        for i in 0...4 {
            let section1Label = "This is section 1, row \(i)."
            section1Labels.append(section1Label)
        }
        
    }
    
//    定義2個section
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
//    定義section各自的row數量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return section0Labels.count
        } else {
            return section1Labels.count
        }
    }
    
//    為每個row分配內容，並且按照section做區隔
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        if indexPath.section == 0 {
            cell.label.text = section0Labels[indexPath.row]
        } else {
            cell.label.text = section1Labels[indexPath.row]
        }
        return cell
    }
    
//  定義row的高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}



//2. 在UITableViewDataSource這個protocol中，什麼方法會在我們手動呼叫reloadData()時被呼叫？

//    首先會先呼叫numberOfSection釐清有多少section，再呼叫numberOfRowsInSection了解每個section中有多少row，接著會呼叫cellOfRowAt了解每一行應該有多少儲存格。基本上就是重新走一次TableView建立的流程。
