//
//  AppearanceTestDemoTests.swift
//  AppearanceTestDemoTests
//
//  Created by dasdom on 17.03.16.
//  Copyright © 2016 dasdom. All rights reserved.
//

import XCTest
@testable import AppearanceTestDemo

class AppearanceTestDemoTests: XCTestCase {
  
  var sut: ViewController!
  
  override func setUp() {
    super.setUp()
    sut = ViewController()
  }
  
  func testLoading() {
    _ = sut.view
    
    XCTAssertTrue(sut.viewDidLoadGotCalled)
    XCTAssertFalse(sut.viewWillLayoutSubviewsGotCalled)
    XCTAssertFalse(sut.viewDidLayoutSubviewsGotCalled)
    XCTAssertFalse(sut.viewWillAppearGotCalled)
    XCTAssertFalse(sut.viewDidAppearGotCalled)
  }
  
  func testAppearance() {
    sut.beginAppearanceTransition(true, animated: false)
    sut.endAppearanceTransition()
    
    XCTAssertTrue(sut.viewDidLoadGotCalled)
    XCTAssertFalse(sut.viewWillLayoutSubviewsGotCalled)
    XCTAssertFalse(sut.viewDidLayoutSubviewsGotCalled)
    XCTAssertTrue(sut.viewWillAppearGotCalled)
    XCTAssertTrue(sut.viewDidAppearGotCalled)
  }
  
  func testLayout() {
    sut.view.layoutIfNeeded()
    
    XCTAssertTrue(sut.viewDidLoadGotCalled)
    XCTAssertTrue(sut.viewWillLayoutSubviewsGotCalled)
    XCTAssertTrue(sut.viewDidLayoutSubviewsGotCalled)
    XCTAssertFalse(sut.viewWillAppearGotCalled)
    XCTAssertFalse(sut.viewDidAppearGotCalled)
  }
  
  func testSegue() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let sut = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
    
    sut.performSegueWithIdentifier("Foo", sender: nil)
    
    XCTAssertTrue(sut.prepareForSegueGotCalled)
  }
}
