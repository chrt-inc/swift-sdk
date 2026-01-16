import Foundation

public enum PaymentVectorTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case shipperPayForwarder = "shipper_pay_forwarder"
    case forwarderPayCourier = "forwarder_pay_courier"
    case shipperPayCourier = "shipper_pay_courier"
    case courierPayDriver = "courier_pay_driver"
}