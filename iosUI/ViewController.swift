//
//  ViewController.swift
//  iosUI
//
//  Created by cocoa on 2018. 5. 14..
//  Copyright © 2018년 cocoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let btn = UIButton(type: UIButtonType.system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("테스트 버튼", for: UIControlState.normal)
        
        // 버튼을 수평 중앙 정렬
        btn.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        
        self.view.addSubview(btn)
        
        // 버튼의 이벤트와 메소드 btnOnClick(_:)을 연결한다.
        btn.addTarget(self, action: #selector(btnOnClik(_:)), for: .touchUpInside)
    }
    
    @objc func btnOnClik(_ sender:Any) {
        // 호출한 객체가 버튼이라면
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다", for: UIControlState.normal)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

