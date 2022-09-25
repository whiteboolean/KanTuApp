//
//  ViewController.swift
//  KanTu
//
//  Created by D G on 2022/9/23.
//

import UIKit

/**
 *  看图项目
 */
class ViewController: UIViewController {
    
    var dataArray:[String] = []
    @IBOutlet weak var tabView: UITableView!
    
    @IBAction func logoutClick(_ sender: UIButton) {
        PreferenceUtil.setLogin(false)
        SceneDelegate.shared.toNextPage("Login")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for index in 1...19{
            dataArray.append("girl\(index)")
        }
        
        tabView.reloadData()
        
    }


}

extension ViewController :UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! ImageCell
        let data = dataArray[indexPath.row]
        cell.bind(data)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = dataArray[indexPath.row]
        let imageDetailController = storyboard?.instantiateViewController(withIdentifier: "ImageDetail") as! ImageDetailController
        imageDetailController.id = data
        navigationController?.pushViewController(imageDetailController, animated: true)
        
    }
    
    
}

