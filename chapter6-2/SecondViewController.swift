//
//  SecondViewController.swift
//  chapter6-2
//
//  Created by 森崎 雅之 on 2016/02/13.
//  Copyright © 2016年 森崎 雅之. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    // AppDelegateにアクセスするオブジェクト
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate

    // 画面表示時にAppDelegateから共有変数の値を取得
    override func viewWillAppear(animated: Bool) {
        let incValue = ap.cmValue * 0.3937
        dataTextField.text = String(incValue)
    }

    @IBAction func tapInput() {
        // Tapされたら値をAppDelegateに書き込む
        dataTextField.resignFirstResponder() // キーボード閉じる
        if let text = dataTextField.text {
            if let cmValue = Double(text) {
                ap.cmValue = cmValue / 0.3937
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

