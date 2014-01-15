//
//  CLDDiasViewController.m
//  Calendario2
//
//  Created by Leonardo Gisler Dalmolin on 14/01/14.
//  Copyright (c) 2014 Leonardo Dalmolin. All rights reserved.
//

#import "CLDDiasViewController.h"
#import "CLDDescricaoViewController.h"

@interface CLDDiasViewController ()

@end

@implementation CLDDiasViewController

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
    //[self addDias];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DiasCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    // Configure the cell...
    
    NSDictionary *meses = @{
                            @"Janeiro" : [NSNumber numberWithInt:1],
                            @"Fevereiro" : [NSNumber numberWithInt:2],
                            @"Março" : [NSNumber numberWithInt:3],
                            @"Abril" : [NSNumber numberWithInt:4],
                            @"Maio" : [NSNumber numberWithInt:5],
                            @"Junho" : [NSNumber numberWithInt:6],
                            @"Julho" : [NSNumber numberWithInt:7],
                            @"Agosto" : [NSNumber numberWithInt:8],
                            @"Setembro" : [NSNumber numberWithInt:9],
                            @"Outubro" : [NSNumber numberWithInt:10],
                            @"Novembro" : [NSNumber numberWithInt:11],
                            @"Dezembro" : [NSNumber numberWithInt:12]
                            };
    
    NSInteger x = 35;
    NSInteger y = 5;
    NSInteger idx = 1;
    
    NSInteger d,inicio, da;
    NSArray *feriados;
    
    for (NSString* akey in [meses allKeys]) {
        NSString* aValue = [meses valueForKey:akey];
        if ([self.title isEqualToString:akey])
            _mes = [aValue integerValue];
    }
    
    switch (_mes) {
        case 1:
            d = 31;
            inicio = 3;
            feriados = [NSArray arrayWithObject:@"1"];
            break;
        case 2:
            d = 28;
            inicio = 6;
            feriados = [NSArray arrayWithObject:@"2"];
            break;
        case 3:
            d = 31;
            inicio = 6;
            feriados = [NSArray arrayWithObject:@"4"];
            break;
        case 4:
            d = 30;
            inicio = 2;
            feriados = [NSArray arrayWithObjects:@"17",@"18",@"19",@"20",@"21", nil];
            break;
        case 5:
            d = 31;
            inicio = 4;
            feriados = [NSArray arrayWithObject:@"1"];
            break;
        case 6:
            d = 30;
            inicio = 0;
            feriados = [NSArray arrayWithObjects:@"12", @"17",@"18",@"19",@"23",@"25", @"30", nil];
            break;
        case 7:
            d = 31;
            inicio = 2;
            feriados = [NSArray arrayWithObject:@"0"];
            break;
        case 8:
            d = 31;
            inicio = 5;
            feriados = [NSArray arrayWithObject:@"0"];
            break;
        case 9:
            d = 30;
            inicio = 1;
            feriados = [NSArray arrayWithObjects:@"7",@"20",nil];
            break;
        case 10:
            d = 31;
            inicio = 3;
            feriados = [NSArray arrayWithObjects:@"12",@"15",nil];
            break;
        case 11:
            d = 30;
            inicio = 6;
            feriados = [NSArray arrayWithObjects:@"2",@"15",nil];
            break;
        case 12:
            d = 31;
            inicio = 1;
            feriados = [NSArray arrayWithObject:@"25"];
            break;
        default:
            d = 0;
            inicio = 0;
            feriados = [NSArray arrayWithObject:@"0"];
            break;
    }
    da = 0;
    for (int i=1-inicio; i <= d; i++) {
        da++;
        UIButton *dia = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        if (indexPath.row == idx){
        if (i < 1) {
            [dia setTitle:[NSString stringWithFormat:@" "]  forState:UIControlStateNormal];
            dia.frame = CGRectMake(x, y, 30, 30); // x,y,width,height
            [dia setHidden:YES];
        }
        else{
            [dia setTitle:[NSString stringWithFormat:@"%i",i]  forState:UIControlStateNormal];
            dia.frame = CGRectMake(x, y, 30, 30); // x,y,width,height
            [dia setTag:i];
            for (int j = 0; j < feriados.count; j++) {
                if ([feriados[j] integerValue] == i ) {
                    [dia setBackgroundColor:[UIColor colorWithRed:34.0/255.0 green:34.0/255.0 blue:34.0/255.0 alpha:1.0]];
                }
            }
            [dia addTarget:self action:@selector(actDia:) forControlEvents:UIControlEventTouchUpInside];
            
        }
        [cell addSubview:dia];// add button to your view.
        }
        if (da/7 == 1 && da%7 == 0){
            idx = 2;
            x = 35;
        }
        else if (da/7 == 2 && da%7 == 0){
            idx = 3;
            x = 35;
        }
        else if (da/7 == 3 && da%7 == 0){
            idx = 4;
            x = 35;
        }
        else if (da/7 == 4 && da%7 == 0){
            idx = 5;
            x = 35;
        }
        else if (da/7 == 5 && da%7 == 0){
            idx = 6;
            x = 35;
        }
        else
            x = x + 38;
        
        
    }
    
