//
//  ViewController.swift
//  week4_topic3_URLSession_practice
//
//  Created by 小妍寶 on 2024/7/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stationIDLabel : UILabel!
    @IBOutlet weak var stationNameLabel : UILabel!
    @IBOutlet weak var stationAddressLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
func fetchData(){
    
    let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
    
    let session = URLSession.shared
    
    let task = session.dataTask(with: url){
        (data, response, error) in
        
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            print("response error.")
            return
        }
        
        guard let data = data else {
          print("data error.")
          return
        }
        
        if let json = try? JSONSerialization.jsonObject(with: data) as? [String : Any] {
            guard let stationID = json["stationID"] as? String,
                  let stationName = json["stationName"] as? String,
                  let stationAddress = json["stationAddress"] as? String else {
                return
            }
            DispatchQueue.main.async {
                self.stationIDLabel.text = stationID
                self.stationNameLabel.text = stationName
                self.stationAddressLabel.text = stationAddress
            }
        }
    }
    task.resume()
}
}

