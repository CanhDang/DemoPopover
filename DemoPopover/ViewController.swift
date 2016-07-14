//
//  ViewController.swift
//  DemoPopover
//
//  Created by HuuLuong on 7/13/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var textView_comment: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView_comment.layer.borderWidth = 2
        textView_comment.layer.borderColor = UIColor.grayColor().CGColor
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showView" {
            let controller = segue.destinationViewController
            controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 222, height: 30)
            
        }
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }

    //Bắt sự kiện khi tap các button trên popover view
    //Sử dụng thuộc tính Tag để phân biệt giữa các nút
    
    
    
}

