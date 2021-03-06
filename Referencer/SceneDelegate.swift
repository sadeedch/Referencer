//
//  SceneDelegate.swift
//  Referencer
//
//  Created by Sadeed Ahmed  on 3/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    let groundList = GroundList ()
    var starArray: GroundList = GroundList()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        
        
        /*
        This is the dummy data created to populate and append the array.
        */
        groundList.grounds.append(Ground("https://www.abc.net.au/news/image/5175326-3x2-940x627.jpg","MCG","Melbourne", "100024", "1853", "Melbourne Cricket Club", ""))
    groundList.grounds.append(Ground("https://assets.atdw-online.com.au/images/58eb0e41d72e0aa26d1b765a8447629f.jpeg?rect=127%2c0%2c2053%2c1540&w=1200","Gabba","Brisbane", "42000", "1895", "Stadiums QLD", ""))
        
        groundList.grounds.append(Ground("https://www.austadiums.com/stadiums/photos/Sydney-Cricket-Ground.jpg","SCG","Sydney", "48601", "1848", "Sydney Cricket Ground Trust", ""))
        
        groundList.grounds.append(Ground("https://www.austadiums.com/stadiums/photos/optus-stadium-3.jpg","Optus Stadium","Perth", "60000", "2017", "Vanues Live", ""))
        
         
        
        let contentView = ContentView(groundList: groundList)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

