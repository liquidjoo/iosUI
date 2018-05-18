//
//  AppDelegate.swift
//  iosUI
//
//  Created by cocoa on 2018. 5. 14..
//  Copyright © 2018년 cocoa. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    // 앱의 초기화가 완료되었을 때 시스템에 의해 자동으로 호출되기 때문에 앱에 대한 초기화 작업을 하기에 가장 적절한 위치
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 루트 뷰 컨트롤러를 UITabBarController로 캐스팅
        // 윈도우 객체에 연결된 루트 뷰 컨트롤러를 읽어와 UITabBarController 타입 캐스팅
        // iOS 앱 구조를 보면 이해가 가능한 코드
        // 현재의 루트 뷰 컨트롤러는 탭 바 컨트롤이고, 탭 바 컨트롤러는 탭 바를 참조하므로 이를 이용하면
        // 앱 델리게이트에서 탭 바와 탭 바 아이템을 단계적으로 참조할 수 있다.
        if let tbC = self.window?.rootViewController as? UITabBarController {
            // 탭 바로부터 탭 바 아이템 배열을 가져온다.
            // 루트 뷰 컨트롤러를 통해 탭 바의 아이템 객체 배열을 가져옴
            if let tbItems = tbC.tabBar.items {
                // 탭 바 아이템에 커스텀 이미지를 등록
//                tbItems[0].image = UIImage(named: "calendar")
//                tbItems[1].image = UIImage(named: "file-tree")
//                tbItems[2].image = UIImage(named: "photo")
                //렌더링
                
                tbItems[0].image = UIImage(named: "designbump")?.withRenderingMode(.alwaysOriginal)
                tbItems[1].image = UIImage(named: "rss")?.withRenderingMode(.alwaysOriginal)
                tbItems[2].image = UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal)
                
                // 탭바가 선택 및 클릭을 하면 이미지 바꾸기
                // selectedImage 속성에 설정된 임지는 탭 바 아이템이 활성화 되었을 떄 표시
                for tbItem in tbItems {
                    let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                    tbItem.selectedImage = image
                }
                
                
                // 탭 바 아이템에 타이틀을 설정
                tbItems[0].title = "calendar"
                tbItems[1].title = "file"
                tbItems[2].title = "photo"
                
                
                
            }
            // 활성화된 탭 바 아이템의 이미지 색상을 변경
            //tbC.tabBar.tintColor = UIColor.white
            
            // 탭 바에 배경 이미지를 설정
            //tbC.tabBar.backgroundImage = UIImage(named: "menubar-bg-mini")
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "iosUI")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

