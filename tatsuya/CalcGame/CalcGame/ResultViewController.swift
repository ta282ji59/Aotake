//
//  ResultViewController.swift
//  CalcGame
//
//  Created by 辻 達也 on 2023/11/10.
// 

import UIKit

class ResultViewController: UIViewController {

    var point = 0
    @IBOutlet weak var recordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        recordLabel.text = "あなたの記録\(point)点"
    }
    
    @IBAction func onBackTop(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
