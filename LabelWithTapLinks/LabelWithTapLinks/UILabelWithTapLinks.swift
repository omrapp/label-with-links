//
//  UILabelWithTapLinks.swift
//  LabelWithTapLinks
//
//  Created by Omar Ayed on 7/29/18.
//  Copyright © 2018 Omar Ayed. All rights reserved.
//

import UIKit

class TapLinkData {
    var tapLink: String?
    var range: NSRange?
    var linkTapped: ((String?) -> ())?
}

class UILabelWithTapLinks: UILabel {
    
    var links = [TapLinkData]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UILabelWithTapLinks.linkTapped))
        addGestureRecognizer(tap)
    }
    
    func addTapLinks(tapLinks: [String], underLine: Bool = true, font: UIFont? = nil, color: UIColor? = nil, linkTapped: ((String?) -> ())? = nil) {
        
        for tapLink in tapLinks {
            addTapLink(tapLink: tapLink, underLine: underLine, font: font, color: color, linkTapped: linkTapped)
        }
    }
    
    func addTapLink(tapLink: String, underLine: Bool = true, font: UIFont? = nil, color: UIColor? = nil, linkTapped: ((String?) -> ())? = nil) {
        
        if let attr = attributedText, let text = text, tapLink != "" {
            
            lineBreakMode = .byWordWrapping
            isUserInteractionEnabled = true
            
            var range = (text as NSString).range(of: tapLink)
            
            let existLinksCount = links.filter { (item) -> Bool in
                item.tapLink == tapLink
                }.count
            
            let link = TapLinkData()
            link.tapLink = tapLink
            link.linkTapped = linkTapped
            
            if existLinksCount > 0 {
                let ranges = text.ranges(of: tapLink)
                let nextRange = ranges[existLinksCount]
                range = nextRange.nsRange
            }
            
            link.range = range
            
            links.append(link)
            
            let linkFont = font ?? self.font ?? UIFont.systemFont(ofSize: UIFont.systemFontSize)
            let linkColor = color ?? self.textColor ?? .blue
            
            let attriString = NSMutableAttributedString(attributedString: attr)
            
            if underLine {
                attriString.addAttribute(.underlineStyle, value: NSUnderlineStyle.styleSingle.rawValue, range: range)
            }
            
            attriString.addAttribute(.font, value: linkFont, range: range)
            attriString.addAttribute(.foregroundColor, value: linkColor, range: range)
            
            attributedText = attriString
            
        }
    }
    
    
    @objc func linkTapped(gesture: UITapGestureRecognizer) {
        
        links.forEach { (item) in
            if let range = item.range {
                if gesture.didTapAttributedTextInLabel(label: self, inRange: range) {
                    item.linkTapped?(item.tapLink)
                }
            }
        }
        
    }
    
    
}


