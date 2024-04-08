//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Никита Долгов on 01.02.24.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileImage = UIImage(named: "profilePhoto")
        let profileImageView = UIImageView()
        profileImageView.image = profileImage
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        
        NSLayoutConstraint.activate([profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                                     profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
                                    ])
        
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = .boldSystemFont(ofSize: 23)
        nameLabel.textColor = .ypWhite
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                                     nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8)])
        
        let userNameLabel = UILabel()
        userNameLabel.text = "@ekaterina_nov"
        userNameLabel.font = .systemFont(ofSize: 13)
        userNameLabel.textColor = .ypGray
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameLabel)
        
        NSLayoutConstraint.activate([userNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                                     userNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8)])
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Hello, World!"
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = .ypWhite
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
                                     descriptionLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8)])
        
        
        let buttonImage = UIImage(named: "Exit")
        guard let buttonImage = buttonImage else { return }
        let button1 = UIButton.systemButton(with: buttonImage, target: self, action: #selector(self.quitFromProfile))
        button1.tintColor = .ypRed
        button1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button1)
        
        NSLayoutConstraint.activate([button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 55),
                                     button1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24)])
        
    
    }
    
    @objc func quitFromProfile() {
        
    }
    
}
