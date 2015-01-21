//
//  Person.m
//  ObjC
//
//  Created by Ilton  Garcia on 21/01/15.
//  Copyright (c) 2015 EstudosLivres. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)initWith:(NSString *)cpf name:(NSString *)name birthdate:(NSString *)birthdate {
    self = [super init];
    
    _cpf = cpf;
    _name = name;
    _birthdate = birthdate;
    
    return self;
}

-(int) age {
    int birth_length = ((int)_birthdate.length);
    int year_i_init = birth_length-4;
    int year_length = 4;
    int birth_year = [_birthdate substringWithRange:NSMakeRange(year_i_init, year_length)].intValue;

    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy"];
    int currentYear = [df stringFromDate:[NSDate date]].intValue;
    
    return currentYear-birth_year;
}
@end
