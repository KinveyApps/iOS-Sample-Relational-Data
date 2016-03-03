import Foundation

class Team : NSObject {
    
    var objectId: String?
    var name: String?
    
    override func hostToKinveyPropertyMapping() -> [NSObject : AnyObject]! {
        return [
            "objectId" : KCSEntityKeyId,
            "name" : "name"
        ]
    }
    
}

class Player : NSObject {
    var objectId: String?
    var teamName : NSString?
    var team :Team?
    var firstName : NSString?
    var lastName : NSString?
    
    //Inivitation.swift
    override func hostToKinveyPropertyMapping() -> [NSObject : AnyObject]! {
        return [
            "objectId" : KCSEntityKeyId,
            "teamName" : "teamName",
            "team" : "team",
            "firstName" : KCSUserAttributeGivenname,
            "lastName" :KCSUserAttributeSurname,
        ]
    }
    
    override class func kinveyPropertyToCollectionMapping() -> [NSObject : AnyObject]! {
        return [
            "team" : "Teams",
        ]
    }
    
    override func referenceKinveyPropertiesOfObjectsToSave() -> [AnyObject]! {
        return [ "team" ]
    }
    
}
