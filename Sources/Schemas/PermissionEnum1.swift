import Foundation

public enum PermissionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case authzReadAccess = "authz.readAccess"
    case shippingReadOrders = "shipping.readOrders"
    case shippingManageOrders = "shipping.manageOrders"
    case shippingRecordTaskProgress = "shipping.recordTaskProgress"
    case shippingCorrectTaskProgress = "shipping.correctTaskProgress"
    case shippingBookCargoOnFlight = "shipping.bookCargoOnFlight"
    case shippingManageOrderTemplates = "shipping.manageOrderTemplates"
    case shippingManageDrivers = "shipping.manageDrivers"
    case shippingManageDriverCompliance = "shipping.manageDriverCompliance"
}