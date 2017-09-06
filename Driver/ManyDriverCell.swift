//
//  ManyDriverCell.swift
//  Driver
//
//  Created by Александр Сабри on 27/12/2016.
//  Copyright © 2016 Александр Сабри. All rights reserved.
//

import UIKit

class ManyDriverCell: UITableViewCell {
    
    var isObserving = false;
    
    @IBOutlet weak var allShitStackView: UIStackView!
    @IBOutlet weak var WhenToPick: UITextField!
    @IBOutlet weak var toAllLbl: UILabel!
    @IBOutlet weak var toAllSwitch: UISwitch!
    @IBOutlet weak var clientNumber: UITextField!
    @IBOutlet weak var driverDeatalesBtn: UIButton!
    @IBOutlet weak var wheretopickTextField: UITextField!
    @IBOutlet weak var countDriverLbl: UILabel!
    @IBOutlet weak var driverLbl: UILabel!
    
    class var expandedHeight: CGFloat { get { return 244 } }
    class var defaultHeight: CGFloat  { get { return 44  } }
    
        func checkHeight(){
            allShitStackView.isHidden = (frame.size.height < ManyDriverCell.expandedHeight)
        }
 
    func watchFrameChanges() {
        if !isObserving {
            addObserver(self, forKeyPath: "frame", options: [NSKeyValueObservingOptions.new, NSKeyValueObservingOptions.initial], context: nil)
            isObserving = true;
        }
    }
    
    func ignoreFrameChanges() {
        if isObserving {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false;
        }
    }
    
    func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutableRawPointer) {
        if keyPath == "frame" {
            checkHeight()
        }
    }


}
