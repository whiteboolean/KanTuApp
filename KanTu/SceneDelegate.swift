//
//  SceneDelegate.swift
//  KanTu
//
//  Created by D G on 2022/9/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    ///定义一个静态的计算属性
    ///返回SceneDelegate对象实例
    open class var shared:SceneDelegate{
        get{
            let secene  = UIApplication.shared.connectedScenes.first
            return secene?.delegate as! SceneDelegate
        }
    }
    
    func next (){
        print("AppDelegate next")
        ///真实项目中
        ///可能还有引导界面
    
        if PreferenceUtil.isLogin() {
            toNextPage("HomeNavigation")
        }else{
            toNextPage("Login")
        }
        ///TODO 跳转到登录界面
        ///toNextPage("Login")
    }

    func toNextPage(_ sb:String){
        ///获取main.storyboard
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        ///实例化控制器
        let controller = storyBoard.instantiateViewController(withIdentifier: sb)
        
        //这里是替换原来的根控制器
        //目的是我们不希望用户在的登录界面还能返回到启动界面
        window?.rootViewController = controller
        
    }
    
    
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

