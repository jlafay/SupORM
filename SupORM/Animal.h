//
//  Animal.h
//  SupORM
//
//  Created by Harmony on 25/03/2014.
//  Copyright (c) 2014 harmony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SupORM.h"

@interface Animal : SupORM
{
    @public
    NSString *name;
    NSString *type;
    int age;
}
-(id)init;
@property (nonatomic) NSString *animalName;
@end
