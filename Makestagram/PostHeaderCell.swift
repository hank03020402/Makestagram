//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Hank on 2017/7/25.
//  Copyright © 2017年 Hank. All rights reserved.
//

import Foundation
import UIKit
class PostHeaderCell: UITableViewCell{
     static let height: CGFloat = 54
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    @IBOutlet weak var UsernameLabel: UILabel!
    @IBAction func ButtonTapped(_ sender: Any) {
        
    }
   
}
