//
//  inputFormViewController.swift
//  iosUI
//
//  Created by cocoa on 2018. 5. 16..
//  Copyright © 2018년 cocoa. All rights reserved.
//

import UIKit

class inputFormViewController: UIViewController {
    
    // 변수는 클래스 레벨에서 프로퍼티로 정의하고
    // viewDidLoad() 메소드 내에서 초기화
    var paramEmail: UITextField! // 이메일 입력 필드

    override func viewDidLoad() {
        // 내비게이션 바 타이틀을 입력
        self.navigationItem.title = "설정"
        
        // 이메일 레이블 생성하고 영역과 기본 문구를 설정
        let lblEmail = UILabel()
        lblEmail.frame = CGRect(x: 30, y: 100, width: 100, height: 30)
        lblEmail.text = "이메일"
        
        //레이블의 폰트를 설정
        lblEmail.font = UIFont.systemFont(ofSize: 14)
        
        // 레이블을 루트뷰에 추가
        self.view.addSubview(lblEmail)
        
        // 자동갱신 레이블을 생성하고 루트 뷰에 추가
        let lblUpdate = UILabel()
        lblUpdate.frame = CGRect(x: 30, y: 150, width: 100, height: 30)
        lblUpdate.text = "자동갱신"
        lblUpdate.font = UIFont.systemFont(ofSize: 14)
        
        self.view.addSubview(lblUpdate)
        
        // 갱신주기 레이블을 생성하고 루트 뷰에 추가
        let lblInterval = UILabel()
        lblInterval.frame = CGRect(x: 30, y: 200, width: 100, height: 30)
        lblInterval.text = "갱신주기"
        lblInterval.font = UIFont.systemFont(ofSize: 14)
        
        self.view.addSubview(lblInterval)
        
        // 이메일 입력을 위한 텍스프 필드를 추가
        self.paramEmail = UITextField()
        self.paramEmail.frame = CGRect(x: 120, y: 100, width: 220, height: 30)
        self.paramEmail.font = UIFont.systemFont(ofSize: 13)
        self.paramEmail.borderStyle = UITextBorderStyle.roundedRect
        
        //
        //self.paramEmail.textAlignment = NSTextAlignment.right
        //self.paramEmail.adjustsFontSizeToFitWidth = true
        
        self.paramEmail.placeholder = "이메일의 예) xxx@gmail.com"
        
        self.view.addSubview(self.paramEmail)
        
    

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
