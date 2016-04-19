//
//  ButtonManager.swift
//  TableViewManager
//
//  Created by Julio Fernandes on 05/04/16.
//  Copyright © 2016 Julio Fernandes. All rights reserved.
//

import UIKit

@IBDesignable
class ButtonManager: UIButton {
    
    @IBInspectable var spinnerColor: UIColor = UIColor.whiteColor()
    
    @IBInspectable var fillColor: UIColor = UIColor.whiteColor() {
        didSet { layer.backgroundColor = fillColor.CGColor }
    }
    
    @IBInspectable var strokeColor: UIColor = UIColor.whiteColor() {
        didSet { layer.borderColor = strokeColor.CGColor }
    }
    
    @IBInspectable var textColor: UIColor = UIColor.blackColor() {
        didSet {
            setTitleColor(textColor, forState: .Normal)
            setTitleColor(textColor.colorWithAlphaComponent(0.3), forState: .Highlighted)
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet { layer.borderWidth = borderWidth }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet { layer.cornerRadius = cornerRadius }
    }
    
    @IBInspectable var disable: Bool = true {
        didSet { userInteractionEnabled = disable }
    }
    
    @IBInspectable var loading: Bool = true
    
    private var keepImage: UIImage?
    private var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.White)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bootstrap()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bootstrap()
    }
    
    private func bootstrap() {
        keepImage = imageView?.image
        addSubview(setupSpinner(true))
    }
    
    private func setupSpinner(hidden: Bool) -> UIActivityIndicatorView {
        activityIndicator.color = spinnerColor
        activityIndicator.hidden = hidden
        activityIndicator.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        activityIndicator.center = CGPointMake(bounds.size.width/2, bounds.size.height/2)
        return activityIndicator
    }
    
    func startAnimating() {
        if loading {
            setupSpinner(false)
            activityIndicator.startAnimating()
            setTitleColor(UIColor.clearColor(), forState: .Normal)
            setTitleColor(UIColor.clearColor(), forState: .Highlighted)
            setImage(nil, forState: .Normal)
            setImage(nil, forState: .Highlighted)
        }
    }
    
    func stopAnimating() {
        if loading {
            setupSpinner(true)
            activityIndicator.stopAnimating()
            let color = textColor
            textColor = color
            setImage(keepImage, forState: .Normal)
            setImage(keepImage, forState: .Highlighted)
        }
    }
    
    override func beginTrackingWithTouch(touch: UITouch, withEvent event: UIEvent?) -> Bool {
        startAnimating()
        
        return super.beginTrackingWithTouch(touch, withEvent: event)
    }
}
