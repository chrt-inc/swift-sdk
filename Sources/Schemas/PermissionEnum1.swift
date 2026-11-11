import Foundation

public enum PermissionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case authzReadAccess = "authz.readAccess"
    case shippingReadOrders = "shipping.readOrders"
    case shippingListOrders = "shipping.listOrders"
    case shippingUpdateOrderLabels = "shipping.updateOrderLabels"
    case shippingCancelOrders = "shipping.cancelOrders"
    case shippingOpenOrderDrafts = "shipping.openOrderDrafts"
    case shippingUpdateTasks = "shipping.updateTasks"
}