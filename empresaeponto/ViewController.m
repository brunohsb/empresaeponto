//
//  ViewController.m
//  empresaeponto
//
//  Created by Rafael Assis on 4/4/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)logarUsuario:(id)sender {
    
    if ([_txtLogin.text isEqual: @""] && [_txtSenha.text isEqual:@""]) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Atenção" message:@"Usuário não encontrado" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
        [alertView show];
        
    } else {
        [self autenticarUsuario];
    }
}

-(void) autenticarUsuario{
    //
}


@end
