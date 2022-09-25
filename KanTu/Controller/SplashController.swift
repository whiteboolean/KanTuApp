//
//  SplashController.swift
//  KanTu
//
//  Created by D G on 2022/9/23.
//

import UIKit

class SplashController: UIViewController {

    @IBOutlet weak var countDownView: UILabel!
    
    var timeCount = 3

    // MARK: 倒计时⼀
    func countDown(interval:TimeInterval) -> Void {
        /*!
         @withTimeInterval 定时器间隔时间
         @repeats 定时器是否重复触发
         @block 定时器触发后的⼀个回调
         */
        Timer.scheduledTimer(withTimeInterval: interval, repeats: true, block: { (timer) in
            if self.timeCount != 0 {
                self.timeCount -= 1
                self.countDownView.text = String.localizedStringWithFormat("倒计时%ds",self.timeCount)
                print("timeCount:\(self.timeCount)")
            }else if self.timeCount == 0 {
                timer.invalidate()
                self.countDownView.isHidden = true
                SceneDelegate.shared.next()
            }
        });
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        countDownView.isHidden = true
        countDownView.text = "倒计时\(timeCount)s"
            countDown(interval: TimeInterval(1))

        
//        DispatchQueue.main.asyncAfter(deadline: .now()+3){
//            SceneDelegate.shared.next()
//        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
