//
//  Dragon.m
//  DragonFashion
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

-(instancetype) initWithName:(NSString *)name clothingItem:(NSString *)signatureClothingItem {
    self = [super init];
    self.name = name;
    self.signatureClothingItem = signatureClothingItem;
    return self;
}
@end
