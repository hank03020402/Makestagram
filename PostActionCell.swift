
//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Hank on 2017/7/25.
//  Copyright © 2017年 Hank. All rights reserved.
//

import Foundation
import UIKit
protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}
class PostActionCell: UITableViewCell{
     static let height: CGFloat = 46
     weak var delegate: PostActionCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    @IBOutlet weak var heart_Button: UIButton!
    @IBAction func heartButton(_ sender: Any) {
        delegate?.didTapLikeButton(sender as! UIButton, on: self)
    }
    @IBOutlet weak var fiveLikesLabel: UILabel!
    @IBOutlet weak var minutesAgoLabel: UILabel!
}
