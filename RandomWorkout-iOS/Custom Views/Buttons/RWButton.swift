//
//  RWButton.swift
//  RandomWorkout-iOS
//
//  Created by Adrian Cortes on 16/01/21.
//

import UIKit

final class RWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 25
        titleLabel?.font = .preferredFont(forTextStyle: .headline)
        setTitleColor(.white, for: .normal)
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func disable() {        
        self.isEnabled = false
        self.layer.opacity = 0.2
    }
    
    func enable() {
        self.isEnabled = true
        self.layer.opacity = 1
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.height / 2
        
    }
}
