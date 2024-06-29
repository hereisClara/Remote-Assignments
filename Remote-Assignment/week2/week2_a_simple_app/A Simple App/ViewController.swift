//
//  ViewController.swift
//  A Simple App
//
//  Created by 小妍寶 on 2024/6/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIView!
    @IBOutlet weak var showAnotherFunFact: UIButton!
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBAction func showAnotherFunFactTouched(_ sender: Any) {
        randomContent()
    }
    
    let text = [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
            "Contrary to popular belief, Lorem Ipsum is not simply random text.",
            "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
            "looked up one of the more obscure Latin words, consectetur",
            "from a Lorem Ipsum passage, and going through the cities of the word",
            "This book is a treatise on the theory of ethics, very popular during the.",
            "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomContent()
    }

    func randomContent () {
        var textNumber = Int.random(in: 0...6)
        contentLabel.text = text[textNumber]
        
        switch textNumber {
        case 0:
            background.backgroundColor = UIColor(red: 0.1, green: 0.2, blue: 0.7, alpha: 0.2);
        case 1:
            background.backgroundColor = UIColor(red: 1, green: 0.5, blue: 0.6, alpha: 0.6);
        case 2:
            background.backgroundColor = UIColor(red: 0.2, green: 0.1, blue: 0.23, alpha: 0.6);
        case 3:
            background.backgroundColor = UIColor(red: 0.7, green: 0.7, blue: 0.1, alpha: 0.9);
        case 4:
            background.backgroundColor = UIColor(red: 0.2, green: 0.5, blue: 0.3, alpha: 0.6);
        case 5:
            background.backgroundColor = UIColor(red: 0.05, green: 0.5, blue: 0.2, alpha: 0.9);
        default:
            background.backgroundColor = UIColor(red: 0.2, green: 0.8, blue: 0.2, alpha: 0.7);
        }
        
        showAnotherFunFact.setTitleColor(background.backgroundColor, for: .normal)
        
    }

}

