//
//  CustomView.swift
//  XIBCustom
//
//  Created by Kumari Mansi on 19/11/24.
//

import UIKit

class CustomView: UIView {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet var textView: [UITextView]!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        textField.text = "B"
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let _ = loadViewFromNib()
    }
    func loadViewFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth , UIView.AutoresizingMask.flexibleHeight]
        addSubview(view)
        return view
    }
}
    
