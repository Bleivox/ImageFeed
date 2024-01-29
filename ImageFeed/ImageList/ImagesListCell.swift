//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Никита Долгов on 22.01.24.
//

import Foundation
import UIKit


final class ImagesListCell: UITableViewCell {
    
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    
}
