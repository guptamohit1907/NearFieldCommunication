//
//  ViewController.swift
//  NFCExpDemo
//
//  Created by Mohit Gupta on 01/03/23.
//

import CoreNFC
import UIKit
import IdentivNFCFramework

class ViewController: UIViewController, IdentivNFCFramework {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tag = IdentivNFCTag()
        tag.delegate = self
        tag.tagType = .TYPE2
        tag.newNDEFReaderSession()
        tag.readNDEF()
    }
    
    func didConnectTag(tagType : NFCTagType){
        print(tagType)
    }
    
    func didReadNDEFMessage(messsage : NFCNDEFMessage?){
        print(messsage)
    }


}

