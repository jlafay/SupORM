//
//  main.m
//  SupORM
//
//  Created by Harmony on 25/03/2014.
//  Copyright (c) 2014 harmony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Animal.h"
#import "SupORM.h"

int main(int argc, const char * argv[])
{
    Animal * test = [[Animal alloc] init];
    NSLog(@"Allocation de la mémoire pour l'objet \"monkey\".");
    test.animalName = @"bobyyy";
    NSLog(@"Définition de la propriété \"animalName\" de l'objet.");
    test->name = @"bobyyy";
    test->type = @"monkeyyy";
    NSLog(@"Définition des attributs de type string \"name\" et \"type\" de l'objet.");
    test->age = 32;
    NSLog(@"Définition de l'attribut de type integer \"age\" de l'objet.");
    [test insertObject];
    NSLog(@"Création de la base de données si elle n'existe pas puis persistence de l'objet.");
    
    NSArray * dbArray = [test load];
    for(Animal * object in dbArray)
    {
        NSLog(@"name :%@, type :%@, age : %i", object->name, object->type, object->age);
    }
    
    return 0;
}

