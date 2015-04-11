//
//  RecoverPWDViewController.m
//  empresaeponto
//
//  Created by Isac Morandin on 11/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import "RecoverPWDViewController.h"

@interface RecoverPWDViewController ()

@end

@implementation RecoverPWDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonSend:(id)sender
{
    
    if ([self.fieldEmail.text isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atenção!" message:@"O campo de e-mail não pode ser em branco." delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        alert.tag = 0;
        [alert show];
        
        
        
    
        
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atenção!" message:@"Foi enviado com sucesso!" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
    }
    
  
    
}



@end
