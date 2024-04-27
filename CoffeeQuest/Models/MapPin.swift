

import Foundation
import MapKit

public class MapPin: NSObject {
  
  // MARK: - Properties
  public let coordinate: CLLocationCoordinate2D
  public let name: String
  public let rating: Double
  
  // MARK: - Object Lifecycle
  public init(coordinate: CLLocationCoordinate2D,
              name: String,
              rating: Double) {
    self.coordinate = coordinate
    self.name = name
    self.rating = rating
  }
}

// MARK: - MKAnnotation
extension MapPin: MKAnnotation {
  
  public var title: String? {
    return name
  }
}
