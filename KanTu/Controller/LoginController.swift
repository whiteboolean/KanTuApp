//
//  LoginController.swift
//  KanTu
//
//  Created by D G on 2022/9/25.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var userNameView: UITextField!
    @IBOutlet weak var passwordView: UITextField!
    @IBOutlet weak var hintView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func loginClick(_ sender: UIButton) {
        
        //获取用户名
        let phone = userNameView.text!
        
        if phone.isEmpty{
            hintView.text = "请输入手机号"
            return
        }
        
        ///通过正则表达式判断格式是否正确
        if phone.isPhone(){
            hintView.text = "手机号格式不正确"
            return
        }
        
        let password  = passwordView.text!
        if password.isEmpty {
            hintView.text = "请输入密码"
            return
        }
        if password.count < 6 || password.count > 15{
            hintView.text = "密码格式不正确，6 - 15位"
            return
        }
        
        if Constant.PHONE == phone && Constant.PASSWORD==password {
            hintView.text = "登录成功"
            SceneDelegate.shared.toNextPage("Home")
        }else{
            hintView.text = "手机号或者密码不正确"
        }
    }

}
