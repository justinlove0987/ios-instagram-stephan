//
//  InputTextView.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2022/2/8.
//

import UIKit

class InputTextView: UITextView {
    
    // MARK: - Properties
    
    var placeholderText: String? {
        didSet { placeholderLabel.text = placeholderText }
    }
    
    private let placeholderLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
       return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        addSubview(placeholderLabel)
        placeholderLabel.anchor(top: topAnchor, left: leftAnchor, paddingTop: 6, paddingLeft: 8)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextDidChange), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    
    @objc func handleTextDidChange() {
        // We can write the code in UploadPostController too. But it's better to do it here, because whenever we reuse this TextView we would have to remember hide the placeholder.
        // It's a principle of encapsulation, anything that involves messing with this textView is handled inside of the textView class.
        placeholderLabel.isHidden = !text.isEmpty
    }
}
