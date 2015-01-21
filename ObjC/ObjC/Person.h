//
//  Person.h
//  ObjC
//
//  Created by Ilton  Garcia on 21/01/15.
//  Copyright (c) 2015 EstudosLivres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
// Attrs
@property NSString *cpf;
@property NSString *name;
@property NSString *birthdate;

// Methods
-(id) initWith: (NSString*)cpf name:(NSString *)name birthdate:(NSString *)birthdate;
-(int) age;
@end
