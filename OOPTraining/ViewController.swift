//
//  ViewController.swift
//  OOPTraining
//
//  Created by Duy Nguyen on 7/10/17.
//  Copyright © 2017 Duy Nguyen. All rights reserved.
//

import UIKit

//class ReferenceString : Equatable {
//    var value : String
//    init(_ value: String) {
//        self.value = value
//    }
//}
//
//extension ReferenceString {
//    static func ==(lhs: ReferenceString, rhs: ReferenceString) -> Bool {
//        return lhs.value == rhs.value
//    }
//}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func compareIntegers(_ sender: Any) {
        let a : NSNumber = NSNumber(value: 2)
        let b : NSNumber = NSNumber(value: 2)
        
        showToast(a.isEqual(to:b) ? "a equals b" : "a not equals b")
        showToast(a == b ? "a == b" : "a != b")
    }
    
    @IBAction func compareStrings(_ sender: Any) {
        let a : String = "value"
        let b : String = "value"
        let c : NSString = NSString(string: "value")
        let d : NSString = NSString(string: "value")
        
//        showToast(a == b ? "a == b" : "a != b")
        
//        showToast(c === NSString(string: a) ? "a equals c" : "a not equals c")
//        showToast(a == (c as String) ? "a == c" : "a != c")
        
        showToast(c === d ? "c equals d" : "c not equals d")
        showToast(c == d ? "c == d" : "c != d")
    }
    
    @IBAction func compareObjects(_ sender: Any) {
        let a : Product = Product(1, name: "Product A")
        let b : Product = Product(2, name: "Product B")
        
        showToast(a === b ? "a equals b" : "a not equals b")
        showToast(a == b ? "a == b" : "a != b")
    }
    
    @IBAction func referencesCount(_ sender: Any) {
        let start = Date()
        
        var sum = NSNumber(value: 0)
        for i in 0..<(10 * 1000 * 1000) {
            sum = NSNumber(value: sum.intValue + i)
        }
        
        let elapsed = Date().timeIntervalSince(start)
        showToast("\(elapsed)")
    }
    
    @IBAction func primitiveCount(_ sender: Any) {
        let start = Date()
        
        var sum : Int = 0
        for i in 0..<(10 * 1000 * 1000) {
            sum += i
        }
        
        let elapsed = Date().timeIntervalSince(start)
        showToast("\(elapsed)")
    }
    
    @IBAction func boxingCount(_ sender: Any) {
        let start = Date()
        
        let primitive : Int = 1
        for i in 0..<(10 * 1000 * 1000) {
            let box = NSNumber(value: primitive)
        }
        
        let elapsed = Date().timeIntervalSince(start)
        showToast("\(elapsed)")
    }
    
    @IBAction func unboxingCount(_ sender: Any) {
        let start = Date()
        
        let wrapper = NSNumber(value: 1)
        for i in 0..<(10 * 1000 * 1000) {
            let unbox = wrapper.intValue
        }
        
        let elapsed = Date().timeIntervalSince(start)
        showToast("\(elapsed)")
    }
    
    @IBAction func lsp(_ sender: Any) {
    }
    
    func showToast(_ message: String, duration: Int = 2) {
        let toast = Toast(text: message, duration: TimeInterval(duration))
        toast.show()
    }
}

