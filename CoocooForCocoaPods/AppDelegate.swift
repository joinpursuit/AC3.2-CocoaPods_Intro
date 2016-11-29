//
//  AppDelegate.swift
//  CoocooForCocoaPods
//
//  Created by Louis Tur on 11/29/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    // Making a basic request
//    Alamofire.request("https://randomuser.me/api").responseJSON { (response) in
//      print(" \(response.request)")
//      print(" \(response.response)")
//      print(" \(response.result)")
//      
//      if let json = response.result.value {
//        print("JSON: \(json)")
//      }
//    }
    
    
    // Validating A Request
    // Checks 200...299 range, + verifies Accept in Request == Content-Type in Response
//    Alamofire.request("https://ramuser.me/api").validate().responseJSON { (response) in
//      print(" \(response.request)")
//      print(" \(response.response)")
//      print(" \(response.result)")
//      
//      if let json = response.result.value {
//        print("JSON: \(json)")
//      }
//    }
    
    // Put Request
//    Alamofire.request("https://jsonplaceholder.typicode.com/posts", method: .post).validate().responseJSON { (response) in
//      
//      if let json = response.result.value {
//        print("JSON \(json)")
//      }
//      
//    }
    
    let placeholderParams: Parameters = [
      "title" : "Dubious Facts",
      "body" : "Coconuts are mammals because they have hair and produce milk.",
      "userId" : 1
    ]
    
//    Alamofire.request("https://jsonplaceholder.typicode.com/posts", method: .post, parameters: placeholderParams).validate().responseJSON { (response) in
//      
//      if let json = response.result.value {
//        print("JSON \(json)")
//      }
//      
//    }
    
    // Headers, wut?
    let placeholderHeaders: HTTPHeaders = [
      "Accept" : "application/json"
    ]
    
    Alamofire.request("https://jsonplaceholder.typicode.com/posts", method: .post,parameters: placeholderParams, headers: placeholderHeaders).validate().responseJSON { (response) in
      
      print("Response: \(response.response?.allHeaderFields)")
      if let json = response.result.value {
        print("JSON \(json)")
      }
      
    }
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

