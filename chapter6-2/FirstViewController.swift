//
//  FirstViewController.swift
//  chapter6-2
//
//  Created by 森崎 雅之 on 2016/02/13.
//  Copyright © 2016年 森崎 雅之. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    // AppDelegateにアクセスするオブジェクト
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
    
    // 画面表示時にAppDelegateから共有変数の値を取得
    override func viewWillAppear(animated: Bool) {
        dataTextField.text = String(ap.cmValue)
    }
    
    @IBAction func tapInput() {
        // Tapされたら値をAppDelegateに書き込む
        dataTextField.resignFirstResponder() // キーボード閉じる
        if let text = dataTextField.text {
            if let cmValue = Double(text) {
                ap.cmValue = cmValue
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

