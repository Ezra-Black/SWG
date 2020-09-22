//
//  WelcomeViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/31/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit
import Lottie

class WelcomeViewController: UIViewController {
    
    private var githubAnimationView: AnimationView?
    //Thank you so much for checking out the App!

    override func viewDidLoad() {
        super.viewDidLoad()
        addAnimation()
      
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addAnimation()
    }
    
    private func addAnimation() {
        githubAnimationView = .init(name: "19660-binary-code")
          
        githubAnimationView!.frame = view.frame
          
          // 3. Set animation content mode
          
        githubAnimationView!.contentMode = .scaleToFill
          
          // 4. Set animation loop mode
          
          githubAnimationView!.loopMode = .loop
          
          // 5. Adjust animation speed
          
          githubAnimationView!.animationSpeed = 0.5
          
          view.addSubview(githubAnimationView!)
          
          // 6. Play animation
          
          githubAnimationView!.play()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
