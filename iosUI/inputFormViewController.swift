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
    var paramUpdate: UISwitch!  // 스위치 객체
    var paramInterval: UIStepper! // 스테퍼
    var txtUpdate: UILabel!     // 스위치 컨트롤의 값을 표현할 레이블
    var txtInterval: UILabel!   // 스테퍼 컨트롤의 값을 표현할 레이블

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
        self.paramEmail.autocapitalizationType = .none // 대문자 자동 변환 기능을 해제하는 구문
        
        //
        //self.paramEmail.textAlignment = NSTextAlignment.right
        //self.paramEmail.adjustsFontSizeToFitWidth = true
        
        self.paramEmail.placeholder = "이메일의 예) xxx@gmail.com"
        
        self.view.addSubview(self.paramEmail)
        
        // 스위치 객체를 생성
        self.paramUpdate = UISwitch()
        self.paramUpdate.frame = CGRect(x: 120, y: 150, width: 50, height: 30)
        
        // 스위치가 On 되어 있는 상태를 기본값으로 설정
        self.paramUpdate.setOn(true, animated: true)
        
        // 스위치 컨트롤의 Value Changed 이벤트를 각각 액션 메소드에 연결
        // .valueChanged 객체가 갖는 값이 변경될 때 발생하는 이벤트, 스위치나 스테퍼 객체에 가장 적합한 액션 발동 조건
        self.paramUpdate.addTarget(self, action: #selector(presentUpdateValue(_:)), for: .valueChanged)
        
        self.view.addSubview(self.paramUpdate)
        
        // 스태퍼 객체를 생성
        self.paramInterval = UIStepper()
        
        self.paramInterval.frame = CGRect(x: 120, y: 200, width: 50, height: 30)
        self.paramInterval.minimumValue = 0     // 스테퍼가 가질 수 있는 최소값
        self.paramInterval.maximumValue = 100   // 스테퍼가 가질 수 있는 최대값
        self.paramInterval.stepValue = 1        // 스테퍼의 값 변경 단위
        self.paramInterval.value = 0            // 초기값 설정
        
        self.paramInterval.addTarget(self, action: #selector(presentIntervalValue(_:)), for: .valueChanged)
        
        self.view.addSubview(self.paramInterval)
        
        self.txtUpdate = UILabel()
        self.txtUpdate.frame = CGRect(x: 250, y: 150, width: 100, height: 30)
        self.txtUpdate.font = UIFont.systemFont(ofSize: 12)
        self.txtUpdate.textColor = UIColor.red // 텍스트의 색상 설정
        self.txtUpdate.text = "갱신함" // 갱신함 or 갱신하지 않음
        
        self.view.addSubview(self.txtUpdate)
        
        self.txtInterval = UILabel()
        self.txtInterval.frame = CGRect(x: 250, y: 200, width: 100, height: 30)
        self.txtInterval.font = UIFont.systemFont(ofSize: 12)
        self.txtInterval.textColor = UIColor.red
        self.txtInterval.text = "0분마다"
        
        self.view.addSubview(self.txtInterval)
        
        
    

        // Do any additional setup after loading the view.
    }
    
    // 스위치와 상호반응할 액션 메소드
    @objc func presentUpdateValue(_ sender: UISwitch) {
        self.txtUpdate.text = (sender.isOn == true ? "갱신함" : "갱신하지 않음")
    }
    
    // 스테퍼와 상호반응할 액션 메소드
    @objc func presentIntervalValue(_ sender: UIStepper) {
        self.txtInterval.text = ("\(Int(sender.value))분마다")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // UIColor 코드 변환 사이트 http://uicolor.xyz/#/hex-to-ui
    // 16진수 색상값을 UIColor 객체로 변환하는 함수
    func UIColorFromRGB(rgbValue:UInt) -> UIColor {
        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                       green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                       blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                       alpha: CGFloat(1.0)
        )
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
