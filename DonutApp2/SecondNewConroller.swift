//
//  SecondNewConroller.swift
//  DonutApp2
//
//  Created by Yaroslav on 25.10.2024.
//

import UIKit

final class SecondNewConroller: UIViewController {
    
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let priceLabel = UILabel()
    private let productInfoView = UIView()
    private let buyButton = UIButton()
    
    private let gradientLaer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupBehaver()
        setupAppearans()
    }
    
    func embedViews() {
        view.addSubview(imageView)
        
        [
            imageView,
            titleLabel,
            descriptionLabel,
            priceLabel,
            productInfoView,
            buyButton
        ].forEach {
            view.addSubview($0)
        }
    }
    
    func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 356)
            ])
    }
    
    
    func setupAppearans() {
        view.backgroundColor = .systemBackground
        
        gradientLaer.colors = [
            UIColor.gradPink.cgColor,
            UIColor.gradOrang.cgColor
        ]
        
        gradientLaer.startPoint = CGPoint(x: 0.0, y:0.0)
        gradientLaer.endPoint = CGPoint(x: 1.0, y:0.5)
        
        imageView.image = UIImage(named: "marshmellow")
        imageView.contentMode = .scaleAspectFit
        
        productInfoView.layer.insertSublayer(gradientLaer, at: 0)
        productInfoView.layer.cornerRadius = 50
        productInfoView.clipsToBounds = true
    }
    
    func setupBehaver() {
        gradientLaer.frame = productInfoView.bounds
    }
    
    
}
