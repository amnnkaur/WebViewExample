//
//  ViewController.swift
//  WebViewExample
//
//  Created by moxDroid on 2020-03-24.
//  Copyright © 2020 moxDroid. All rights reserved.
//

import UIKit
//Need to use
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebKitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLambtonUrl()
    }
    
    
    func loadLambtonUrl()
    {
        let url = URL(string: "https://www.lambtoncollege.ca/")
        let urlReq = URLRequest(url: url!)
        myWebKitView.load(urlReq)
    }
    
    func loadHtmlString()
    {
        let htmlString = "<h1>Hello World</h1>"
        myWebKitView.loadHTMLString(htmlString, baseURL: nil)
        
    }
    
     @IBAction func btnHistory(_ sender: Any)
    {
        if myWebKitView.canGoBack
        {
            let historyList =  myWebKitView.backForwardList.backList
            if historyList.count > 0
            {
                for item in historyList {
                    print("\(String(describing: item.title)) -  \(item.url.absoluteURL)")
                }
            }
        }
    }

    @IBAction func btnNavigation(_ sender: UIBarButtonItem)
    {
        switch sender.tag {
        case 0://Home Button is pressed
            myWebKitView.reloadFromOrigin()
        case 1://Prev Button is pressed
            if myWebKitView.canGoBack
            {
                print("Go back")
                myWebKitView.goBack()
            }else
            {
                print("Can't Go back")
            }
            case 2:
            if iWebView.canGoForward{
                iWebView.goForward()
              }else{
         
              }
            case 3:
                iWebView.reload()
 
        default:
            print("No Navigation action found...")
        }
    }
    
}

