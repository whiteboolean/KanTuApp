//
//  PreferenceUtil.swift
//  KanTu
//
//  Created by D G on 2022/9/25.
//

import Foundation
class PreferenceUtil{
    
    static let KEY_USER_LOGIN = "KEY_USER_LOGIN"
    
    static func setLogin(_ isLogin:Bool){
        UserDefaults.standard.set(isLogin, forKey: KEY_USER_LOGIN)
    }
    
    
    static func isLogin() ->Bool{
        UserDefaults.standard.bool(forKey: KEY_USER_LOGIN)
    }
}
