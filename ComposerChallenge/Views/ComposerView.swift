//
//  ComposerView.swift
//  ComposerChallenge
//
//  Created by Sam LoBue on 8/22/21.
//

import UIKit

class ComposerView: UIView {
    
    // Creating an ascii art representation of your view
    // can be really helpful when adding constraints
    
    /*
     -------------------------
     |       ----------        |
     |      - Composer -       |
     |      -   Image  -       |
     |      -   View   -       |
     |       ----------        |
     |                         |
     |       ----------        |
     |      -   Name   -       |
     |      -  Label   -       |
     |       ----------        |
     |                         |
     |       ----------        |
     |      -   Bio    -       |
     |      -  Label   -       |
     |       ----------        |
     |                         |
     |       ----------        |
     |      - Alternate -      |
     |      -   Image   -      |
     |      -  Button   -      |
     |       ----------        |
     |                         |
     -------------------------
     */
    
    // You need to declare all the views as properties that are specified in the ascii art above
    // Give the property a name: var composerImageView
    // Give the property a class: UIImageView
    // Initialize the property let uiImageView = UIImageView()
    // Assign it any traits you need it to have
    // Example below, of a view from another project:
    
    /*
     private let backgroundView: UIView = {
     let backgroundView = UIView()
     backgroundView.addCornerRadius(10)
     backgroundView.addAccentBorder(width: 2, color: .forcedBlack)
     backgroundView.backgroundColor = .forcedWhite
     return backgroundView
     }()
     */
    // MARK: - PROPERTIES
    let composerImageView: UIImageView = {
        let uiImageView = UIImageView()
        uiImageView.backgroundColor = .lightGray
        return uiImageView
        
        
    }()
    
    let nameLabel: UILabel = {
        let uiLabel = UILabel()
        uiLabel.textColor = .black
        uiLabel.layer.borderWidth = 5
        uiLabel.layer.borderColor = UIColor.black.cgColor
        return uiLabel
    }()
    
    let bioLabel: UILabel = UILabel()
    
    let alternateImageButton: UIButton = UIButton()
    
    
    
    // MARK: - LIFECYCLE
    // This is like viewDidLoad. You need to call the methods below here
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    // Nothing further to do in this method. It comes for free
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - These are some commonly used method names to programmatically create a view
    // I'm leaving instructions to complete in each method to get them working
    
    // Constructing subviews means adding each view to the base view
    // There is a method Apple provides that you can call directly to add subivews to the base view
    func constructSubviews() {
        addSubview(composerImageView)
        addSubview(nameLabel)
        addSubview(bioLabel)
        addSubview(alternateImageButton)
        
    }
    
    // This method will list all of the views you created above, allow them to use NSLayoutConstraints, then choose the NSLayoutConstraint you want for each view
    func constructSubviewConstraints() {
        // Create an array of your views
        let views = [composerImageView, nameLabel, bioLabel, alternateImageButton]
        
        // For each view, turn their property `.translatesAutoresizingMaskIntoConstraints` to be false
        
        
        // Constrain each view
        
        // composerImageView
        NSLayoutConstraint.activate([
            
        ])
        
        // nameLabel
        NSLayoutConstraint.activate([
            
        ])
        
        // bioLabel
        NSLayoutConstraint.activate([
            
        ])
        
        // alternateImageButton
        NSLayoutConstraint.activate([
            
        ])
    }
}
