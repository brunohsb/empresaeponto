//
//  CreateAcountVC.h
//  empresaeponto
//
//  Created by Mauro André Barros Mazzola on 4/11/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CreateAcountVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtEmpresa;
@property (weak, nonatomic) IBOutlet UITextField *txtCargo;
@property (weak, nonatomic) IBOutlet UIImageView *imgProfile;
- (IBAction)btnCadastrar:(id)sender;


@end
