//
//  HHCustomCornerButton.swift
//  CustomCornerButton
//
//  Created by Syde Hamza Hasan on 16/11/2020.
//  Copyright © 2020 Reignsol. All rights reserved.
//

import UIKit

@IBDesignable public class HHCustomCornerView: UIView {
    @IBInspectable public var radiusUpperLeftCorner: CGFloat = 0
    @IBInspectable public var radiusUpperRightCorner: CGFloat = 0
    @IBInspectable public var radiusLowerLeftCorner: CGFloat = 0
    @IBInspectable public var radiusLowerRightCorner: CGFloat = 0
    @IBInspectable public var stroke: CGFloat = 0
    @IBInspectable public var strokeColor: UIColor = UIColor.blue
    @IBInspectable public var fillColor: UIColor = UIColor.darkGray
    
    var upperLeftPath: UIBezierPath!
    var upperRightPath: UIBezierPath!
    var lowerLeftPath: UIBezierPath!
    var lowerRightPath: UIBezierPath!

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setValue(UIColor.clear, forKeyPath: "self.backgroundColor")
        self.setValue(UIColor.clear, forKeyPath: "self.tintColor")
        self.layoutSubviews()
    }
    
    public override func draw(_ rect: CGRect) {
        guard UIGraphicsGetCurrentContext() != nil else {
            return
        }
        self.backgroundColor = UIColor.clear
        self.tintColor = UIColor.clear
        create()
        modify()
        
    }
    
    private func create() {
        upperLeftPath = UIBezierPath(roundedRect: self.bounds,
        byRoundingCorners: .topLeft,
        cornerRadii: CGSize(width: self.radiusUpperLeftCorner, height: 0))
        
        
        upperRightPath = UIBezierPath(roundedRect: self.bounds,
        byRoundingCorners: .topRight,
        cornerRadii: CGSize(width: self.radiusUpperRightCorner, height: 0))
        
        lowerLeftPath = UIBezierPath(roundedRect: self.bounds,
        byRoundingCorners: .bottomLeft,
        cornerRadii: CGSize(width: self.radiusLowerLeftCorner, height: 0))
        
        lowerRightPath = UIBezierPath(roundedRect: self.bounds,
        byRoundingCorners: .bottomRight,
        cornerRadii: CGSize(width: self.radiusLowerRightCorner, height: 0))
        
        upperLeftPath.addClip()
        upperRightPath.addClip()
        lowerLeftPath.addClip()
        lowerRightPath.addClip()
    }
    
    private func modify() {
        self.fillColor.setFill()
        upperLeftPath.fill()
        upperRightPath.fill()
        lowerLeftPath.fill()
        lowerRightPath.fill()
        
        self.strokeColor.setStroke()
        
        upperLeftPath.lineWidth = self.stroke
        upperRightPath.lineWidth = self.stroke
        lowerLeftPath.lineWidth = self.stroke
        lowerRightPath.lineWidth = self.stroke
        
        upperLeftPath.stroke()
        upperRightPath.stroke()
        lowerLeftPath.stroke()
        lowerRightPath.stroke()

    }
}
