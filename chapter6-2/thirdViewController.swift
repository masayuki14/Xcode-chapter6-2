//
//  thirdViewController.swift
//  chapter6-2
//
//  Created by 森崎 雅之 on 2016/02/13.
//  Copyright © 2016年 森崎 雅之. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var dataInputText: UITextField!
    
    // AppDelegateにアクセスするオブジェクト
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate

    // 画面表示時にAppDelegateから共有変数の値を取得
    override func viewWillAppear(animated: Bool) {
        let sunValue = ap.cmValue * 0.33
        dataInputText.text = String(sunValue)
    }

    @IBAction func tapInput() {
        // Tapされたら値をAppDelegateに書き込む
        dataInputText.resignFirstResponder() // キーボード閉じる
        if let text = dataInputText.text {
            if let sunValue = Double(text) {
                ap.cmValue = sunValue / 0.33
            }
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
