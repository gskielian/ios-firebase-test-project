//
//  ViewController.h
//  Firebase-Test-iOS
//
//  Created by Gregory Kielian on 7/11/16.
//  Copyright © 2016 foodRev. All rights reserved.
//

#import <UIKit/UIKit.h>

@import Firebase;
@import FirebaseDatabaseUI;

@interface ViewController : UIViewController
@property(strong, nonatomic) FIRDatabaseReference *ref;


@end

