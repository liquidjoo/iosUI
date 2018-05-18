//
//  TabBarViewController.swift
//  iosUI
//
//  Created by cocoa on 2018. 5. 18..
//  Copyright © 2018년 cocoa. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 기존 처럼 여러 줄의 코드를 한 줄로 줄여 작성하는 것을 인라인(inline) 방식
        // 객체의 좌표값을 0으로 준 것은 center 속성을 따로 설정할 것이여서 임의로 넣은 값
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        
        title.text = "첫 번째 탭"
        title.textColor = UIColor.red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        
        
        //sizeTofit 메소드와 center 속성 설정 구문을 함께 사용할 경우, 객체의 center속성 설정은 항상
        //sietToFit 메소드를 호출한 후 설정하는 것이 좋다
        
        title.sizeToFit() // 콘텐츠의 내용에 맞게 레이블 크기 변경 ( 엘립시스) ...으로 표기되는것
        
        // frame.width 는 읽기 전용 프로퍼티로 내부적으로 size.width 속성을 참조
        // 데이터의 값을 변경하려면 frame.size.width 해야함
        title.center.x = self.view.frame.width / 2 // x축의 중앙에 오도록
        
        self.view.addSubview(title)
        
        // 탭 바 아이템에 커스텀 이미지를 등록하고 탭 이름을 입력
        // AppDelegate apllication( _:didFinishLaunchingWithOptions:) 메소드에서 실행
//        self.tabBarItem.image = UIImage(named: "calendar.png")
//        self.tabBarItem.title = "Calendar"
        
        // 탭바 아이템과 달리 탭 바는 뷰 컨트롤러에 직접 연결되어 있지 않기 때문에 self.tabBsr 같은 속성이 제공되지 않는다.
        // 탭바를 참조하기 위해서는 반드시 탭 바 컨트롤러를 거쳐야 한다.
        // 탭 바 관련 객체 중에서 뷰 컨트롤러에서 직접 참조할 수 있는 것은 탭 바 컨트롤러와 탭 바 아이템 뿐.

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
