//
//  ViewController.swift
//  AppearanceTestDemo
//
//  Created by dasdom on 17.03.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var viewDidLoadGotCalled = false
  var viewWillAppearGotCalled = false
  var viewDidAppearGotCalled = false
  var viewWillLayoutSubviewsGotCalled = false
  var viewDidLayoutSubviewsGotCalled = false
  var prepareForSegueGotCalled = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewDidLoadGotCalled = true
  }

  override func viewWillLayoutSubviews() {
    viewWillLayoutSubviewsGotCalled = true
  }

  override func viewDidLayoutSubviews() {
    viewDidLayoutSubviewsGotCalled = true
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    viewWillAppearGotCalled = true
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    viewDidAppearGotCalled = true
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    prepareForSegueGotCalled = true
  }
}

