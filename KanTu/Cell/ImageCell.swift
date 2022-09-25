//
//  ImageCellTableViewCell.swift
//  KanTu
//
//  Created by D G on 2022/9/25.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var uiImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func bind(_ data:String){
        uiImageView.image  = UIImage(named: data)
    }
    

    
    
}
