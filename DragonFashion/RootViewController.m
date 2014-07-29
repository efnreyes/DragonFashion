//
//  ViewController.m
//  DragonFashion
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "RootViewController.h"
#import "Dragon.h"

@interface RootViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Dragon *smaug = [[Dragon alloc] init];
    smaug.name = @"Smaug";
    smaug.signatureClothingItem = @"High heels";
    Dragon *puff = [[Dragon alloc] init];
    puff.name = @"Puff the Magic Dragon";
    puff.signatureClothingItem = @"scarf";
    Dragon *charizard = [[Dragon alloc] init];
    charizard.name = @"Charizard";
    charizard.signatureClothingItem = @"ring";
    Dragon *norbert = [[Dragon alloc] init];
    norbert.name = @"Norbert";
    norbert.signatureClothingItem = @"cigar";
    Dragon *toothless = [[Dragon alloc] init];
    toothless.name = @"Toothless";
    toothless.signatureClothingItem = @"saddle";
    self.dragons = [NSMutableArray arrayWithObjects:smaug, puff, charizard, norbert, toothless, nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellID"];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}
@end
