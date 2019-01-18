//
//  SwaggerPetstore
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#include "OAuthScopeEnumHelper.h"

/**
* Helper class implementation for OAuthScopeEnum to NSString conversion
*/
@implementation OAuthScopeEnumHelper

+(id) stringFromOAuthScopeEnum:(enum OAuthScopeEnum) oAuthScopeEnum withDefault: (id) defaultValue
{
    switch(oAuthScopeEnum)
    {
        case OAuthScopeWritepets:
            return @"write:pets";

        case OAuthScopeReadpets:
            return @"read:pets";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromOAuthScopeEnumArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [OAuthScopeEnumHelper stringFromOAuthScopeEnum:(enum OAuthScopeEnum) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum OAuthScopeEnum) oAuthScopeEnumFromString:(NSString*) strValue
{
    NSArray* OAuthScopeEnumArray = [NSArray arrayWithObjects:
                                        @"write:pets",
                                        @"read:pets",
                                        nil];

    return (enum OAuthScopeEnum) [OAuthScopeEnumArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) oAuthScopeEnumArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ OAuthScopeEnumHelper oAuthScopeEnumFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end