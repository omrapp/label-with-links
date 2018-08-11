//
//  ViewController.swift
//  LabelWithTapLinks
//
//  Created by Omar Ayed on 7/29/18.
//  Copyright © 2018 Omar Ayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tapLabel: UILabelWithTapLinks!
    @IBOutlet weak var tapLabel2: UILabelWithTapLinks!
    
    let links = ["Google", "Facebook", "Twitter", "Youtube"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tapLabel.text = "1. To open Google website click here.\n2. To open Facebook website click here.\n3. To open Twitter website click here,\n\n By signing up you agree to our Terms & Conditions and Privacy Policy."
        
        tapLabel.addTapLink(tapLink: "click here", color: .red) { (link) in
            print("Google link Tap")
        }
        
        tapLabel.addTapLink(tapLink: "click here", color: .blue) { (link) in
            print("Facebook link Tap")
        }
        
        tapLabel.addTapLink(tapLink: "click here", font: UIFont.boldSystemFont(ofSize: 25), color: .orange) { (link) in
            print("Twitter link Tap")
        }
        
        tapLabel.addTapLink(tapLink: "Terms & Conditions") { (link) in
            print("Terms & Conditions")
        }
        
        tapLabel.addTapLink(tapLink: "Privacy Policy") { (link) in
            print("Privacy Policy")
        }
       
       
        
        tapLabel2.text = "Click Any link to open it \nGoogle, Facebook, Twitter and Youtube."
        tapLabel2.addTapLinks(tapLinks: links, color: .blue) { (link) in
            print(link ?? "")
        }
        
        
    }



}

