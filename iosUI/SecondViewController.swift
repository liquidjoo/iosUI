//
//  SecondViewController.swift
//  iosUI
//
//  Created by cocoa on 2018. 5. 18..
//  Copyright © 2018년 cocoa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "두 번째 탭"
        title.textColor = UIColor.red   // 텍스트는 빨간색
        title.textAlignment = .center   // 레이블 내에서 중앙 정렬로
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2
        
        self.view.addSubview(title)
        
//        self.tabBarItem.image = UIImage(named: "file-tree.png")
//        self.tabBarItem.title = "file"
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
