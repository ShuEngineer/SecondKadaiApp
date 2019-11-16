//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 伊藤嵩 on 2019/11/13.
//  Copyright © 2019 Shu Ito. All rights reserved.
//

import UIKit

//　Superclass UIViewController
class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    
    //画面遷移　Result View Controller から戻る
    //.text Stringのプロパティを指定してあげる必要がある
    @IBAction func unwind(_ segue:UIStoryboardSegue){
         nameField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //外部引数ラベル　受け取る側に型,　ここではsender
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        
        //print(sender.customMirror)
        //遷移元から遷移先に何かしらのデータを渡したい時
        //ViewController.swiftのソースコードに遷移するときに呼ばれるprepare(for:sender:)メソッドを記述
        //遷移する際に何かしらの処理を行いたい場合はこのメソッド内に記述
        //ResultViewControllerに値を渡す変数 resultViewControllerを定義
        let resultViewController : ResultViewController = segue.destination as! ResultViewController
        //アンラップ処理で値が入っていることを担保
        if let nameField = nameField.text {
        resultViewController.name = nameField
    }

}

}
