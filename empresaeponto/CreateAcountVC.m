//
//  CreateAcountVC.m
//  empresaeponto
//
//  Created by Mauro André Barros Mazzola on 4/11/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import "CreateAcountVC.h"

@implementation CreateAcountVC

- (void)viewDidLoad{
    [super viewDidLoad];
    [self registerForKeyboardNotifications];
}

- (void)registerForKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    
}

- (void)keyboardWasShown:(NSNotification*)aNotification
{
    NSLog(@"1");
    
    CGRect viewTempRect = self.view.frame;
    viewTempRect.origin.y = -120;
    
    [UIView animateWithDuration:0.3 delay:0
                        options:UIViewAnimationOptionCurveEaseIn animations:^{
                            [self.view setFrame:viewTempRect];
                        } completion:nil];
    
    /*NSDictionary* info = [aNotification userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    CGRect aRect = self.view.frame;
    aRect.size.height -= kbSize.height;
    
    if (!CGRectContainsPoint(aRect, _txtPassword.frame.origin) ) {
        
        CGRect viewTempRect = self.view.frame;
        viewTempRect.origin.y = -90;
        [UIView animateWithDuration:0.3 delay:0
                            options:UIViewAnimationOptionCurveEaseIn animations:^{
                                [self.view setFrame:viewTempRect];
                            } completion:nil];
    }*/
    
}

- (void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    NSLog(@"2");
    CGRect viewTempRect = self.view.frame;
    viewTempRect.origin.y = 0;
    [self.view setFrame:viewTempRect];
    /*CGRect viewTempRect = self.view.frame;
    viewTempRect.origin.y = 0;
    [UIView animateWithDuration:0.3 delay:0
                        options:UIViewAnimationOptionCurveEaseIn animations:^{
                            [self.view setFrame:viewTempRect];
                        } completion:nil];*/
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    [textField resignFirstResponder];
    
    switch (textField.tag) {
        case 0:
            [self.txtName becomeFirstResponder];
            break;
        case 1:
            [self.txtEmail becomeFirstResponder];
            break;
            
        default:
            break;
    }
    NSLog(@"LOG RETURN");
    
    return YES;
}


- (IBAction)btnCadastrar:(id)sender {
    if ([self validaCadastro]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Parabéns"
                                                        message:@"Cadastro realizado com sucesso!"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"Ok", nil];
        [alert show];
    }
}

- (BOOL) validaCadastro{
    for (id obj in self.view.subviews) {
        
        if([obj isKindOfClass:UITextField.class]){
            
            UITextField * currentTextField = (UITextField *)obj;
            
            if([currentTextField.text isEqualToString:@""]){
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erro - Existem campos em branco"
                                                                message:@"Campo deve ser preenchido"
                                                               delegate:nil
                                                      cancelButtonTitle:nil
                                                      otherButtonTitles:@"Ok", nil ];
                [alert show];
                currentTextField.backgroundColor = [UIColor lightGrayColor];
                return NO;
            }
            
        }
        
        
    }
    return YES;
}

-(void) msgComum:(NSString *)nome{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erro - Existem campos em branco"
                                                    message:[NSString stringWithFormat:@"O campo %@ deve ser preenchido", nome]
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Ok", nil ];
    [alert show];
    self.txtUserName.backgroundColor = [UIColor lightGrayColor];
}

@end
