//
//  DriVerInTemeVC.swift
//  Driver
//
//  Created by Александр Сабри on 21/11/2016.
//  Copyright © 2016 Александр Сабри. All rights reserved.
//

import UIKit

class DriVerInTemeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! ManyDriverCell
        
        cell.driverLbl.text = "Bot"
        cell.countDriverLbl.text = "\(numDefolt)"
        
        
        let whiteRoundedView : UIView = UIView(frame: CGRect.init(x: 0, y: 5, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        whiteRoundedView.layer.backgroundColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [1.0, 1.0, 1.0, 1.0])
        whiteRoundedView.layer.masksToBounds = false
        whiteRoundedView.layer.cornerRadius = 2.0
        whiteRoundedView.layer.shadowOffset = CGSize.init(width: -1, height: 1)
        whiteRoundedView.layer.shadowOpacity = 0.2
        
        cell.contentView.addSubview(whiteRoundedView)
        cell.contentView.sendSubview(toBack: whiteRoundedView)
        
        
        return cell
    }
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var takeAwayUnderLine: UIImageView!
    @IBOutlet weak var driversNumber: UILabel!
    @IBOutlet weak var btnMinusOut: UIButton!
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var manydrivertable: UITableView!
    @IBOutlet weak var btn1: AnimatableButton!
    @IBOutlet weak var btn3: AnimatableButton!
    @IBOutlet weak var btnMany: AnimatableButton!

    
    var numDefolt: Int = 1
    
    
    
    override func viewDidLoad() {
        manydrivertable.isHidden = true
        btn1.isHidden = true
        btn3.isHidden = true

    
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    func drNumberplus() {
        numDefolt += 1
        self.driversNumber.text = "\(numDefolt)"
        if numDefolt >= 1 {
            lbl1.isHidden = true
            txt1.isHidden = true
            takeAwayUnderLine.isHidden = true
            locationImage.isHidden = true
            manydrivertable.isHidden = false
            self.manydrivertable.reloadData()
            
        } else {
            lbl1.isHidden = false
            txt1.isHidden = false
            takeAwayUnderLine.isHidden = false
            manydrivertable.isHidden = true
        }
    }
    
    func drNumberMinus() {
        numDefolt -= 1
        self.driversNumber.text = "\(numDefolt)"
        if numDefolt > 1{
            
            lbl1.isHidden = true
            txt1.isHidden = true
            takeAwayUnderLine.isHidden = true
            manydrivertable.isHidden = false
            self.manydrivertable.reloadData()
            
        } else {
            lbl1.isHidden = false
            txt1.isHidden = false
            takeAwayUnderLine.isHidden = false
            manydrivertable.isHidden = true
        }

    }
    
    func btn1display(){
        if numDefolt == 2 {
            btn1.isHidden = false
        } else if numDefolt == 1{
            self.btn1.isHidden = true
        }
    }
    
//    func btn3display() {
//        if numDefolt == 3 {
//            btn3.isHidden = false
//        }else{
//            btn3.isHidden = true
//        }
//    }
    
    func btnminusStatus() {
        if numDefolt <= 1 {
            btnMinusOut.isEnabled = false
        } else {
            btnMinusOut.isEnabled = true
        }
    }
    
    @IBAction func btnplus(_ sender: Any) {
        btn1display()
//        btn3display()
        drNumberplus()
        btnminusStatus()
        print(numDefolt)
        
    }
    @IBAction func btnMinus(_ sender: Any) {
        btn1display()
//        btn3display()
        drNumberMinus()
        btnminusStatus()
        print(numDefolt)
        
    }
    @IBOutlet weak var lbl2: UILabel!
    
    
    //Mark test tableview

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numDefolt
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! ManyDriverCell
        
        cell.driverLbl.text = "Bot"
        cell.countDriverLbl.text = "\(numDefolt)"
        
        return cell
    }

}
