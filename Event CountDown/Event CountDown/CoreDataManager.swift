//
//  CoreDataManager.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//
import UIKit
import CoreData
// created a CoreDataManager class
final class CoreDataManager {
  lazy var persistentContainer: NSPersistentContainer = {
    let persistentContainer = NSPersistentContainer(name: "Event_CountDown")
    persistentContainer.loadPersistentStores { _, error in
      print(error?.localizedDescription ?? "" )
    }
    return persistentContainer
  }()
  
  var managedObjectContext: NSManagedObjectContext {
    persistentContainer.viewContext
  }
  
  func SaveEvent(name: String, date:Date, image: UIImage){
    let event = Event(context: managedObjectContext)
    event.setValue(name, forKey: "name")
    let imageData = image.jpegData(compressionQuality: 1)
    event.setValue(imageData, forKey: "image")
    event.setValue(date, forKey: "date")
    
    do{
      try managedObjectContext.save()
    }
    catch {
      print(error)
    }
  }
  
  func fetchEvents() -> [Event]{
    do {
      let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
      let events = try managedObjectContext.fetch(fetchRequest)
      return events
    }
    catch{
      print(error)
      return []
    }
    
  }
}
