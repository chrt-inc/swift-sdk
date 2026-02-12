import Foundation

public enum LineItemEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case baseRate = "base_rate"
    case additionalMileage = "additional_mileage"
    case longDistanceMileage = "long_distance_mileage"
    case fuel
    case extraStop = "extra_stop"
    case dangerousGoods = "dangerous_goods"
    case equipment
    case specialVehicle = "special_vehicle"
    case afterHours = "after_hours"
    case weekend
    case holiday
    case flight
    case insurance
    case offNetworkCarrier = "off_network_carrier"
    case waitTime = "wait_time"
    case attempt
    case parking
    case tolls
    case additionalFee = "additional_fee"
    case adjustment
    case dispute
    case other
    case trackingDeviceLabel = "tracking_device_label"
    case trackingDeviceTag = "tracking_device_tag"
    case trackingDeviceOther = "tracking_device_other"
}