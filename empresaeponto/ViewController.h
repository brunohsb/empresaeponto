//
//  ViewController.h
//  empresaeponto
//
//  Created by Rafael Assis on 4/4/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtLogin;
@property (strong, nonatomic) IBOutlet UITextField *txtSenha;
@property (strong, nonatomic) IBOutlet UIImageView *imgLogo;

- (IBAction)logarUsuario:(id)sender;

@end

