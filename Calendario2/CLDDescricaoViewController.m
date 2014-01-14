//
//  CLDDescricaoViewController.m
//  Calendario2
//
//  Created by Leonardo Gisler Dalmolin on 14/01/14.
//  Copyright (c) 2014 Leonardo Dalmolin. All rights reserved.
//

#import "CLDDescricaoViewController.h"

@interface CLDDescricaoViewController ()

@end

@implementation CLDDescricaoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self descricao];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) descricao{
    switch (_m) {
        case 1:
            if (_d == 1) {
                _lbDesc.text = @"01 - Réveillon";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 2:
            if (_d == 2) {
                _lbDesc.text = @"02 - Nossa Senhora dos Navegantes";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 3:
            if (_d == 4) {
                _lbDesc.text = @"04 - Carnaval";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 4:
            if (_d == 17) {
                _lbDesc.text = @"17 - Quinta-Feira Santa";
            }
            else if (_d == 18){
                _lbDesc.text = @"18 - Sexta-Feira Santa";
            }
            else if (_d == 19){
                _lbDesc.text = @"19 - Sábado de Aleluia";
            }
            else if (_d == 20){
                _lbDesc.text = @"20 - Páscoa";
            }
            else if (_d == 21){
                _lbDesc.text = @"21 - Tiradentes";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 5:
            if (_d == 1) {
                _lbDesc.text = @"01 - Dia do Trabalho";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 6:
            if (_d == 12) {
                _lbDesc.text = @"12 - Copa do Mundo";
            }
            else if (_d == 17){
                _lbDesc.text = @"17 - Copa do Mundo";
            }
            else if (_d == 18){
                _lbDesc.text = @"18 - Copa do Mundo";
            }
            else if (_d == 19){
                _lbDesc.text = @"19 - Corpus Christi";
            }
            else if (_d == 23){
                _lbDesc.text = @"23 - Copa do Mundo";
            }
            else if (_d == 25){
                _lbDesc.text = @"25 - Copa do Mundo";
            }
            else if (_d == 30){
                _lbDesc.text = @"30 - Copa do Mundo";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 7:
            _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            break;
        case 8:
            _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            break;
        case 9:
            if (_d == 7) {
                _lbDesc.text = @"07 - Independência do Brasil";
            }
            else if (_d == 20){
                _lbDesc.text = @"20 - Revolução Farroupilha";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 10:
            if (_d == 12) {
                _lbDesc.text = @"12 - Nossa Senhora Aparecida";
            }
            else if (_d == 15){
                _lbDesc.text = @"15 - Dia do Professor";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 11:
            if (_d == 2) {
                _lbDesc.text = @"02 - Finados";
            }
            else if (_d == 15){
                _lbDesc.text = @"15 - Proclamação da República";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        case 12:
            if (_d == 25) {
                _lbDesc.text = @"25 - Natal";
            }
            else {
                _lbDesc.text = [NSString stringWithFormat: @"Dia %i", _d ] ;
            }
            break;
        default:
            break;
    }
}


@end