//    UIButton *dia = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [dia setTitle:[NSString stringWithFormat:@"TESTE"]  forState:UIControlStateNormal];
//    dia.frame = CGRectMake(5, 5, 60, 30); // x,y,width,height
    
    //UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(5, 5, 30, 30)];
    //[btn setBackgroundColor: [UIColor lightGrayColor]];
    
    if (indexPath.row == 0) {
    cell.textLabel.text = @"D     S     T     Q     Q     S     S";
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
//    else if (indexPath.row == 1)
//        [cell addSubview:dia];
    return cell;
}


- (IBAction)actDia:(id)sender{
    _dia = [sender tag];
    [self performSegueWithIdentifier:@"gotoDescricao" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"gotoDescricao"])
    {
        CLDDescricaoViewController *desc = (CLDDescricaoViewController *)segue.destinationViewController;
        desc.m = _mes;
        desc.d = _dia;
        
    }
    
}

- (void)addDias{    // Method for creating button, with background image and other properties
    NSDictionary *meses = @{
                            @"Janeiro" : [NSNumber numberWithInt:1],
                            @"Fevereiro" : [NSNumber numberWithInt:2],
                            @"Março" : [NSNumber numberWithInt:3],
                            @"Abril" : [NSNumber numberWithInt:4],
                            @"Maio" : [NSNumber numberWithInt:5],
                            @"Junho" : [NSNumber numberWithInt:6],
                            @"Julho" : [NSNumber numberWithInt:7],
                            @"Agosto" : [NSNumber numberWithInt:8],
                            @"Setembro" : [NSNumber numberWithInt:9],
                            @"Outubro" : [NSNumber numberWithInt:10],
                            @"Novembro" : [NSNumber numberWithInt:11],
                            @"Dezembro" : [NSNumber numberWithInt:12]
                            };
    
    NSInteger x = 35;
    NSInteger y = 150;
    
    NSInteger d,inicio, da;
    NSArray *feriados;
    
    for (NSString* akey in [meses allKeys]) {
        NSString* aValue = [meses valueForKey:akey];
        if ([self.title isEqualToString:akey])
            _mes = [aValue integerValue];
    }
    
    switch (_mes) {
        case 1:
            d = 31;
            inicio = 3;
            feriados = [NSArray arrayWithObject:@"1"];
            break;
        case 2:
            d = 28;
            inicio = 6;
            feriados = [NSArray arrayWithObject:@"2"];
            break;
        case 3:
            d = 31;
            inicio = 6;
            feriados = [NSArray arrayWithObject:@"4"];
            break;
        case 4:
            d = 30;
            inicio = 2;
            feriados = [NSArray arrayWithObjects:@"17",@"18",@"19",@"20",@"21", nil];
            break;
        case 5:
            d = 31;
            inicio = 4;
            feriados = [NSArray arrayWithObject:@"1"];
            break;
        case 6:
            d = 30;
            inicio = 0;
            feriados = [NSArray arrayWithObjects:@"12", @"17",@"18",@"19",@"23",@"25", @"30", nil];
            break;
        case 7:
            d = 31;
            inicio = 2;
            feriados = [NSArray arrayWithObject:@"0"];
            break;
        case 8:
            d = 31;
            inicio = 5;
            feriados = [NSArray arrayWithObject:@"0"];
            break;
        case 9:
            d = 30;
            inicio = 1;
            feriados = [NSArray arrayWithObjects:@"7",@"20",nil];
            break;
        case 10:
            d = 31;
            inicio = 3;
            feriados = [NSArray arrayWithObjects:@"12",@"15",nil];
            break;
        case 11:
            d = 30;
            inicio = 6;
            feriados = [NSArray arrayWithObjects:@"2",@"15",nil];
            break;
        case 12:
            d = 31;
            inicio = 1;
            feriados = [NSArray arrayWithObject:@"25"];
            break;
        default:
            d = 0;
            inicio = 0;
            feriados = [NSArray arrayWithObject:@"0"];
            break;
    }
    da = 0;
    for (int i=1-inicio; i <= d; i++) {
        da++;
        UIButton *dia = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        if (i < 1) {
            [dia setTitle:[NSString stringWithFormat:@" "]  forState:UIControlStateNormal];
            dia.frame = CGRectMake(x, y, 30, 30); // x,y,width,height
            [dia setHidden:YES];
        }
        else{
            [dia setTitle:[NSString stringWithFormat:@"%i",i]  forState:UIControlStateNormal];
            dia.frame = CGRectMake(x, y, 30, 30); // x,y,width,height
            [dia setTag:i];
            for (int j = 0; j < feriados.count; j++) {
                if ([feriados[j] integerValue] == i ) {
                    [dia setBackgroundColor:[UIColor colorWithRed:34.0/255.0 green:34.0/255.0 blue:34.0/255.0 alpha:1.0]];
                }
            }
            [dia addTarget:self action:@selector(actDia:) forControlEvents:UIControlEventTouchUpInside];
            
        }
        [self.view addSubview:dia];// add button to your view.
        
        if (da%7 == 0)
            y = y+40;
        if (x >= 240)
            x = 35;
        else
            x = x + 38;
        
        
    }
    
}


@end
