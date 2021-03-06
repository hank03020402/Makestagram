//
//  FindFriendsCell.swift
//  Makestagram
//
//  Created by Hank on 2017/7/25.
//  Copyright © 2017年 Hank. All rights reserved.
//

import Foundation
import UIKit
protocol FindFriendsCellDelegate: class {
    func didTapFollowButton(_ followButton: UIButton, on cell: FindFriendsCell)
}
class FindFriendsCell: UITableViewCell{
    weak var delegate :FindFriendsCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        followTapped.layer.borderColor = UIColor.lightGray.cgColor
        followTapped.layer.borderWidth = 1
        followTapped.layer.cornerRadius = 6
        followTapped.clipsToBounds = true
        
        followTapped.setTitle("Follow", for: .normal)
        followTapped.setTitle("Following", for: .selected)
    }
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var followTapped: UIButton!
    @IBAction func followTapped(_ sender: UIButton) {
         delegate?.didTapFollowButton(sender, on: self)
    }
    
}
