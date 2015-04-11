//
//  RecoverPWDViewController.h
//  empresaeponto
//
//  Created by Isac Morandin on 11/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecoverPWDViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *fieldEmail;
- (IBAction)buttonSend:(id)sender;


@end
