//
//  StringExtension.swift
//  KanTu
//  字符换扩展
//  Created by D G on 2022/9/25.
//

import Foundation

extension String{
    
    ///是否是手机号
    func isPhone()->Bool{
       return NSPredicate(format: "SELF MATCHES %@", REGX_PHONE).evaluate(with: self)
    }
}

 let REGX_PHONE =  "^((1[3-9][0-9]))\\d{9}$"
