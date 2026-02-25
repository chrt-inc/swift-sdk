import Foundation

extension Requests {
    public struct BodyPostTaskGroupsS3ObjectAddV1ShippingTaskGroupsS3ObjectAddV1TaskGroupIdPost {
        public let file: String

        public init(
            file: String
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostTaskGroupsS3ObjectAddV1ShippingTaskGroupsS3ObjectAddV1TaskGroupIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .field(file, fieldName: "file")
        ]
    }
}