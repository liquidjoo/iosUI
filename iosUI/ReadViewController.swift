//
//  ReadViewController.swift
//  iosUI
//
//  Created by cocoa on 2018. 5. 17..
//  Copyright © 2018년 cocoa. All rights reserved.
//

import UIKit

class ReadViewController: UIViewController {
    // 전달된 값을 저장할 변수를 정의
    var pEmail: String?
    var pUpdate: Bool?
    var pInterval: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배경 색상을 설정
        self.view.backgroundColor = UIColor.white
        
        // 레이블 객체를 정의
        let email = UILabel()
        let update = UILabel()
        let interval = UILabel()
        
        // 위치와 영역을 정의
        email.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
        update.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
        interval.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        
        email.text = "전달받은 이메일 : \(self.pEmail!)"
        update.text = "업데이트여부: \(self.pUpdate == true ? "업데이트함" : "업데이트 안 함")"
        interval.text = "업데이트 주기: \(self.pInterval!)분마다"
        
        self.view.addSubview(email)
        self.view.addSubview(update)
        self.view.addSubview(interval)

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
