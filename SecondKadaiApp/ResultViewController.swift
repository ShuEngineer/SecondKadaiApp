//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 伊藤嵩 on 2019/11/13.
//  Copyright © 2019 Shu Ito. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //View Controller から渡される値(引数)の変数　nilでないこと
    var name : String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //このviewが開かれた時に実行される処理
        
        nameLabel.text = "こんにちは、\(name)さん"
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
