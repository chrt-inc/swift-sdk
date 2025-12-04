import Foundation

extension Requests {
    public struct BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost {
        public let image: FormFile

        public init(
            image: FormFile
        ) {
            self.image = image
        }
    }
}

extension Requests.BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(image, fieldName: "image")
        ]
    }
}