//
//  CreateAcountVC.m
//  empresaeponto
//
//  Created by Mauro André Barros Mazzola on 4/11/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import "CreateAcountVC.h"

@implementation CreateAcountVC


- (IBAction)btnCadastrar:(id)sender {
    if ([self ValidaCadastro]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Parabéns"
                                                        message:@"Cadastro realizado com sucesso!"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"Ok", nil];
        [alert show];
    }
}
- (BOOL) ValidaCadastro{
    for (id txtAll in self.view.subviews) {
        
        UITextField * currentTextField = (UITextField *)txtAll;
        
        if ( [txtAll isKindOfClass:UITextField.class ] && [currentTextField.text isEqualToString:@""]) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erro - Campo em branco"
                                                            message:@"Campo deve ser preenchido"
                                                           delegate:nil
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Ok", nil ];
            [alert show];
            currentTextField.backgroundColor = [UIColor lightGrayColor];
            return NO;
        }
        
    }
    return YES;
}
@end
