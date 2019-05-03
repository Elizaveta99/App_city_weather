//
//  City.m
//  application_2
//
//  Created by Lizaveta Rudzko on 2/12/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

#import "City.h"

@implementation City

-(id)initWithParams: (NSString*) museum_name_
       museum_image: (NSString*) museum_image_
        temperature: (NSNumber*) temperature_
{
    self = [super init];
    if (self)
    {
        self.museum_name = museum_name_;
        self.museum_image = museum_image_;
        self.temperature = temperature_;
    }
    return self;
}

@end
