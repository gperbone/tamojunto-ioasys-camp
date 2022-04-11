//
//  FullPost.swift
//  tamojunto
//
//  Created by Gustavo Perbone on 07/04/22.
//

import Foundation
import UIKit

class FullPost: UIView{
    //postView
    lazy var postView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //edit image
    lazy var editImage: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(systemName: "slider.horizontal.3")
        imgView.contentMode = .scaleAspectFit
        imgView.tintColor =   UIColor(red: 0.051, green: 0.29, blue: 0.306, alpha: 1)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    //authorTextView
    lazy var authorTextView: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        lbl.font = UIFont(name: "Raleway-Italic", size: 13)
        lbl.textColor = UIColor(red: 0.008, green: 0.071, blue: 0.059, alpha: 1)
        lbl.text = "Autor do Post em dd/mm/aa"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //stroke
    lazy var stroke: UIView = {
        var stroke = UIView()
        stroke.backgroundColor = UIColor(named: "primary80")
        stroke.translatesAutoresizingMaskIntoConstraints = false
        return stroke
    }()
    
    //messageTextView
    lazy var titleTextView: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        lbl.font = UIFont(name: "Raleway-Bold", size: 13)
        lbl.textColor = UIColor(red: 0.008, green: 0.071, blue: 0.059, alpha: 1)
        
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines = 0
        lbl.textAlignment = .justified
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.19
        let string = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer consectetur lectus dui, id sollicitudin elit dapibus id.
        """
        lbl.attributedText = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //commentsTextView
    lazy var commentsTextView: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        lbl.font = UIFont(name: "Raleway-Bold", size: 13)
        lbl.textColor = UIColor(red: 0.008, green: 0.071, blue: 0.059, alpha: 1)
        lbl.text = "XXX comentários"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    //messageTextView
    lazy var messageTextView: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        lbl.font = UIFont(name: "Raleway-Regular", size: 13)
        lbl.textColor = UIColor(red: 0.008, green: 0.071, blue: 0.059, alpha: 1)
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines = 0
        lbl.textAlignment = .justified
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.19
        let string = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer consectetur lectus dui, id sollicitudin elit dapibus id. Suspendisse potenti. Etiam interdum magna leo, et euismod neque bibendum vitae. Praesent velit sem, aliquet at ante tincidunt, vehicula porta nunc. Suspendisse potenti. In feugiat dignissim placerat. Aenean sit amet interdum ex. Donec vulputate ligula lacus, id pharetra augue efficitur ac. Morbi non diam vel lacus mollis vehicula. Integer tempor nisi nec placerat fermentum. Integer at aliquet nunc. Sed semper convallis ultrices. Nulla facilisi. Proin non lacus ultricies, efficitur tortor porta, laoreet arcu.
        \nCurabitur ut metus orci. Sed sed lacus arcu. Suspendisse dui enim, blandit in eleifend ut, laoreet ac velit. Nam augue ligula, imperdiet vel nulla vel, euismod pellentesque orci. Nullam ipsum lectus, vestibulum ut scelerisque ut, ornare nec erat. Morbi commodo diam sit amet tempus scelerisque. Nullam ac mauris sed orci sollicitudin vestibulum.
        \nCurabitur vehicula at orci ut gravida. Donec et elit metus. Nullam sit amet est et augue gravida consequat. Suspendisse eu gravida mi. Aenean libero justo, sodales sit amet tellus non.
"""
        lbl.attributedText = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setSubviews()
        setConstraints()
        setActions()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup of the subviews
    func setSubviews(){
        self.addSubview(postView)
        postView.addSubview(editImage)
        postView.addSubview(authorTextView)
        postView.addSubview(stroke)
        postView.addSubview(titleTextView)
        postView.addSubview(commentsTextView)
        postView.addSubview(messageTextView)
    }
    
    //MARK: - Setup of the cnstraints
    func setConstraints(){
        postView.anchor(top: topAnchor,
                        left: leftAnchor,
                        bottom: bottomAnchor,
                        right: rightAnchor)
        
        editImage.anchor(top: postView.topAnchor,
                         right: postView.rightAnchor,
                         topConstant: 12,
                         rightConstant: 14)
        
        authorTextView.anchor(top: editImage.bottomAnchor,
                              left: postView.leftAnchor,
                              right: postView.rightAnchor,
                              topConstant: 4,
                              leftConstant: 23,
                              rightConstant: 23)
        
        stroke.anchorCenterXToSuperview()
        stroke.anchor(top: authorTextView.bottomAnchor,
                      left: postView.leftAnchor,
                      right: postView.rightAnchor,
                      topConstant: 4,
                      leftConstant: 23,
                      rightConstant: 23,
                      heightConstant: 1)
        
        titleTextView.anchor(top: stroke.bottomAnchor,
                             left: postView.leftAnchor,
                             right: postView.rightAnchor,
                             topConstant: 8,
                             leftConstant: 23,
                             rightConstant: 23)
        
        commentsTextView.anchor(top: titleTextView.bottomAnchor,
                                left: postView.leftAnchor,
                                right: postView.rightAnchor,
                                topConstant: 16,
                                leftConstant: 23,
                                rightConstant: 23)
        
        messageTextView.anchor(top: commentsTextView.bottomAnchor,
                               left: postView.leftAnchor,
                               right: postView.rightAnchor,
                               topConstant: 22.49,
                               leftConstant: 23,
                               rightConstant: 23)
        
        postView.anchor(bottom: messageTextView.bottomAnchor,
                        bottomConstant: 28.64)
        
    }
    
    //MARK: - Setup of the actions
    func setActions(){
        //action set in view controller
    }
    
    
    
}

