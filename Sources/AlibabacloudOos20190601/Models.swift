import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalyzeGitRepositoryRequest : Tea.TeaModel {
    public var branch: String?

    public var clientToken: String?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.branch != nil {
            map["Branch"] = self.branch!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Branch") {
            self.branch = dict["Branch"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OrgId") {
            self.orgId = dict["OrgId"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RepoFullName") {
            self.repoFullName = dict["RepoFullName"] as! String
        }
        if dict.keys.contains("RepoId") {
            self.repoId = dict["RepoId"] as! String
        }
    }
}

public class AnalyzeGitRepositoryResponseBody : Tea.TeaModel {
    public class AnalysisResults : Tea.TeaModel {
        public class BuildFiles : Tea.TeaModel {
            public var fileType: String?

            public var paths: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.paths != nil {
                    map["Paths"] = self.paths!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FileType") {
                    self.fileType = dict["FileType"] as! String
                }
                if dict.keys.contains("Paths") {
                    self.paths = dict["Paths"] as! [String]
                }
            }
        }
        public var buildFiles: [AnalyzeGitRepositoryResponseBody.AnalysisResults.BuildFiles]?

        public var buildType: String?

        public var runtimeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildFiles != nil {
                var tmp : [Any] = []
                for k in self.buildFiles! {
                    tmp.append(k.toMap())
                }
                map["BuildFiles"] = tmp
            }
            if self.buildType != nil {
                map["BuildType"] = self.buildType!
            }
            if self.runtimeType != nil {
                map["RuntimeType"] = self.runtimeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildFiles") {
                var tmp : [AnalyzeGitRepositoryResponseBody.AnalysisResults.BuildFiles] = []
                for v in dict["BuildFiles"] as! [Any] {
                    var model = AnalyzeGitRepositoryResponseBody.AnalysisResults.BuildFiles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.buildFiles = tmp
            }
            if dict.keys.contains("BuildType") {
                self.buildType = dict["BuildType"] as! String
            }
            if dict.keys.contains("RuntimeType") {
                self.runtimeType = dict["RuntimeType"] as! String
            }
        }
    }
    public var analysisResults: [AnalyzeGitRepositoryResponseBody.AnalysisResults]?

    public var count: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysisResults != nil {
            var tmp : [Any] = []
            for k in self.analysisResults! {
                tmp.append(k.toMap())
            }
            map["AnalysisResults"] = tmp
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AnalysisResults") {
            var tmp : [AnalyzeGitRepositoryResponseBody.AnalysisResults] = []
            for v in dict["AnalysisResults"] as! [Any] {
                var model = AnalyzeGitRepositoryResponseBody.AnalysisResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.analysisResults = tmp
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AnalyzeGitRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeGitRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AnalyzeGitRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelExecutionRequest : Tea.TeaModel {
    public var executionId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CancelExecutionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ContinueDeployApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployParameters: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployParameters != nil {
            map["DeployParameters"] = self.deployParameters!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("DeployParameters") {
            self.deployParameters = dict["DeployParameters"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ContinueDeployApplicationGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ContinueDeployApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueDeployApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContinueDeployApplicationGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public class AlarmConfig : Tea.TeaModel {
        public var contactGroups: [String]?

        public var healthCheckUrl: String?

        public var templateIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactGroups != nil {
                map["ContactGroups"] = self.contactGroups!
            }
            if self.healthCheckUrl != nil {
                map["HealthCheckUrl"] = self.healthCheckUrl!
            }
            if self.templateIds != nil {
                map["TemplateIds"] = self.templateIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactGroups") {
                self.contactGroups = dict["ContactGroups"] as! [String]
            }
            if dict.keys.contains("HealthCheckUrl") {
                self.healthCheckUrl = dict["HealthCheckUrl"] as! String
            }
            if dict.keys.contains("TemplateIds") {
                self.templateIds = dict["TemplateIds"] as! [String]
            }
        }
    }
    public var alarmConfig: CreateApplicationRequest.AlarmConfig?

    public var applicationSource: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alarmConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmConfig != nil {
            map["AlarmConfig"] = self.alarmConfig?.toMap()
        }
        if self.applicationSource != nil {
            map["ApplicationSource"] = self.applicationSource!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmConfig") {
            var model = CreateApplicationRequest.AlarmConfig()
            model.fromMap(dict["AlarmConfig"] as! [String: Any])
            self.alarmConfig = model
        }
        if dict.keys.contains("ApplicationSource") {
            self.applicationSource = dict["ApplicationSource"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class CreateApplicationShrinkRequest : Tea.TeaModel {
    public var alarmConfigShrink: String?

    public var applicationSource: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmConfigShrink != nil {
            map["AlarmConfig"] = self.alarmConfigShrink!
        }
        if self.applicationSource != nil {
            map["ApplicationSource"] = self.applicationSource!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmConfig") {
            self.alarmConfigShrink = dict["AlarmConfig"] as! String
        }
        if dict.keys.contains("ApplicationSource") {
            self.applicationSource = dict["ApplicationSource"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var createDate: String?

        public var description_: String?

        public var name: String?

        public var tags: [String: String]?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: String]
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var application: CreateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = CreateApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var clientToken: String?

    public var cmsGroupId: String?

    public var deployRegionId: String?

    public var description_: String?

    public var importTagKey: String?

    public var importTagValue: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cmsGroupId != nil {
            map["CmsGroupId"] = self.cmsGroupId!
        }
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.importTagKey != nil {
            map["ImportTagKey"] = self.importTagKey!
        }
        if self.importTagValue != nil {
            map["ImportTagValue"] = self.importTagValue!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CmsGroupId") {
            self.cmsGroupId = dict["CmsGroupId"] as! String
        }
        if dict.keys.contains("DeployRegionId") {
            self.deployRegionId = dict["DeployRegionId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImportTagKey") {
            self.importTagKey = dict["ImportTagKey"] as! String
        }
        if dict.keys.contains("ImportTagValue") {
            self.importTagValue = dict["ImportTagValue"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateApplicationGroupResponseBody : Tea.TeaModel {
    public class ApplicationGroup : Tea.TeaModel {
        public var applicationName: String?

        public var cmsGroupId: String?

        public var createDate: String?

        public var deployRegionId: String?

        public var description_: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.cmsGroupId != nil {
                map["CmsGroupId"] = self.cmsGroupId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("CmsGroupId") {
                self.cmsGroupId = dict["CmsGroupId"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DeployRegionId") {
                self.deployRegionId = dict["DeployRegionId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImportTagKey") {
                self.importTagKey = dict["ImportTagKey"] as! String
            }
            if dict.keys.contains("ImportTagValue") {
                self.importTagValue = dict["ImportTagValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var applicationGroup: CreateApplicationGroupResponseBody.ApplicationGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroup != nil {
            map["ApplicationGroup"] = self.applicationGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationGroup") {
            var model = CreateApplicationGroupResponseBody.ApplicationGroup()
            model.fromMap(dict["ApplicationGroup"] as! [String: Any])
            self.applicationGroup = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateApplicationGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOpsItemRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var tags: [String: Any]?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedupString") {
            self.dedupString = dict["DedupString"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("Solutions") {
            self.solutions = dict["Solutions"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateOpsItemShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var tagsShrink: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedupString") {
            self.dedupString = dict["DedupString"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("Solutions") {
            self.solutions = dict["Solutions"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateOpsItemResponseBody : Tea.TeaModel {
    public class OpsItem : Tea.TeaModel {
        public var attributes: String?

        public var category: String?

        public var createDate: String?

        public var createdBy: String?

        public var description_: String?

        public var lastModifiedBy: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resourceGroupId: String?

        public var resources: String?

        public var severity: String?

        public var solutions: String?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedBy != nil {
                map["LastModifiedBy"] = self.lastModifiedBy!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.solutions != nil {
                map["Solutions"] = self.solutions!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LastModifiedBy") {
                self.lastModifiedBy = dict["LastModifiedBy"] as! String
            }
            if dict.keys.contains("OpsItemId") {
                self.opsItemId = dict["OpsItemId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! String
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Solutions") {
                self.solutions = dict["Solutions"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var opsItem: CreateOpsItemResponseBody.OpsItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.opsItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItem != nil {
            map["OpsItem"] = self.opsItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpsItem") {
            var model = CreateOpsItemResponseBody.OpsItem()
            model.fromMap(dict["OpsItem"] as! [String: Any])
            self.opsItem = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateOpsItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var type: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Constraints") {
            self.constraints = dict["Constraints"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateParameterShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var type: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Constraints") {
            self.constraints = dict["Constraints"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var parameter: CreateParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") {
            var model = CreateParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePatchBaselineRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var approvalRules: String?

    public var approvedPatches: [String]?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var operationSystem: String?

    public var regionId: String?

    public var rejectedPatches: [String]?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sources: [String]?

    public var tags: [CreatePatchBaselineRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatches != nil {
            map["ApprovedPatches"] = self.approvedPatches!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatches != nil {
            map["RejectedPatches"] = self.rejectedPatches!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalRules") {
            self.approvalRules = dict["ApprovalRules"] as! String
        }
        if dict.keys.contains("ApprovedPatches") {
            self.approvedPatches = dict["ApprovedPatches"] as! [String]
        }
        if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
            self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationSystem") {
            self.operationSystem = dict["OperationSystem"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RejectedPatches") {
            self.rejectedPatches = dict["RejectedPatches"] as! [String]
        }
        if dict.keys.contains("RejectedPatchesAction") {
            self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [String]
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreatePatchBaselineRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreatePatchBaselineRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class CreatePatchBaselineShrinkRequest : Tea.TeaModel {
    public var approvalRules: String?

    public var approvedPatchesShrink: String?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var operationSystem: String?

    public var regionId: String?

    public var rejectedPatchesShrink: String?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sourcesShrink: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatchesShrink != nil {
            map["ApprovedPatches"] = self.approvedPatchesShrink!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatchesShrink != nil {
            map["RejectedPatches"] = self.rejectedPatchesShrink!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalRules") {
            self.approvalRules = dict["ApprovalRules"] as! String
        }
        if dict.keys.contains("ApprovedPatches") {
            self.approvedPatchesShrink = dict["ApprovedPatches"] as! String
        }
        if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
            self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OperationSystem") {
            self.operationSystem = dict["OperationSystem"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RejectedPatches") {
            self.rejectedPatchesShrink = dict["RejectedPatches"] as! String
        }
        if dict.keys.contains("RejectedPatchesAction") {
            self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class CreatePatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var approvalRules: String?

        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var rejectedPatches: [String]?

        public var rejectedPatchesAction: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [CreatePatchBaselineResponseBody.PatchBaseline.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.rejectedPatches != nil {
                map["RejectedPatches"] = self.rejectedPatches!
            }
            if self.rejectedPatchesAction != nil {
                map["RejectedPatchesAction"] = self.rejectedPatchesAction!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("ApprovedPatches") {
                self.approvedPatches = dict["ApprovedPatches"] as! [String]
            }
            if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
                self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("RejectedPatches") {
                self.rejectedPatches = dict["RejectedPatches"] as! [String]
            }
            if dict.keys.contains("RejectedPatchesAction") {
                self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Sources") {
                self.sources = dict["Sources"] as! [String]
            }
            if dict.keys.contains("Tags") {
                var tmp : [CreatePatchBaselineResponseBody.PatchBaseline.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = CreatePatchBaselineResponseBody.PatchBaseline.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: CreatePatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") {
            var model = CreatePatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSecretParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var DKMSInstanceId: String?

    public var description_: String?

    public var keyId: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var type: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Constraints") {
            self.constraints = dict["Constraints"] as! String
        }
        if dict.keys.contains("DKMSInstanceId") {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("KeyId") {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateSecretParameterShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var DKMSInstanceId: String?

    public var description_: String?

    public var keyId: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var type: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Constraints") {
            self.constraints = dict["Constraints"] as! String
        }
        if dict.keys.contains("DKMSInstanceId") {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("KeyId") {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateSecretParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var DKMSInstanceId: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.DKMSInstanceId != nil {
                map["DKMSInstanceId"] = self.DKMSInstanceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("DKMSInstanceId") {
                self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var parameter: CreateSecretParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") {
            var model = CreateSecretParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSecretParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStateConfigurationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parameters: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var tags: [String: Any]?

    public var targets: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigureMode") {
            self.configureMode = dict["ConfigureMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ScheduleExpression") {
            self.scheduleExpression = dict["ScheduleExpression"] as! String
        }
        if dict.keys.contains("ScheduleType") {
            self.scheduleType = dict["ScheduleType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Targets") {
            self.targets = dict["Targets"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class CreateStateConfigurationShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parameters: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var tagsShrink: String?

    public var targets: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigureMode") {
            self.configureMode = dict["ConfigureMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ScheduleExpression") {
            self.scheduleExpression = dict["ScheduleExpression"] as! String
        }
        if dict.keys.contains("ScheduleType") {
            self.scheduleType = dict["ScheduleType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Targets") {
            self.targets = dict["Targets"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class CreateStateConfigurationResponseBody : Tea.TeaModel {
    public class StateConfiguration : Tea.TeaModel {
        public var configureMode: String?

        public var createTime: String?

        public var description_: String?

        public var parameters: [String: Any]?

        public var resourceGroupId: String?

        public var scheduleExpression: String?

        public var scheduleType: String?

        public var stateConfigurationId: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configureMode != nil {
                map["ConfigureMode"] = self.configureMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.stateConfigurationId != nil {
                map["StateConfigurationId"] = self.stateConfigurationId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigureMode") {
                self.configureMode = dict["ConfigureMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! [String: Any]
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ScheduleExpression") {
                self.scheduleExpression = dict["ScheduleExpression"] as! String
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("StateConfigurationId") {
                self.stateConfigurationId = dict["StateConfigurationId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Targets") {
                self.targets = dict["Targets"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
        }
    }
    public var requestId: String?

    public var stateConfiguration: CreateStateConfigurationResponseBody.StateConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stateConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stateConfiguration != nil {
            map["StateConfiguration"] = self.stateConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StateConfiguration") {
            var model = CreateStateConfigurationResponseBody.StateConfiguration()
            model.fromMap(dict["StateConfiguration"] as! [String: Any])
            self.stateConfiguration = model
        }
    }
}

public class CreateStateConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStateConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateStateConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateTemplateShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HasTrigger") {
                self.hasTrigger = dict["HasTrigger"] as! Bool
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("TemplateFormat") {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var template: CreateTemplateResponseBody.Template?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") {
            var model = CreateTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var force: Bool?

    public var name: String?

    public var regionId: String?

    public var retainResource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainResource != nil {
            map["RetainResource"] = self.retainResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetainResource") {
            self.retainResource = dict["RetainResource"] as! Bool
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var name: String?

    public var regionId: String?

    public var retainResource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainResource != nil {
            map["RetainResource"] = self.retainResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetainResource") {
            self.retainResource = dict["RetainResource"] as! Bool
        }
    }
}

public class DeleteApplicationGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteApplicationGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteExecutionsRequest : Tea.TeaModel {
    public var executionIds: String?

    public var force: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionIds != nil {
            map["ExecutionIds"] = self.executionIds!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionIds") {
            self.executionIds = dict["ExecutionIds"] as! String
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteExecutionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOpsItemsRequest : Tea.TeaModel {
    public var opsItemIds: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItemIds != nil {
            map["OpsItemIds"] = self.opsItemIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpsItemIds") {
            self.opsItemIds = dict["OpsItemIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteOpsItemsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteOpsItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOpsItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteOpsItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteParameterRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteParameterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePatchBaselineRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeletePatchBaselineResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecretParameterRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteSecretParameterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSecretParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStateConfigurationsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var stateConfigurationIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stateConfigurationIds != nil {
            map["StateConfigurationIds"] = self.stateConfigurationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StateConfigurationIds") {
            self.stateConfigurationIds = dict["StateConfigurationIds"] as! String
        }
    }
}

public class DeleteStateConfigurationsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteStateConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStateConfigurationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteStateConfigurationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var autoDeleteExecutions: Bool?

    public var regionId: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeleteExecutions != nil {
            map["AutoDeleteExecutions"] = self.autoDeleteExecutions!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoDeleteExecutions") {
            self.autoDeleteExecutions = dict["AutoDeleteExecutions"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplatesRequest : Tea.TeaModel {
    public var autoDeleteExecutions: Bool?

    public var regionId: String?

    public var templateNames: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeleteExecutions != nil {
            map["AutoDeleteExecutions"] = self.autoDeleteExecutions!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateNames != nil {
            map["TemplateNames"] = self.templateNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoDeleteExecutions") {
            self.autoDeleteExecutions = dict["AutoDeleteExecutions"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateNames") {
            self.templateNames = dict["TemplateNames"] as! String
        }
    }
}

public class DeleteTemplatesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployParameters: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployParameters != nil {
            map["DeployParameters"] = self.deployParameters!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("DeployParameters") {
            self.deployParameters = dict["DeployParameters"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeployApplicationGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeployApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeployApplicationGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicationGroupBillRequest : Tea.TeaModel {
    public var applicationName: String?

    public var billingCycle: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("BillingCycle") {
            self.billingCycle = dict["BillingCycle"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeApplicationGroupBillResponseBody : Tea.TeaModel {
    public class ApplicationGroupConsume : Tea.TeaModel {
        public var amount: Double?

        public var creationTime: String?

        public var currency: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceType: String?

        public var optimization: String?

        public var peakType: String?

        public var performance: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.optimization != nil {
                map["Optimization"] = self.optimization!
            }
            if self.peakType != nil {
                map["PeakType"] = self.peakType!
            }
            if self.performance != nil {
                map["Performance"] = self.performance!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Double
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("Optimization") {
                self.optimization = dict["Optimization"] as! String
            }
            if dict.keys.contains("PeakType") {
                self.peakType = dict["PeakType"] as! String
            }
            if dict.keys.contains("Performance") {
                self.performance = dict["Performance"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var applicationGroupConsume: [DescribeApplicationGroupBillResponseBody.ApplicationGroupConsume]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroupConsume != nil {
            var tmp : [Any] = []
            for k in self.applicationGroupConsume! {
                tmp.append(k.toMap())
            }
            map["ApplicationGroupConsume"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationGroupConsume") {
            var tmp : [DescribeApplicationGroupBillResponseBody.ApplicationGroupConsume] = []
            for v in dict["ApplicationGroupConsume"] as! [Any] {
                var model = DescribeApplicationGroupBillResponseBody.ApplicationGroupConsume()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applicationGroupConsume = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApplicationGroupBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationGroupBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeApplicationGroupBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateExecutionPolicyRequest : Tea.TeaModel {
    public var ramRole: String?

    public var regionId: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateContent") {
            self.templateContent = dict["TemplateContent"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GenerateExecutionPolicyResponseBody : Tea.TeaModel {
    public var missingPolicy: String?

    public var policy: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.missingPolicy != nil {
            map["MissingPolicy"] = self.missingPolicy!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MissingPolicy") {
            self.missingPolicy = dict["MissingPolicy"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateExecutionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateExecutionPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateExecutionPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateOpsItemRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configurationId: String?

    public var data: String?

    public var dataSource: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configurationId != nil {
            map["ConfigurationId"] = self.configurationId!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigurationId") {
            self.configurationId = dict["ConfigurationId"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("DataSource") {
            self.dataSource = dict["DataSource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GenerateOpsItemResponseBody : Tea.TeaModel {
    public var opsItemIds: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItemIds != nil {
            map["OpsItemIds"] = self.opsItemIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpsItemIds") {
            self.opsItemIds = dict["OpsItemIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateOpsItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class AlarmConfig : Tea.TeaModel {
            public var contactGroups: [String]?

            public var healthCheckUrl: String?

            public var templateIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contactGroups != nil {
                    map["ContactGroups"] = self.contactGroups!
                }
                if self.healthCheckUrl != nil {
                    map["HealthCheckUrl"] = self.healthCheckUrl!
                }
                if self.templateIds != nil {
                    map["TemplateIds"] = self.templateIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ContactGroups") {
                    self.contactGroups = dict["ContactGroups"] as! [String]
                }
                if dict.keys.contains("HealthCheckUrl") {
                    self.healthCheckUrl = dict["HealthCheckUrl"] as! String
                }
                if dict.keys.contains("TemplateIds") {
                    self.templateIds = dict["TemplateIds"] as! [String]
                }
            }
        }
        public var alarmConfig: GetApplicationResponseBody.Application.AlarmConfig?

        public var applicationSource: String?

        public var applicationType: String?

        public var createDate: String?

        public var description_: String?

        public var name: String?

        public var resourceGroupId: String?

        public var serviceId: String?

        public var tags: [String: Any]?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.alarmConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmConfig != nil {
                map["AlarmConfig"] = self.alarmConfig?.toMap()
            }
            if self.applicationSource != nil {
                map["ApplicationSource"] = self.applicationSource!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmConfig") {
                var model = GetApplicationResponseBody.Application.AlarmConfig()
                model.fromMap(dict["AlarmConfig"] as! [String: Any])
                self.alarmConfig = model
            }
            if dict.keys.contains("ApplicationSource") {
                self.applicationSource = dict["ApplicationSource"] as! String
            }
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var application: GetApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = GetApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetApplicationGroupResponseBody : Tea.TeaModel {
    public class ApplicationGroup : Tea.TeaModel {
        public var applicationName: String?

        public var applicationSource: String?

        public var cmsGroupId: String?

        public var createDate: String?

        public var deployOutputs: String?

        public var deployParameters: String?

        public var deployRegionId: String?

        public var description_: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var operationMetadata: String?

        public var progress: String?

        public var status: String?

        public var statusReason: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.applicationSource != nil {
                map["ApplicationSource"] = self.applicationSource!
            }
            if self.cmsGroupId != nil {
                map["CmsGroupId"] = self.cmsGroupId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deployOutputs != nil {
                map["DeployOutputs"] = self.deployOutputs!
            }
            if self.deployParameters != nil {
                map["DeployParameters"] = self.deployParameters!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationMetadata != nil {
                map["OperationMetadata"] = self.operationMetadata!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ApplicationSource") {
                self.applicationSource = dict["ApplicationSource"] as! String
            }
            if dict.keys.contains("CmsGroupId") {
                self.cmsGroupId = dict["CmsGroupId"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DeployOutputs") {
                self.deployOutputs = dict["DeployOutputs"] as! String
            }
            if dict.keys.contains("DeployParameters") {
                self.deployParameters = dict["DeployParameters"] as! String
            }
            if dict.keys.contains("DeployRegionId") {
                self.deployRegionId = dict["DeployRegionId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImportTagKey") {
                self.importTagKey = dict["ImportTagKey"] as! String
            }
            if dict.keys.contains("ImportTagValue") {
                self.importTagValue = dict["ImportTagValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationMetadata") {
                self.operationMetadata = dict["OperationMetadata"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var applicationGroup: GetApplicationGroupResponseBody.ApplicationGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroup != nil {
            map["ApplicationGroup"] = self.applicationGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationGroup") {
            var model = GetApplicationGroupResponseBody.ApplicationGroup()
            model.fromMap(dict["ApplicationGroup"] as! [String: Any])
            self.applicationGroup = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetApplicationGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExecutionTemplateRequest : Tea.TeaModel {
    public var executionId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetExecutionTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("TemplateFormat") {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetExecutionTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") {
            var model = GetExecutionTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class GetExecutionTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExecutionTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetExecutionTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInventorySchemaRequest : Tea.TeaModel {
    public var aggregator: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregator != nil {
            map["Aggregator"] = self.aggregator!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aggregator") {
            self.aggregator = dict["Aggregator"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TypeName") {
            self.typeName = dict["TypeName"] as! String
        }
    }
}

public class GetInventorySchemaResponseBody : Tea.TeaModel {
    public class Schemas : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var dataType: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var attributes: [GetInventorySchemaResponseBody.Schemas.Attributes]?

        public var typeName: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                var tmp : [GetInventorySchemaResponseBody.Schemas.Attributes] = []
                for v in dict["Attributes"] as! [Any] {
                    var model = GetInventorySchemaResponseBody.Schemas.Attributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attributes = tmp
            }
            if dict.keys.contains("TypeName") {
                self.typeName = dict["TypeName"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var requestId: String?

    public var schemas: [GetInventorySchemaResponseBody.Schemas]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            var tmp : [Any] = []
            for k in self.schemas! {
                tmp.append(k.toMap())
            }
            map["Schemas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Schemas") {
            var tmp : [GetInventorySchemaResponseBody.Schemas] = []
            for v in dict["Schemas"] as! [Any] {
                var model = GetInventorySchemaResponseBody.Schemas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.schemas = tmp
        }
    }
}

public class GetInventorySchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInventorySchemaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInventorySchemaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOpsItemRequest : Tea.TeaModel {
    public var opsItemId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItemId != nil {
            map["OpsItemId"] = self.opsItemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpsItemId") {
            self.opsItemId = dict["OpsItemId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetOpsItemResponseBody : Tea.TeaModel {
    public class OpsItem : Tea.TeaModel {
        public var attributes: [String: Any]?

        public var category: String?

        public var createBy: String?

        public var createDate: String?

        public var description_: String?

        public var lastModifiedBy: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resourceGroupId: String?

        public var resources: [String]?

        public var severity: String?

        public var solutions: [[String: Any]]?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createBy != nil {
                map["CreateBy"] = self.createBy!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedBy != nil {
                map["LastModifiedBy"] = self.lastModifiedBy!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.solutions != nil {
                map["Solutions"] = self.solutions!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String: Any]
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreateBy") {
                self.createBy = dict["CreateBy"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LastModifiedBy") {
                self.lastModifiedBy = dict["LastModifiedBy"] as! String
            }
            if dict.keys.contains("OpsItemId") {
                self.opsItemId = dict["OpsItemId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! [String]
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Solutions") {
                self.solutions = dict["Solutions"] as! [[String: Any]]
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var opsItem: GetOpsItemResponseBody.OpsItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.opsItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItem != nil {
            map["OpsItem"] = self.opsItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpsItem") {
            var model = GetOpsItemResponseBody.OpsItem()
            model.fromMap(dict["OpsItem"] as! [String: Any])
            self.opsItem = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOpsItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetParameterRequest : Tea.TeaModel {
    public var name: String?

    public var parameterVersion: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameterVersion != nil {
            map["ParameterVersion"] = self.parameterVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParameterVersion") {
            self.parameterVersion = dict["ParameterVersion"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class GetParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var parameter: GetParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") {
            var model = GetParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetParametersRequest : Tea.TeaModel {
    public var names: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var invalidParameters: [String]?

    public var parameters: [GetParametersResponseBody.Parameters]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invalidParameters != nil {
            map["InvalidParameters"] = self.invalidParameters!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvalidParameters") {
            self.invalidParameters = dict["InvalidParameters"] as! [String]
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetParametersResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetParametersResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetParametersByPathRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetParametersByPathResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [GetParametersByPathResponseBody.Parameters]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetParametersByPathResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetParametersByPathResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetParametersByPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParametersByPathResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetParametersByPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPatchBaselineRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var approvalRules: String?

        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var isDefault: Bool?

        public var name: String?

        public var operationSystem: String?

        public var rejectedPatches: [String]?

        public var rejectedPatchesAction: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [GetPatchBaselineResponseBody.PatchBaseline.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.rejectedPatches != nil {
                map["RejectedPatches"] = self.rejectedPatches!
            }
            if self.rejectedPatchesAction != nil {
                map["RejectedPatchesAction"] = self.rejectedPatchesAction!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("ApprovedPatches") {
                self.approvedPatches = dict["ApprovedPatches"] as! [String]
            }
            if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
                self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("RejectedPatches") {
                self.rejectedPatches = dict["RejectedPatches"] as! [String]
            }
            if dict.keys.contains("RejectedPatchesAction") {
                self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Sources") {
                self.sources = dict["Sources"] as! [String]
            }
            if dict.keys.contains("Tags") {
                var tmp : [GetPatchBaselineResponseBody.PatchBaseline.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetPatchBaselineResponseBody.PatchBaseline.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: GetPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") {
            var model = GetPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecretParameterRequest : Tea.TeaModel {
    public var name: String?

    public var parameterVersion: Int32?

    public var regionId: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameterVersion != nil {
            map["ParameterVersion"] = self.parameterVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParameterVersion") {
            self.parameterVersion = dict["ParameterVersion"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WithDecryption") {
            self.withDecryption = dict["WithDecryption"] as! Bool
        }
    }
}

public class GetSecretParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var DKMSInstanceId: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.DKMSInstanceId != nil {
                map["DKMSInstanceId"] = self.DKMSInstanceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("DKMSInstanceId") {
                self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var parameter: GetSecretParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") {
            var model = GetSecretParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSecretParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecretParametersRequest : Tea.TeaModel {
    public var names: String?

    public var regionId: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WithDecryption") {
            self.withDecryption = dict["WithDecryption"] as! Bool
        }
    }
}

public class GetSecretParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var invalidParameters: [String]?

    public var parameters: [GetSecretParametersResponseBody.Parameters]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invalidParameters != nil {
            map["InvalidParameters"] = self.invalidParameters!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvalidParameters") {
            self.invalidParameters = dict["InvalidParameters"] as! [String]
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetSecretParametersResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetSecretParametersResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSecretParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSecretParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecretParametersByPathRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WithDecryption") {
            self.withDecryption = dict["WithDecryption"] as! Bool
        }
    }
}

public class GetSecretParametersByPathResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var shareType: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [GetSecretParametersByPathResponseBody.Parameters]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetSecretParametersByPathResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetSecretParametersByPathResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetSecretParametersByPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretParametersByPathResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSecretParametersByPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceSettingsRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetServiceSettingsResponseBody : Tea.TeaModel {
    public class ServiceSettings : Tea.TeaModel {
        public var deliveryOssBucketName: String?

        public var deliveryOssEnabled: Bool?

        public var deliveryOssKeyPrefix: String?

        public var deliverySlsEnabled: Bool?

        public var deliverySlsProjectName: String?

        public var rdcEnterpriseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryOssBucketName != nil {
                map["DeliveryOssBucketName"] = self.deliveryOssBucketName!
            }
            if self.deliveryOssEnabled != nil {
                map["DeliveryOssEnabled"] = self.deliveryOssEnabled!
            }
            if self.deliveryOssKeyPrefix != nil {
                map["DeliveryOssKeyPrefix"] = self.deliveryOssKeyPrefix!
            }
            if self.deliverySlsEnabled != nil {
                map["DeliverySlsEnabled"] = self.deliverySlsEnabled!
            }
            if self.deliverySlsProjectName != nil {
                map["DeliverySlsProjectName"] = self.deliverySlsProjectName!
            }
            if self.rdcEnterpriseId != nil {
                map["RdcEnterpriseId"] = self.rdcEnterpriseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeliveryOssBucketName") {
                self.deliveryOssBucketName = dict["DeliveryOssBucketName"] as! String
            }
            if dict.keys.contains("DeliveryOssEnabled") {
                self.deliveryOssEnabled = dict["DeliveryOssEnabled"] as! Bool
            }
            if dict.keys.contains("DeliveryOssKeyPrefix") {
                self.deliveryOssKeyPrefix = dict["DeliveryOssKeyPrefix"] as! String
            }
            if dict.keys.contains("DeliverySlsEnabled") {
                self.deliverySlsEnabled = dict["DeliverySlsEnabled"] as! Bool
            }
            if dict.keys.contains("DeliverySlsProjectName") {
                self.deliverySlsProjectName = dict["DeliverySlsProjectName"] as! String
            }
            if dict.keys.contains("RdcEnterpriseId") {
                self.rdcEnterpriseId = dict["RdcEnterpriseId"] as! String
            }
        }
    }
    public var requestId: String?

    public var serviceSettings: [GetServiceSettingsResponseBody.ServiceSettings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceSettings != nil {
            var tmp : [Any] = []
            for k in self.serviceSettings! {
                tmp.append(k.toMap())
            }
            map["ServiceSettings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceSettings") {
            var tmp : [GetServiceSettingsResponseBody.ServiceSettings] = []
            for v in dict["ServiceSettings"] as! [Any] {
                var model = GetServiceSettingsResponseBody.ServiceSettings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceSettings = tmp
        }
    }
}

public class GetServiceSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateType: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HasTrigger") {
                self.hasTrigger = dict["HasTrigger"] as! Bool
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("TemplateFormat") {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") {
            var model = GetTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTemplateParameterConstraintsRequest : Tea.TeaModel {
    public var parameters: String?

    public var regionId: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateContent") {
            self.templateContent = dict["TemplateContent"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class GetTemplateParameterConstraintsResponseBody : Tea.TeaModel {
    public var parameterConstraints: [String: Any]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameterConstraints != nil {
            map["ParameterConstraints"] = self.parameterConstraints!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParameterConstraints") {
            self.parameterConstraints = dict["ParameterConstraints"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTemplateParameterConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateParameterConstraintsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTemplateParameterConstraintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListActionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var OOSActionName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.OOSActionName != nil {
            map["OOSActionName"] = self.OOSActionName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OOSActionName") {
            self.OOSActionName = dict["OOSActionName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListActionsResponseBody : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var actionType: String?

        public var createdDate: String?

        public var description_: String?

        public var OOSActionName: String?

        public var popularity: Int32?

        public var properties: String?

        public var templateVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OOSActionName != nil {
                map["OOSActionName"] = self.OOSActionName!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionType") {
                self.actionType = dict["ActionType"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("OOSActionName") {
                self.OOSActionName = dict["OOSActionName"] as! String
            }
            if dict.keys.contains("Popularity") {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
        }
    }
    public var actions: [ListActionsResponseBody.Actions]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            var tmp : [ListActionsResponseBody.Actions] = []
            for v in dict["Actions"] as! [Any] {
                var model = ListActionsResponseBody.Actions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.actions = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListActionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationGroupsRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployRegionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceProduct: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceProduct != nil {
            map["ResourceProduct"] = self.resourceProduct!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("DeployRegionId") {
            self.deployRegionId = dict["DeployRegionId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceProduct") {
            self.resourceProduct = dict["ResourceProduct"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListApplicationGroupsResponseBody : Tea.TeaModel {
    public class ApplicationGroups : Tea.TeaModel {
        public var applicationName: String?

        public var cmsGroupId: String?

        public var createDate: String?

        public var deployParameters: String?

        public var deployRegionId: String?

        public var description_: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var status: String?

        public var statusReason: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.cmsGroupId != nil {
                map["CmsGroupId"] = self.cmsGroupId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deployParameters != nil {
                map["DeployParameters"] = self.deployParameters!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("CmsGroupId") {
                self.cmsGroupId = dict["CmsGroupId"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DeployParameters") {
                self.deployParameters = dict["DeployParameters"] as! String
            }
            if dict.keys.contains("DeployRegionId") {
                self.deployRegionId = dict["DeployRegionId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImportTagKey") {
                self.importTagKey = dict["ImportTagKey"] as! String
            }
            if dict.keys.contains("ImportTagValue") {
                self.importTagValue = dict["ImportTagValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var applicationGroups: [ListApplicationGroupsResponseBody.ApplicationGroups]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroups != nil {
            var tmp : [Any] = []
            for k in self.applicationGroups! {
                tmp.append(k.toMap())
            }
            map["ApplicationGroups"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationGroups") {
            var tmp : [ListApplicationGroupsResponseBody.ApplicationGroups] = []
            for v in dict["ApplicationGroups"] as! [Any] {
                var model = ListApplicationGroupsResponseBody.ApplicationGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applicationGroups = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApplicationGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApplicationGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsRequest : Tea.TeaModel {
    public var applicationType: String?

    public var maxResults: Int32?

    public var name: String?

    public var names: String?

    public var nextToken: String?

    public var regionId: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class ListApplicationsShrinkRequest : Tea.TeaModel {
    public var applicationType: String?

    public var maxResults: Int32?

    public var name: String?

    public var names: String?

    public var nextToken: String?

    public var regionId: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationType: String?

        public var createDate: String?

        public var description_: String?

        public var name: String?

        public var resourceGroupId: String?

        public var tags: [String: Any]?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var applications: [ListApplicationsResponseBody.Applications]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var tmp : [ListApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExecutionLogsRequest : Tea.TeaModel {
    public var executionId: String?

    public var logType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var taskExecutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskExecutionId") {
            self.taskExecutionId = dict["TaskExecutionId"] as! String
        }
    }
}

public class ListExecutionLogsResponseBody : Tea.TeaModel {
    public class ExecutionLogs : Tea.TeaModel {
        public var logType: String?

        public var message: String?

        public var taskExecutionId: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("TaskExecutionId") {
                self.taskExecutionId = dict["TaskExecutionId"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var executionLogs: [ListExecutionLogsResponseBody.ExecutionLogs]?

    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionLogs != nil {
            var tmp : [Any] = []
            for k in self.executionLogs! {
                tmp.append(k.toMap())
            }
            map["ExecutionLogs"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionLogs") {
            var tmp : [ListExecutionLogsResponseBody.ExecutionLogs] = []
            for v in dict["ExecutionLogs"] as! [Any] {
                var model = ListExecutionLogsResponseBody.ExecutionLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executionLogs = tmp
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListExecutionLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExecutionLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExecutionRiskyTasksRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListExecutionRiskyTasksResponseBody : Tea.TeaModel {
    public class RiskyTasks : Tea.TeaModel {
        public var API: String?

        public var service: String?

        public var task: [String]?

        public var template: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.API != nil {
                map["API"] = self.API!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            if self.task != nil {
                map["Task"] = self.task!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("API") {
                self.API = dict["API"] as! String
            }
            if dict.keys.contains("Service") {
                self.service = dict["Service"] as! String
            }
            if dict.keys.contains("Task") {
                self.task = dict["Task"] as! [String]
            }
            if dict.keys.contains("Template") {
                self.template = dict["Template"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var riskyTasks: [ListExecutionRiskyTasksResponseBody.RiskyTasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.riskyTasks != nil {
            var tmp : [Any] = []
            for k in self.riskyTasks! {
                tmp.append(k.toMap())
            }
            map["RiskyTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RiskyTasks") {
            var tmp : [ListExecutionRiskyTasksResponseBody.RiskyTasks] = []
            for v in dict["RiskyTasks"] as! [Any] {
                var model = ListExecutionRiskyTasksResponseBody.RiskyTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.riskyTasks = tmp
        }
    }
}

public class ListExecutionRiskyTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionRiskyTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExecutionRiskyTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExecutionsRequest : Tea.TeaModel {
    public var categories: String?

    public var category: String?

    public var depth: String?

    public var description_: String?

    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executedBy: String?

    public var executionId: String?

    public var includeChildExecution: Bool?

    public var maxResults: Int32?

    public var mode: String?

    public var nextToken: String?

    public var parentExecutionId: String?

    public var ramRole: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceTemplateName: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executedBy != nil {
            map["ExecutedBy"] = self.executedBy!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildExecution != nil {
            map["IncludeChildExecution"] = self.includeChildExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceTemplateName != nil {
            map["ResourceTemplateName"] = self.resourceTemplateName!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Depth") {
            self.depth = dict["Depth"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndDateAfter") {
            self.endDateAfter = dict["EndDateAfter"] as! String
        }
        if dict.keys.contains("EndDateBefore") {
            self.endDateBefore = dict["EndDateBefore"] as! String
        }
        if dict.keys.contains("ExecutedBy") {
            self.executedBy = dict["ExecutedBy"] as! String
        }
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("IncludeChildExecution") {
            self.includeChildExecution = dict["IncludeChildExecution"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParentExecutionId") {
            self.parentExecutionId = dict["ParentExecutionId"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceTemplateName") {
            self.resourceTemplateName = dict["ResourceTemplateName"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartDateAfter") {
            self.startDateAfter = dict["StartDateAfter"] as! String
        }
        if dict.keys.contains("StartDateBefore") {
            self.startDateBefore = dict["StartDateBefore"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListExecutionsShrinkRequest : Tea.TeaModel {
    public var categories: String?

    public var category: String?

    public var depth: String?

    public var description_: String?

    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executedBy: String?

    public var executionId: String?

    public var includeChildExecution: Bool?

    public var maxResults: Int32?

    public var mode: String?

    public var nextToken: String?

    public var parentExecutionId: String?

    public var ramRole: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceTemplateName: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var tagsShrink: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executedBy != nil {
            map["ExecutedBy"] = self.executedBy!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildExecution != nil {
            map["IncludeChildExecution"] = self.includeChildExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceTemplateName != nil {
            map["ResourceTemplateName"] = self.resourceTemplateName!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Depth") {
            self.depth = dict["Depth"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndDateAfter") {
            self.endDateAfter = dict["EndDateAfter"] as! String
        }
        if dict.keys.contains("EndDateBefore") {
            self.endDateBefore = dict["EndDateBefore"] as! String
        }
        if dict.keys.contains("ExecutedBy") {
            self.executedBy = dict["ExecutedBy"] as! String
        }
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("IncludeChildExecution") {
            self.includeChildExecution = dict["IncludeChildExecution"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParentExecutionId") {
            self.parentExecutionId = dict["ParentExecutionId"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceTemplateName") {
            self.resourceTemplateName = dict["ResourceTemplateName"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartDateAfter") {
            self.startDateAfter = dict["StartDateAfter"] as! String
        }
        if dict.keys.contains("StartDateBefore") {
            self.startDateBefore = dict["StartDateBefore"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListExecutionsResponseBody : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public class CurrentTasks : Tea.TeaModel {
            public var taskAction: String?

            public var taskExecutionId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.taskAction != nil {
                    map["TaskAction"] = self.taskAction!
                }
                if self.taskExecutionId != nil {
                    map["TaskExecutionId"] = self.taskExecutionId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TaskAction") {
                    self.taskAction = dict["TaskAction"] as! String
                }
                if dict.keys.contains("TaskExecutionId") {
                    self.taskExecutionId = dict["TaskExecutionId"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var category: String?

        public var counters: [String: Any]?

        public var createDate: String?

        public var currentTasks: [ListExecutionsResponseBody.Executions.CurrentTasks]?

        public var description_: String?

        public var endDate: String?

        public var executedBy: String?

        public var executionId: String?

        public var isParent: Bool?

        public var lastSuccessfulTriggerTime: String?

        public var lastTriggerOutputs: String?

        public var lastTriggerStatus: String?

        public var lastTriggerStatusMessage: String?

        public var lastTriggerTime: String?

        public var mode: String?

        public var nextScheduleTime: String?

        public var outputs: String?

        public var parameters: [String: Any]?

        public var parentExecutionId: String?

        public var ramRole: String?

        public var resourceGroupId: String?

        public var resourceStatus: String?

        public var safetyCheck: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var statusReason: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateDate: String?

        public var waitingStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.counters != nil {
                map["Counters"] = self.counters!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.currentTasks != nil {
                var tmp : [Any] = []
                for k in self.currentTasks! {
                    tmp.append(k.toMap())
                }
                map["CurrentTasks"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executedBy != nil {
                map["ExecutedBy"] = self.executedBy!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.isParent != nil {
                map["IsParent"] = self.isParent!
            }
            if self.lastSuccessfulTriggerTime != nil {
                map["LastSuccessfulTriggerTime"] = self.lastSuccessfulTriggerTime!
            }
            if self.lastTriggerOutputs != nil {
                map["LastTriggerOutputs"] = self.lastTriggerOutputs!
            }
            if self.lastTriggerStatus != nil {
                map["LastTriggerStatus"] = self.lastTriggerStatus!
            }
            if self.lastTriggerStatusMessage != nil {
                map["LastTriggerStatusMessage"] = self.lastTriggerStatusMessage!
            }
            if self.lastTriggerTime != nil {
                map["LastTriggerTime"] = self.lastTriggerTime!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.nextScheduleTime != nil {
                map["NextScheduleTime"] = self.nextScheduleTime!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.parentExecutionId != nil {
                map["ParentExecutionId"] = self.parentExecutionId!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.safetyCheck != nil {
                map["SafetyCheck"] = self.safetyCheck!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.waitingStatus != nil {
                map["WaitingStatus"] = self.waitingStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Counters") {
                self.counters = dict["Counters"] as! [String: Any]
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("CurrentTasks") {
                var tmp : [ListExecutionsResponseBody.Executions.CurrentTasks] = []
                for v in dict["CurrentTasks"] as! [Any] {
                    var model = ListExecutionsResponseBody.Executions.CurrentTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.currentTasks = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("ExecutedBy") {
                self.executedBy = dict["ExecutedBy"] as! String
            }
            if dict.keys.contains("ExecutionId") {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("IsParent") {
                self.isParent = dict["IsParent"] as! Bool
            }
            if dict.keys.contains("LastSuccessfulTriggerTime") {
                self.lastSuccessfulTriggerTime = dict["LastSuccessfulTriggerTime"] as! String
            }
            if dict.keys.contains("LastTriggerOutputs") {
                self.lastTriggerOutputs = dict["LastTriggerOutputs"] as! String
            }
            if dict.keys.contains("LastTriggerStatus") {
                self.lastTriggerStatus = dict["LastTriggerStatus"] as! String
            }
            if dict.keys.contains("LastTriggerStatusMessage") {
                self.lastTriggerStatusMessage = dict["LastTriggerStatusMessage"] as! String
            }
            if dict.keys.contains("LastTriggerTime") {
                self.lastTriggerTime = dict["LastTriggerTime"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("NextScheduleTime") {
                self.nextScheduleTime = dict["NextScheduleTime"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! [String: Any]
            }
            if dict.keys.contains("ParentExecutionId") {
                self.parentExecutionId = dict["ParentExecutionId"] as! String
            }
            if dict.keys.contains("RamRole") {
                self.ramRole = dict["RamRole"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceStatus") {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("SafetyCheck") {
                self.safetyCheck = dict["SafetyCheck"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Targets") {
                self.targets = dict["Targets"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("WaitingStatus") {
                self.waitingStatus = dict["WaitingStatus"] as! String
            }
        }
    }
    public var executions: [ListExecutionsResponseBody.Executions]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executions != nil {
            var tmp : [Any] = []
            for k in self.executions! {
                tmp.append(k.toMap())
            }
            map["Executions"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Executions") {
            var tmp : [ListExecutionsResponseBody.Executions] = []
            for v in dict["Executions"] as! [Any] {
                var model = ListExecutionsResponseBody.Executions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executions = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancePackageStatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var templateNames: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateNames != nil {
            map["TemplateNames"] = self.templateNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateNames") {
            self.templateNames = dict["TemplateNames"] as! String
        }
    }
}

public class ListInstancePackageStatesResponseBody : Tea.TeaModel {
    public class PackageStates : Tea.TeaModel {
        public var description_: String?

        public var parameters: String?

        public var publisher: String?

        public var templateCategory: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var templateVersionName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.publisher != nil {
                map["Publisher"] = self.publisher!
            }
            if self.templateCategory != nil {
                map["TemplateCategory"] = self.templateCategory!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.templateVersionName != nil {
                map["TemplateVersionName"] = self.templateVersionName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("Publisher") {
                self.publisher = dict["Publisher"] as! String
            }
            if dict.keys.contains("TemplateCategory") {
                self.templateCategory = dict["TemplateCategory"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("TemplateVersionName") {
                self.templateVersionName = dict["TemplateVersionName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var packageStates: [ListInstancePackageStatesResponseBody.PackageStates]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.packageStates != nil {
            var tmp : [Any] = []
            for k in self.packageStates! {
                tmp.append(k.toMap())
            }
            map["PackageStates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PackageStates") {
            var tmp : [ListInstancePackageStatesResponseBody.PackageStates] = []
            for v in dict["PackageStates"] as! [Any] {
                var model = ListInstancePackageStatesResponseBody.PackageStates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.packageStates = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListInstancePackageStatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePackageStatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstancePackageStatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancePatchStatesRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListInstancePatchStatesResponseBody : Tea.TeaModel {
    public class InstancePatchStates : Tea.TeaModel {
        public var baselineId: String?

        public var failedCount: String?

        public var installedCount: String?

        public var installedOtherCount: String?

        public var installedPendingRebootCount: String?

        public var installedRejectedCount: String?

        public var instanceId: String?

        public var missingCount: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var operationType: String?

        public var ownerInformation: String?

        public var patchGroup: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baselineId != nil {
                map["BaselineId"] = self.baselineId!
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.installedCount != nil {
                map["InstalledCount"] = self.installedCount!
            }
            if self.installedOtherCount != nil {
                map["InstalledOtherCount"] = self.installedOtherCount!
            }
            if self.installedPendingRebootCount != nil {
                map["InstalledPendingRebootCount"] = self.installedPendingRebootCount!
            }
            if self.installedRejectedCount != nil {
                map["InstalledRejectedCount"] = self.installedRejectedCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.missingCount != nil {
                map["MissingCount"] = self.missingCount!
            }
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.operationStartTime != nil {
                map["OperationStartTime"] = self.operationStartTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ownerInformation != nil {
                map["OwnerInformation"] = self.ownerInformation!
            }
            if self.patchGroup != nil {
                map["PatchGroup"] = self.patchGroup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaselineId") {
                self.baselineId = dict["BaselineId"] as! String
            }
            if dict.keys.contains("FailedCount") {
                self.failedCount = dict["FailedCount"] as! String
            }
            if dict.keys.contains("InstalledCount") {
                self.installedCount = dict["InstalledCount"] as! String
            }
            if dict.keys.contains("InstalledOtherCount") {
                self.installedOtherCount = dict["InstalledOtherCount"] as! String
            }
            if dict.keys.contains("InstalledPendingRebootCount") {
                self.installedPendingRebootCount = dict["InstalledPendingRebootCount"] as! String
            }
            if dict.keys.contains("InstalledRejectedCount") {
                self.installedRejectedCount = dict["InstalledRejectedCount"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MissingCount") {
                self.missingCount = dict["MissingCount"] as! String
            }
            if dict.keys.contains("OperationEndTime") {
                self.operationEndTime = dict["OperationEndTime"] as! String
            }
            if dict.keys.contains("OperationStartTime") {
                self.operationStartTime = dict["OperationStartTime"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("OwnerInformation") {
                self.ownerInformation = dict["OwnerInformation"] as! String
            }
            if dict.keys.contains("PatchGroup") {
                self.patchGroup = dict["PatchGroup"] as! String
            }
        }
    }
    public var instancePatchStates: [ListInstancePatchStatesResponseBody.InstancePatchStates]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instancePatchStates != nil {
            var tmp : [Any] = []
            for k in self.instancePatchStates! {
                tmp.append(k.toMap())
            }
            map["InstancePatchStates"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstancePatchStates") {
            var tmp : [ListInstancePatchStatesResponseBody.InstancePatchStates] = []
            for v in dict["InstancePatchStates"] as! [Any] {
                var model = ListInstancePatchStatesResponseBody.InstancePatchStates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instancePatchStates = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListInstancePatchStatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePatchStatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstancePatchStatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancePatchesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var patchStatuses: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patchStatuses != nil {
            map["PatchStatuses"] = self.patchStatuses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PatchStatuses") {
            self.patchStatuses = dict["PatchStatuses"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListInstancePatchesResponseBody : Tea.TeaModel {
    public class Patches : Tea.TeaModel {
        public var classification: String?

        public var installedTime: String?

        public var KBId: String?

        public var severity: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classification != nil {
                map["Classification"] = self.classification!
            }
            if self.installedTime != nil {
                map["InstalledTime"] = self.installedTime!
            }
            if self.KBId != nil {
                map["KBId"] = self.KBId!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Classification") {
                self.classification = dict["Classification"] as! String
            }
            if dict.keys.contains("InstalledTime") {
                self.installedTime = dict["InstalledTime"] as! String
            }
            if dict.keys.contains("KBId") {
                self.KBId = dict["KBId"] as! String
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var patches: [ListInstancePatchesResponseBody.Patches]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patches != nil {
            var tmp : [Any] = []
            for k in self.patches! {
                tmp.append(k.toMap())
            }
            map["Patches"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Patches") {
            var tmp : [ListInstancePatchesResponseBody.Patches] = []
            for v in dict["Patches"] as! [Any] {
                var model = ListInstancePatchesResponseBody.Patches()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.patches = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListInstancePatchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePatchesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstancePatchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInventoryEntriesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var filter: [ListInventoryEntriesRequest.Filter]?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListInventoryEntriesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListInventoryEntriesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TypeName") {
            self.typeName = dict["TypeName"] as! String
        }
    }
}

public class ListInventoryEntriesResponseBody : Tea.TeaModel {
    public var captureTime: String?

    public var entries: [[String: Any]]?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var schemaVersion: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.captureTime != nil {
            map["CaptureTime"] = self.captureTime!
        }
        if self.entries != nil {
            map["Entries"] = self.entries!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaptureTime") {
            self.captureTime = dict["CaptureTime"] as! String
        }
        if dict.keys.contains("Entries") {
            self.entries = dict["Entries"] as! [[String: Any]]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SchemaVersion") {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("TypeName") {
            self.typeName = dict["TypeName"] as! String
        }
    }
}

public class ListInventoryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInventoryEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInventoryEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOpsItemsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var filter: [ListOpsItemsRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceTags: [String: Any]?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceTags != nil {
            map["ResourceTags"] = self.resourceTags!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListOpsItemsRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListOpsItemsRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceTags") {
            self.resourceTags = dict["ResourceTags"] as! [String: Any]
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class ListOpsItemsShrinkRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var filter: [ListOpsItemsShrinkRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceTagsShrink: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceTagsShrink != nil {
            map["ResourceTags"] = self.resourceTagsShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListOpsItemsShrinkRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListOpsItemsShrinkRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceTags") {
            self.resourceTagsShrink = dict["ResourceTags"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class ListOpsItemsResponseBody : Tea.TeaModel {
    public class OpsItems : Tea.TeaModel {
        public var category: String?

        public var createDate: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resources: [String]?

        public var severity: String?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("OpsItemId") {
                self.opsItemId = dict["OpsItemId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! [String]
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var opsItems: [ListOpsItemsResponseBody.OpsItems]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.opsItems != nil {
            var tmp : [Any] = []
            for k in self.opsItems! {
                tmp.append(k.toMap())
            }
            map["OpsItems"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OpsItems") {
            var tmp : [ListOpsItemsResponseBody.OpsItems] = []
            for v in dict["OpsItems"] as! [Any] {
                var model = ListOpsItemsResponseBody.OpsItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.opsItems = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListOpsItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpsItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListOpsItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListParameterVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var shareType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
    }
}

public class ListParameterVersionsResponseBody : Tea.TeaModel {
    public class ParameterVersions : Tea.TeaModel {
        public var parameterVersion: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var createdBy: String?

    public var createdDate: String?

    public var description_: String?

    public var id: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var parameterVersions: [ListParameterVersionsResponseBody.ParameterVersions]?

    public var requestId: String?

    public var totalCount: Int32?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDate != nil {
            map["CreatedDate"] = self.createdDate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameterVersions != nil {
            var tmp : [Any] = []
            for k in self.parameterVersions! {
                tmp.append(k.toMap())
            }
            map["ParameterVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedBy") {
            self.createdBy = dict["CreatedBy"] as! String
        }
        if dict.keys.contains("CreatedDate") {
            self.createdDate = dict["CreatedDate"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParameterVersions") {
            var tmp : [ListParameterVersionsResponseBody.ParameterVersions] = []
            for v in dict["ParameterVersions"] as! [Any] {
                var model = ListParameterVersionsResponseBody.ParameterVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterVersions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListParameterVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParameterVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListParameterVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListParametersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tags: [String: Any]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListParametersShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tagsShrink: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [ListParametersResponseBody.Parameters]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [ListParametersResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = ListParametersResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPatchBaselinesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var approvedPatches: [String]?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var operationSystem: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sources: [String]?

    public var tags: [ListPatchBaselinesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvedPatches != nil {
            map["ApprovedPatches"] = self.approvedPatches!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovedPatches") {
            self.approvedPatches = dict["ApprovedPatches"] as! [String]
        }
        if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
            self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OperationSystem") {
            self.operationSystem = dict["OperationSystem"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [String]
        }
        if dict.keys.contains("Tags") {
            var tmp : [ListPatchBaselinesRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListPatchBaselinesRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListPatchBaselinesShrinkRequest : Tea.TeaModel {
    public var approvedPatchesShrink: String?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var operationSystem: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sourcesShrink: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvedPatchesShrink != nil {
            map["ApprovedPatches"] = self.approvedPatchesShrink!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovedPatches") {
            self.approvedPatchesShrink = dict["ApprovedPatches"] as! String
        }
        if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
            self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OperationSystem") {
            self.operationSystem = dict["OperationSystem"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class ListPatchBaselinesResponseBody : Tea.TeaModel {
    public class PatchBaselines : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var isDefault: Bool?

        public var name: String?

        public var operationSystem: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [ListPatchBaselinesResponseBody.PatchBaselines.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovedPatches") {
                self.approvedPatches = dict["ApprovedPatches"] as! [String]
            }
            if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
                self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Sources") {
                self.sources = dict["Sources"] as! [String]
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListPatchBaselinesResponseBody.PatchBaselines.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListPatchBaselinesResponseBody.PatchBaselines.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var patchBaselines: [ListPatchBaselinesResponseBody.PatchBaselines]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patchBaselines != nil {
            var tmp : [Any] = []
            for k in self.patchBaselines! {
                tmp.append(k.toMap())
            }
            map["PatchBaselines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PatchBaselines") {
            var tmp : [ListPatchBaselinesResponseBody.PatchBaselines] = []
            for v in dict["PatchBaselines"] as! [Any] {
                var model = ListPatchBaselinesResponseBody.PatchBaselines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.patchBaselines = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPatchBaselinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPatchBaselinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPatchBaselinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceExecutionStatusRequest : Tea.TeaModel {
    public var executionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListResourceExecutionStatusResponseBody : Tea.TeaModel {
    public class ResourceExecutionStatus : Tea.TeaModel {
        public var executionId: String?

        public var executionTime: String?

        public var outputs: String?

        public var resourceId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecutionId") {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("ExecutionTime") {
                self.executionTime = dict["ExecutionTime"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceExecutionStatus: [ListResourceExecutionStatusResponseBody.ResourceExecutionStatus]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceExecutionStatus != nil {
            var tmp : [Any] = []
            for k in self.resourceExecutionStatus! {
                tmp.append(k.toMap())
            }
            map["ResourceExecutionStatus"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceExecutionStatus") {
            var tmp : [ListResourceExecutionStatusResponseBody.ResourceExecutionStatus] = []
            for v in dict["ResourceExecutionStatus"] as! [Any] {
                var model = ListResourceExecutionStatusResponseBody.ResourceExecutionStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceExecutionStatus = tmp
        }
    }
}

public class ListResourceExecutionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceExecutionStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceExecutionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSecretParameterVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var shareType: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("WithDecryption") {
            self.withDecryption = dict["WithDecryption"] as! Bool
        }
    }
}

public class ListSecretParameterVersionsResponseBody : Tea.TeaModel {
    public class ParameterVersions : Tea.TeaModel {
        public var parameterVersion: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var createdBy: String?

    public var createdDate: String?

    public var description_: String?

    public var id: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var parameterVersions: [ListSecretParameterVersionsResponseBody.ParameterVersions]?

    public var requestId: String?

    public var totalCount: Int32?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDate != nil {
            map["CreatedDate"] = self.createdDate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameterVersions != nil {
            var tmp : [Any] = []
            for k in self.parameterVersions! {
                tmp.append(k.toMap())
            }
            map["ParameterVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedBy") {
            self.createdBy = dict["CreatedBy"] as! String
        }
        if dict.keys.contains("CreatedDate") {
            self.createdDate = dict["CreatedDate"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParameterVersions") {
            var tmp : [ListSecretParameterVersionsResponseBody.ParameterVersions] = []
            for v in dict["ParameterVersions"] as! [Any] {
                var model = ListSecretParameterVersionsResponseBody.ParameterVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterVersions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListSecretParameterVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecretParameterVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSecretParameterVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSecretParametersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class ListSecretParametersShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("Recursive") {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class ListSecretParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [ListSecretParametersResponseBody.Parameters]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Parameters") {
            var tmp : [ListSecretParametersResponseBody.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = ListSecretParametersResponseBody.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSecretParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecretParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSecretParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListStateConfigurationsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stateConfigurationIds: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stateConfigurationIds != nil {
            map["StateConfigurationIds"] = self.stateConfigurationIds!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StateConfigurationIds") {
            self.stateConfigurationIds = dict["StateConfigurationIds"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class ListStateConfigurationsShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stateConfigurationIds: String?

    public var tagsShrink: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stateConfigurationIds != nil {
            map["StateConfigurationIds"] = self.stateConfigurationIds!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StateConfigurationIds") {
            self.stateConfigurationIds = dict["StateConfigurationIds"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class ListStateConfigurationsResponseBody : Tea.TeaModel {
    public class StateConfigurations : Tea.TeaModel {
        public var configureMode: String?

        public var createTime: String?

        public var description_: String?

        public var parameters: String?

        public var resourceGroupId: String?

        public var scheduleExpression: String?

        public var scheduleType: String?

        public var stateConfigurationId: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configureMode != nil {
                map["ConfigureMode"] = self.configureMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.stateConfigurationId != nil {
                map["StateConfigurationId"] = self.stateConfigurationId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigureMode") {
                self.configureMode = dict["ConfigureMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ScheduleExpression") {
                self.scheduleExpression = dict["ScheduleExpression"] as! String
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("StateConfigurationId") {
                self.stateConfigurationId = dict["StateConfigurationId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Targets") {
                self.targets = dict["Targets"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var stateConfigurations: [ListStateConfigurationsResponseBody.StateConfigurations]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stateConfigurations != nil {
            var tmp : [Any] = []
            for k in self.stateConfigurations! {
                tmp.append(k.toMap())
            }
            map["StateConfigurations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StateConfigurations") {
            var tmp : [ListStateConfigurationsResponseBody.StateConfigurations] = []
            for v in dict["StateConfigurations"] as! [Any] {
                var model = ListStateConfigurationsResponseBody.StateConfigurations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stateConfigurations = tmp
        }
    }
}

public class ListStateConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStateConfigurationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListStateConfigurationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var keys: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            self.keys = dict["Keys"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIds: [String: Any]?

    public var resourceType: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String: Any]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIdsShrink = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagValuesRequest : Tea.TeaModel {
    public var key: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaskExecutionsRequest : Tea.TeaModel {
    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executionId: String?

    public var includeChildTaskExecution: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentTaskExecutionId: String?

    public var regionId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var taskAction: String?

    public var taskExecutionId: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildTaskExecution != nil {
            map["IncludeChildTaskExecution"] = self.includeChildTaskExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentTaskExecutionId != nil {
            map["ParentTaskExecutionId"] = self.parentTaskExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskAction != nil {
            map["TaskAction"] = self.taskAction!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDateAfter") {
            self.endDateAfter = dict["EndDateAfter"] as! String
        }
        if dict.keys.contains("EndDateBefore") {
            self.endDateBefore = dict["EndDateBefore"] as! String
        }
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("IncludeChildTaskExecution") {
            self.includeChildTaskExecution = dict["IncludeChildTaskExecution"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParentTaskExecutionId") {
            self.parentTaskExecutionId = dict["ParentTaskExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("StartDateAfter") {
            self.startDateAfter = dict["StartDateAfter"] as! String
        }
        if dict.keys.contains("StartDateBefore") {
            self.startDateBefore = dict["StartDateBefore"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskAction") {
            self.taskAction = dict["TaskAction"] as! String
        }
        if dict.keys.contains("TaskExecutionId") {
            self.taskExecutionId = dict["TaskExecutionId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class ListTaskExecutionsResponseBody : Tea.TeaModel {
    public class TaskExecutions : Tea.TeaModel {
        public var childExecutionId: String?

        public var createDate: String?

        public var endDate: String?

        public var executionId: String?

        public var extraData: [String: Any]?

        public var loop: [String: Any]?

        public var loopBatchNumber: Int32?

        public var loopItem: String?

        public var outputs: String?

        public var parentTaskExecutionId: String?

        public var properties: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var taskAction: String?

        public var taskExecutionId: String?

        public var taskName: String?

        public var templateId: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.childExecutionId != nil {
                map["ChildExecutionId"] = self.childExecutionId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.extraData != nil {
                map["ExtraData"] = self.extraData!
            }
            if self.loop != nil {
                map["Loop"] = self.loop!
            }
            if self.loopBatchNumber != nil {
                map["LoopBatchNumber"] = self.loopBatchNumber!
            }
            if self.loopItem != nil {
                map["LoopItem"] = self.loopItem!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parentTaskExecutionId != nil {
                map["ParentTaskExecutionId"] = self.parentTaskExecutionId!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.taskAction != nil {
                map["TaskAction"] = self.taskAction!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChildExecutionId") {
                self.childExecutionId = dict["ChildExecutionId"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("ExecutionId") {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("ExtraData") {
                self.extraData = dict["ExtraData"] as! [String: Any]
            }
            if dict.keys.contains("Loop") {
                self.loop = dict["Loop"] as! [String: Any]
            }
            if dict.keys.contains("LoopBatchNumber") {
                self.loopBatchNumber = dict["LoopBatchNumber"] as! Int32
            }
            if dict.keys.contains("LoopItem") {
                self.loopItem = dict["LoopItem"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("ParentTaskExecutionId") {
                self.parentTaskExecutionId = dict["ParentTaskExecutionId"] as! String
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("TaskAction") {
                self.taskAction = dict["TaskAction"] as! String
            }
            if dict.keys.contains("TaskExecutionId") {
                self.taskExecutionId = dict["TaskExecutionId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var taskExecutions: [ListTaskExecutionsResponseBody.TaskExecutions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskExecutions != nil {
            var tmp : [Any] = []
            for k in self.taskExecutions! {
                tmp.append(k.toMap())
            }
            map["TaskExecutions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskExecutions") {
            var tmp : [ListTaskExecutionsResponseBody.TaskExecutions] = []
            for v in dict["TaskExecutions"] as! [Any] {
                var model = ListTaskExecutionsResponseBody.TaskExecutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskExecutions = tmp
        }
    }
}

public class ListTaskExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTaskExecutionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTemplateVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var shareType: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ListTemplateVersionsResponseBody : Tea.TeaModel {
    public class TemplateVersions : Tea.TeaModel {
        public var description_: String?

        public var templateFormat: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("TemplateFormat") {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templateVersions: [ListTemplateVersionsResponseBody.TemplateVersions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateVersions != nil {
            var tmp : [Any] = []
            for k in self.templateVersions! {
                tmp.append(k.toMap())
            }
            map["TemplateVersions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateVersions") {
            var tmp : [ListTemplateVersionsResponseBody.TemplateVersions] = []
            for v in dict["TemplateVersions"] as! [Any] {
                var model = ListTemplateVersionsResponseBody.TemplateVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templateVersions = tmp
        }
    }
}

public class ListTemplateVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplateVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTemplateVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var category: String?

    public var createdBy: String?

    public var createdDateAfter: String?

    public var createdDateBefore: String?

    public var hasTrigger: Bool?

    public var isExample: Bool?

    public var isFavorite: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tags: [String: Any]?

    public var templateFormat: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDateAfter != nil {
            map["CreatedDateAfter"] = self.createdDateAfter!
        }
        if self.createdDateBefore != nil {
            map["CreatedDateBefore"] = self.createdDateBefore!
        }
        if self.hasTrigger != nil {
            map["HasTrigger"] = self.hasTrigger!
        }
        if self.isExample != nil {
            map["IsExample"] = self.isExample!
        }
        if self.isFavorite != nil {
            map["IsFavorite"] = self.isFavorite!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("CreatedBy") {
            self.createdBy = dict["CreatedBy"] as! String
        }
        if dict.keys.contains("CreatedDateAfter") {
            self.createdDateAfter = dict["CreatedDateAfter"] as! String
        }
        if dict.keys.contains("CreatedDateBefore") {
            self.createdDateBefore = dict["CreatedDateBefore"] as! String
        }
        if dict.keys.contains("HasTrigger") {
            self.hasTrigger = dict["HasTrigger"] as! Bool
        }
        if dict.keys.contains("IsExample") {
            self.isExample = dict["IsExample"] as! Bool
        }
        if dict.keys.contains("IsFavorite") {
            self.isFavorite = dict["IsFavorite"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TemplateFormat") {
            self.templateFormat = dict["TemplateFormat"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListTemplatesShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var createdBy: String?

    public var createdDateAfter: String?

    public var createdDateBefore: String?

    public var hasTrigger: Bool?

    public var isExample: Bool?

    public var isFavorite: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tagsShrink: String?

    public var templateFormat: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDateAfter != nil {
            map["CreatedDateAfter"] = self.createdDateAfter!
        }
        if self.createdDateBefore != nil {
            map["CreatedDateBefore"] = self.createdDateBefore!
        }
        if self.hasTrigger != nil {
            map["HasTrigger"] = self.hasTrigger!
        }
        if self.isExample != nil {
            map["IsExample"] = self.isExample!
        }
        if self.isFavorite != nil {
            map["IsFavorite"] = self.isFavorite!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("CreatedBy") {
            self.createdBy = dict["CreatedBy"] as! String
        }
        if dict.keys.contains("CreatedDateAfter") {
            self.createdDateAfter = dict["CreatedDateAfter"] as! String
        }
        if dict.keys.contains("CreatedDateBefore") {
            self.createdDateBefore = dict["CreatedDateBefore"] as! String
        }
        if dict.keys.contains("HasTrigger") {
            self.hasTrigger = dict["HasTrigger"] as! Bool
        }
        if dict.keys.contains("IsExample") {
            self.isExample = dict["IsExample"] as! Bool
        }
        if dict.keys.contains("IsFavorite") {
            self.isFavorite = dict["IsFavorite"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TemplateFormat") {
            self.templateFormat = dict["TemplateFormat"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var category: String?

        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var isFavorite: Bool?

        public var popularity: Int32?

        public var publisher: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateType: String?

        public var templateVersion: String?

        public var totalExecutionCount: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.isFavorite != nil {
                map["IsFavorite"] = self.isFavorite!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.publisher != nil {
                map["Publisher"] = self.publisher!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.totalExecutionCount != nil {
                map["TotalExecutionCount"] = self.totalExecutionCount!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HasTrigger") {
                self.hasTrigger = dict["HasTrigger"] as! Bool
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("IsFavorite") {
                self.isFavorite = dict["IsFavorite"] as! Bool
            }
            if dict.keys.contains("Popularity") {
                self.popularity = dict["Popularity"] as! Int32
            }
            if dict.keys.contains("Publisher") {
                self.publisher = dict["Publisher"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("TemplateFormat") {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("TotalExecutionCount") {
                self.totalExecutionCount = dict["TotalExecutionCount"] as! Int32
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templates: [ListTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            var tmp : [ListTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = ListTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class NotifyExecutionRequest : Tea.TeaModel {
    public var executionId: String?

    public var executionStatus: String?

    public var loopItem: String?

    public var notifyNote: String?

    public var notifyType: String?

    public var parameters: String?

    public var regionId: String?

    public var taskExecutionId: String?

    public var taskExecutionIds: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.executionStatus != nil {
            map["ExecutionStatus"] = self.executionStatus!
        }
        if self.loopItem != nil {
            map["LoopItem"] = self.loopItem!
        }
        if self.notifyNote != nil {
            map["NotifyNote"] = self.notifyNote!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        if self.taskExecutionIds != nil {
            map["TaskExecutionIds"] = self.taskExecutionIds!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("ExecutionStatus") {
            self.executionStatus = dict["ExecutionStatus"] as! String
        }
        if dict.keys.contains("LoopItem") {
            self.loopItem = dict["LoopItem"] as! String
        }
        if dict.keys.contains("NotifyNote") {
            self.notifyNote = dict["NotifyNote"] as! String
        }
        if dict.keys.contains("NotifyType") {
            self.notifyType = dict["NotifyType"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskExecutionId") {
            self.taskExecutionId = dict["TaskExecutionId"] as! String
        }
        if dict.keys.contains("TaskExecutionIds") {
            self.taskExecutionIds = dict["TaskExecutionIds"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
    }
}

public class NotifyExecutionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class NotifyExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NotifyExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = NotifyExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterDefaultPatchBaselineRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RegisterDefaultPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public var approvalRules: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: RegisterDefaultPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") {
            var model = RegisterDefaultPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RegisterDefaultPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterDefaultPatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RegisterDefaultPatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchInventoryRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
            }
        }
    }
    public var aggregator: [String]?

    public var filter: [SearchInventoryRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregator != nil {
            map["Aggregator"] = self.aggregator!
        }
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aggregator") {
            self.aggregator = dict["Aggregator"] as! [String]
        }
        if dict.keys.contains("Filter") {
            var tmp : [SearchInventoryRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = SearchInventoryRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SearchInventoryResponseBody : Tea.TeaModel {
    public var entities: [[String: Any]]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entities != nil {
            map["Entities"] = self.entities!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Entities") {
            self.entities = dict["Entities"] as! [[String: Any]]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchInventoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchInventoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchInventoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetServiceSettingsRequest : Tea.TeaModel {
    public var deliveryOssBucketName: String?

    public var deliveryOssEnabled: Bool?

    public var deliveryOssKeyPrefix: String?

    public var deliverySlsEnabled: Bool?

    public var deliverySlsProjectName: String?

    public var rdcEnterpriseId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryOssBucketName != nil {
            map["DeliveryOssBucketName"] = self.deliveryOssBucketName!
        }
        if self.deliveryOssEnabled != nil {
            map["DeliveryOssEnabled"] = self.deliveryOssEnabled!
        }
        if self.deliveryOssKeyPrefix != nil {
            map["DeliveryOssKeyPrefix"] = self.deliveryOssKeyPrefix!
        }
        if self.deliverySlsEnabled != nil {
            map["DeliverySlsEnabled"] = self.deliverySlsEnabled!
        }
        if self.deliverySlsProjectName != nil {
            map["DeliverySlsProjectName"] = self.deliverySlsProjectName!
        }
        if self.rdcEnterpriseId != nil {
            map["RdcEnterpriseId"] = self.rdcEnterpriseId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryOssBucketName") {
            self.deliveryOssBucketName = dict["DeliveryOssBucketName"] as! String
        }
        if dict.keys.contains("DeliveryOssEnabled") {
            self.deliveryOssEnabled = dict["DeliveryOssEnabled"] as! Bool
        }
        if dict.keys.contains("DeliveryOssKeyPrefix") {
            self.deliveryOssKeyPrefix = dict["DeliveryOssKeyPrefix"] as! String
        }
        if dict.keys.contains("DeliverySlsEnabled") {
            self.deliverySlsEnabled = dict["DeliverySlsEnabled"] as! Bool
        }
        if dict.keys.contains("DeliverySlsProjectName") {
            self.deliverySlsProjectName = dict["DeliverySlsProjectName"] as! String
        }
        if dict.keys.contains("RdcEnterpriseId") {
            self.rdcEnterpriseId = dict["RdcEnterpriseId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetServiceSettingsResponseBody : Tea.TeaModel {
    public class ServiceSettings : Tea.TeaModel {
        public var deliveryOssBucketName: String?

        public var deliveryOssEnabled: Bool?

        public var deliveryOssKeyPrefix: String?

        public var deliverySlsEnabled: Bool?

        public var deliverySlsProjectName: String?

        public var rdcEnterpriseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryOssBucketName != nil {
                map["DeliveryOssBucketName"] = self.deliveryOssBucketName!
            }
            if self.deliveryOssEnabled != nil {
                map["DeliveryOssEnabled"] = self.deliveryOssEnabled!
            }
            if self.deliveryOssKeyPrefix != nil {
                map["DeliveryOssKeyPrefix"] = self.deliveryOssKeyPrefix!
            }
            if self.deliverySlsEnabled != nil {
                map["DeliverySlsEnabled"] = self.deliverySlsEnabled!
            }
            if self.deliverySlsProjectName != nil {
                map["DeliverySlsProjectName"] = self.deliverySlsProjectName!
            }
            if self.rdcEnterpriseId != nil {
                map["RdcEnterpriseId"] = self.rdcEnterpriseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeliveryOssBucketName") {
                self.deliveryOssBucketName = dict["DeliveryOssBucketName"] as! String
            }
            if dict.keys.contains("DeliveryOssEnabled") {
                self.deliveryOssEnabled = dict["DeliveryOssEnabled"] as! Bool
            }
            if dict.keys.contains("DeliveryOssKeyPrefix") {
                self.deliveryOssKeyPrefix = dict["DeliveryOssKeyPrefix"] as! String
            }
            if dict.keys.contains("DeliverySlsEnabled") {
                self.deliverySlsEnabled = dict["DeliverySlsEnabled"] as! Bool
            }
            if dict.keys.contains("DeliverySlsProjectName") {
                self.deliverySlsProjectName = dict["DeliverySlsProjectName"] as! String
            }
            if dict.keys.contains("RdcEnterpriseId") {
                self.rdcEnterpriseId = dict["RdcEnterpriseId"] as! String
            }
        }
    }
    public var requestId: String?

    public var serviceSettings: [SetServiceSettingsResponseBody.ServiceSettings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceSettings != nil {
            var tmp : [Any] = []
            for k in self.serviceSettings! {
                tmp.append(k.toMap())
            }
            map["ServiceSettings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceSettings") {
            var tmp : [SetServiceSettingsResponseBody.ServiceSettings] = []
            for v in dict["ServiceSettings"] as! [Any] {
                var model = SetServiceSettingsResponseBody.ServiceSettings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceSettings = tmp
        }
    }
}

public class SetServiceSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetServiceSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetServiceSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var loopMode: String?

    public var mode: String?

    public var parameters: String?

    public var parentExecutionId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var safetyCheck: String?

    public var tags: [String: Any]?

    public var templateContent: String?

    public var templateName: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.loopMode != nil {
            map["LoopMode"] = self.loopMode!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.safetyCheck != nil {
            map["SafetyCheck"] = self.safetyCheck!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LoopMode") {
            self.loopMode = dict["LoopMode"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("ParentExecutionId") {
            self.parentExecutionId = dict["ParentExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SafetyCheck") {
            self.safetyCheck = dict["SafetyCheck"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TemplateContent") {
            self.templateContent = dict["TemplateContent"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class StartExecutionShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var loopMode: String?

    public var mode: String?

    public var parameters: String?

    public var parentExecutionId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var safetyCheck: String?

    public var tagsShrink: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.loopMode != nil {
            map["LoopMode"] = self.loopMode!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.safetyCheck != nil {
            map["SafetyCheck"] = self.safetyCheck!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LoopMode") {
            self.loopMode = dict["LoopMode"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("ParentExecutionId") {
            self.parentExecutionId = dict["ParentExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SafetyCheck") {
            self.safetyCheck = dict["SafetyCheck"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TemplateContent") {
            self.templateContent = dict["TemplateContent"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class StartExecutionResponseBody : Tea.TeaModel {
    public class Execution : Tea.TeaModel {
        public class CurrentTasks : Tea.TeaModel {
            public var taskAction: String?

            public var taskExecutionId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.taskAction != nil {
                    map["TaskAction"] = self.taskAction!
                }
                if self.taskExecutionId != nil {
                    map["TaskExecutionId"] = self.taskExecutionId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TaskAction") {
                    self.taskAction = dict["TaskAction"] as! String
                }
                if dict.keys.contains("TaskExecutionId") {
                    self.taskExecutionId = dict["TaskExecutionId"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var counters: [String: Any]?

        public var createDate: String?

        public var currentTasks: [StartExecutionResponseBody.Execution.CurrentTasks]?

        public var description_: String?

        public var endDate: String?

        public var executedBy: String?

        public var executionId: String?

        public var isParent: Bool?

        public var loopMode: String?

        public var mode: String?

        public var outputs: String?

        public var parameters: String?

        public var parentExecutionId: String?

        public var ramRole: String?

        public var resourceGroupId: String?

        public var safetyCheck: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var tags: [String: Any]?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.counters != nil {
                map["Counters"] = self.counters!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.currentTasks != nil {
                var tmp : [Any] = []
                for k in self.currentTasks! {
                    tmp.append(k.toMap())
                }
                map["CurrentTasks"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executedBy != nil {
                map["ExecutedBy"] = self.executedBy!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.isParent != nil {
                map["IsParent"] = self.isParent!
            }
            if self.loopMode != nil {
                map["LoopMode"] = self.loopMode!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.parentExecutionId != nil {
                map["ParentExecutionId"] = self.parentExecutionId!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.safetyCheck != nil {
                map["SafetyCheck"] = self.safetyCheck!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Counters") {
                self.counters = dict["Counters"] as! [String: Any]
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("CurrentTasks") {
                var tmp : [StartExecutionResponseBody.Execution.CurrentTasks] = []
                for v in dict["CurrentTasks"] as! [Any] {
                    var model = StartExecutionResponseBody.Execution.CurrentTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.currentTasks = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("ExecutedBy") {
                self.executedBy = dict["ExecutedBy"] as! String
            }
            if dict.keys.contains("ExecutionId") {
                self.executionId = dict["ExecutionId"] as! String
            }
            if dict.keys.contains("IsParent") {
                self.isParent = dict["IsParent"] as! Bool
            }
            if dict.keys.contains("LoopMode") {
                self.loopMode = dict["LoopMode"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("ParentExecutionId") {
                self.parentExecutionId = dict["ParentExecutionId"] as! String
            }
            if dict.keys.contains("RamRole") {
                self.ramRole = dict["RamRole"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SafetyCheck") {
                self.safetyCheck = dict["SafetyCheck"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var execution: StartExecutionResponseBody.Execution?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.execution?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.execution != nil {
            map["Execution"] = self.execution?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Execution") {
            var model = StartExecutionResponseBody.Execution()
            model.fromMap(dict["Execution"] as! [String: Any])
            self.execution = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIds: [String: Any]?

    public var resourceType: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String: Any]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class TagResourcesShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIdsShrink = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var content: String?

    public var executionId: String?

    public var regionId: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class TriggerExecutionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TriggerExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TriggerExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIds: [String: Any]?

    public var resourceType: String?

    public var tagKeys: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String: Any]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeys = dict["TagKeys"] as! [String: Any]
        }
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

    public var tagKeysShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeysShrink != nil {
            map["TagKeys"] = self.tagKeysShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIdsShrink = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeysShrink = dict["TagKeys"] as! String
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationRequest : Tea.TeaModel {
    public class AlarmConfig : Tea.TeaModel {
        public var contactGroups: [String]?

        public var healthCheckUrl: String?

        public var templateIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactGroups != nil {
                map["ContactGroups"] = self.contactGroups!
            }
            if self.healthCheckUrl != nil {
                map["HealthCheckUrl"] = self.healthCheckUrl!
            }
            if self.templateIds != nil {
                map["TemplateIds"] = self.templateIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactGroups") {
                self.contactGroups = dict["ContactGroups"] as! [String]
            }
            if dict.keys.contains("HealthCheckUrl") {
                self.healthCheckUrl = dict["HealthCheckUrl"] as! String
            }
            if dict.keys.contains("TemplateIds") {
                self.templateIds = dict["TemplateIds"] as! [String]
            }
        }
    }
    public var alarmConfig: UpdateApplicationRequest.AlarmConfig?

    public var deleteAlarmRulesBeforeUpdate: Bool?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alarmConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmConfig != nil {
            map["AlarmConfig"] = self.alarmConfig?.toMap()
        }
        if self.deleteAlarmRulesBeforeUpdate != nil {
            map["DeleteAlarmRulesBeforeUpdate"] = self.deleteAlarmRulesBeforeUpdate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmConfig") {
            var model = UpdateApplicationRequest.AlarmConfig()
            model.fromMap(dict["AlarmConfig"] as! [String: Any])
            self.alarmConfig = model
        }
        if dict.keys.contains("DeleteAlarmRulesBeforeUpdate") {
            self.deleteAlarmRulesBeforeUpdate = dict["DeleteAlarmRulesBeforeUpdate"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class UpdateApplicationShrinkRequest : Tea.TeaModel {
    public var alarmConfigShrink: String?

    public var deleteAlarmRulesBeforeUpdate: Bool?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmConfigShrink != nil {
            map["AlarmConfig"] = self.alarmConfigShrink!
        }
        if self.deleteAlarmRulesBeforeUpdate != nil {
            map["DeleteAlarmRulesBeforeUpdate"] = self.deleteAlarmRulesBeforeUpdate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmConfig") {
            self.alarmConfigShrink = dict["AlarmConfig"] as! String
        }
        if dict.keys.contains("DeleteAlarmRulesBeforeUpdate") {
            self.deleteAlarmRulesBeforeUpdate = dict["DeleteAlarmRulesBeforeUpdate"] as! Bool
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class UpdateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var createdDate: String?

        public var description_: String?

        public var name: String?

        public var resourceGroupId: String?

        public var tags: [String: Any]?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var application: UpdateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = UpdateApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var name: String?

    public var newName: String?

    public var operationName: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newName != nil {
            map["NewName"] = self.newName!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewName") {
            self.newName = dict["NewName"] as! String
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateApplicationGroupShrinkRequest : Tea.TeaModel {
    public var applicationName: String?

    public var name: String?

    public var newName: String?

    public var operationName: String?

    public var parametersShrink: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newName != nil {
            map["NewName"] = self.newName!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewName") {
            self.newName = dict["NewName"] as! String
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateApplicationGroupResponseBody : Tea.TeaModel {
    public class ApplicationGroup : Tea.TeaModel {
        public var applicationName: String?

        public var createdDate: String?

        public var deployRegionId: String?

        public var description_: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("DeployRegionId") {
                self.deployRegionId = dict["DeployRegionId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImportTagKey") {
                self.importTagKey = dict["ImportTagKey"] as! String
            }
            if dict.keys.contains("ImportTagValue") {
                self.importTagValue = dict["ImportTagValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var applicationGroup: UpdateApplicationGroupResponseBody.ApplicationGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroup != nil {
            map["ApplicationGroup"] = self.applicationGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationGroup") {
            var model = UpdateApplicationGroupResponseBody.ApplicationGroup()
            model.fromMap(dict["ApplicationGroup"] as! [String: Any])
            self.applicationGroup = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateApplicationGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var executionId: String?

    public var parameters: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExecutionId") {
            self.executionId = dict["ExecutionId"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class UpdateExecutionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateExecutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstancePackageStateRequest : Tea.TeaModel {
    public var configureAction: String?

    public var instanceId: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configureAction != nil {
            map["ConfigureAction"] = self.configureAction!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigureAction") {
            self.configureAction = dict["ConfigureAction"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class UpdateInstancePackageStateShrinkRequest : Tea.TeaModel {
    public var configureAction: String?

    public var instanceId: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configureAction != nil {
            map["ConfigureAction"] = self.configureAction!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigureAction") {
            self.configureAction = dict["ConfigureAction"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateVersion") {
            self.templateVersion = dict["TemplateVersion"] as! String
        }
    }
}

public class UpdateInstancePackageStateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateInstancePackageStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstancePackageStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateInstancePackageStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOpsItemRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var opsItemId: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var status: String?

    public var tags: [String: Any]?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.opsItemId != nil {
            map["OpsItemId"] = self.opsItemId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedupString") {
            self.dedupString = dict["DedupString"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("OpsItemId") {
            self.opsItemId = dict["OpsItemId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("Solutions") {
            self.solutions = dict["Solutions"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateOpsItemShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var opsItemId: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var status: String?

    public var tagsShrink: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.opsItemId != nil {
            map["OpsItemId"] = self.opsItemId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedupString") {
            self.dedupString = dict["DedupString"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("OpsItemId") {
            self.opsItemId = dict["OpsItemId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("Solutions") {
            self.solutions = dict["Solutions"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateOpsItemResponseBody : Tea.TeaModel {
    public class OpsItem : Tea.TeaModel {
        public var attributes: String?

        public var category: String?

        public var createDate: String?

        public var createdBy: String?

        public var description_: String?

        public var lastModifiedBy: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resourceGroupId: String?

        public var resources: [String]?

        public var severity: String?

        public var solutions: [String]?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedBy != nil {
                map["LastModifiedBy"] = self.lastModifiedBy!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.solutions != nil {
                map["Solutions"] = self.solutions!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LastModifiedBy") {
                self.lastModifiedBy = dict["LastModifiedBy"] as! String
            }
            if dict.keys.contains("OpsItemId") {
                self.opsItemId = dict["OpsItemId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! [String]
            }
            if dict.keys.contains("Severity") {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Solutions") {
                self.solutions = dict["Solutions"] as! [String]
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var opsItem: UpdateOpsItemResponseBody.OpsItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.opsItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItem != nil {
            map["OpsItem"] = self.opsItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpsItem") {
            var model = UpdateOpsItemResponseBody.OpsItem()
            model.fromMap(dict["OpsItem"] as! [String: Any])
            self.opsItem = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateOpsItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateParameterRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class UpdateParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var parameter: UpdateParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") {
            var model = UpdateParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePatchBaselineRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var approvalRules: String?

    public var approvedPatches: [String]?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var rejectedPatches: [String]?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sources: [String]?

    public var tags: [UpdatePatchBaselineRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatches != nil {
            map["ApprovedPatches"] = self.approvedPatches!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatches != nil {
            map["RejectedPatches"] = self.rejectedPatches!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalRules") {
            self.approvalRules = dict["ApprovalRules"] as! String
        }
        if dict.keys.contains("ApprovedPatches") {
            self.approvedPatches = dict["ApprovedPatches"] as! [String]
        }
        if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
            self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RejectedPatches") {
            self.rejectedPatches = dict["RejectedPatches"] as! [String]
        }
        if dict.keys.contains("RejectedPatchesAction") {
            self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [String]
        }
        if dict.keys.contains("Tags") {
            var tmp : [UpdatePatchBaselineRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = UpdatePatchBaselineRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class UpdatePatchBaselineShrinkRequest : Tea.TeaModel {
    public var approvalRules: String?

    public var approvedPatchesShrink: String?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var rejectedPatchesShrink: String?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sourcesShrink: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatchesShrink != nil {
            map["ApprovedPatches"] = self.approvedPatchesShrink!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatchesShrink != nil {
            map["RejectedPatches"] = self.rejectedPatchesShrink!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalRules") {
            self.approvalRules = dict["ApprovalRules"] as! String
        }
        if dict.keys.contains("ApprovedPatches") {
            self.approvedPatchesShrink = dict["ApprovedPatches"] as! String
        }
        if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
            self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RejectedPatches") {
            self.rejectedPatchesShrink = dict["RejectedPatches"] as! String
        }
        if dict.keys.contains("RejectedPatchesAction") {
            self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class UpdatePatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var approvalRules: String?

        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var rejectedPatches: [String]?

        public var rejectedPatchesAction: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [UpdatePatchBaselineResponseBody.PatchBaseline.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.rejectedPatches != nil {
                map["RejectedPatches"] = self.rejectedPatches!
            }
            if self.rejectedPatchesAction != nil {
                map["RejectedPatchesAction"] = self.rejectedPatchesAction!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalRules") {
                self.approvalRules = dict["ApprovalRules"] as! String
            }
            if dict.keys.contains("ApprovedPatches") {
                self.approvedPatches = dict["ApprovedPatches"] as! [String]
            }
            if dict.keys.contains("ApprovedPatchesEnableNonSecurity") {
                self.approvedPatchesEnableNonSecurity = dict["ApprovedPatchesEnableNonSecurity"] as! Bool
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperationSystem") {
                self.operationSystem = dict["OperationSystem"] as! String
            }
            if dict.keys.contains("RejectedPatches") {
                self.rejectedPatches = dict["RejectedPatches"] as! [String]
            }
            if dict.keys.contains("RejectedPatchesAction") {
                self.rejectedPatchesAction = dict["RejectedPatchesAction"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Sources") {
                self.sources = dict["Sources"] as! [String]
            }
            if dict.keys.contains("Tags") {
                var tmp : [UpdatePatchBaselineResponseBody.PatchBaseline.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = UpdatePatchBaselineResponseBody.PatchBaseline.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var patchBaseline: UpdatePatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PatchBaseline") {
            var model = UpdatePatchBaselineResponseBody.PatchBaseline()
            model.fromMap(dict["PatchBaseline"] as! [String: Any])
            self.patchBaseline = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePatchBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSecretParameterRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class UpdateSecretParameterShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class UpdateSecretParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Constraints") {
                self.constraints = dict["Constraints"] as! String
            }
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KeyId") {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParameterVersion") {
                self.parameterVersion = dict["ParameterVersion"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var parameter: UpdateSecretParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parameter") {
            var model = UpdateSecretParameterResponseBody.Parameter()
            model.fromMap(dict["Parameter"] as! [String: Any])
            self.parameter = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateSecretParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStateConfigurationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var stateConfigurationId: String?

    public var tags: [String: Any]?

    public var targets: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.stateConfigurationId != nil {
            map["StateConfigurationId"] = self.stateConfigurationId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigureMode") {
            self.configureMode = dict["ConfigureMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ScheduleExpression") {
            self.scheduleExpression = dict["ScheduleExpression"] as! String
        }
        if dict.keys.contains("ScheduleType") {
            self.scheduleType = dict["ScheduleType"] as! String
        }
        if dict.keys.contains("StateConfigurationId") {
            self.stateConfigurationId = dict["StateConfigurationId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Targets") {
            self.targets = dict["Targets"] as! String
        }
    }
}

public class UpdateStateConfigurationShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var stateConfigurationId: String?

    public var tagsShrink: String?

    public var targets: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.stateConfigurationId != nil {
            map["StateConfigurationId"] = self.stateConfigurationId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConfigureMode") {
            self.configureMode = dict["ConfigureMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ScheduleExpression") {
            self.scheduleExpression = dict["ScheduleExpression"] as! String
        }
        if dict.keys.contains("ScheduleType") {
            self.scheduleType = dict["ScheduleType"] as! String
        }
        if dict.keys.contains("StateConfigurationId") {
            self.stateConfigurationId = dict["StateConfigurationId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Targets") {
            self.targets = dict["Targets"] as! String
        }
    }
}

public class UpdateStateConfigurationResponseBody : Tea.TeaModel {
    public class StateConfiguration : Tea.TeaModel {
        public var configureMode: String?

        public var createTime: String?

        public var description_: String?

        public var parameters: String?

        public var resourceGroupId: String?

        public var scheduleExpression: String?

        public var scheduleType: String?

        public var stateConfigurationId: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configureMode != nil {
                map["ConfigureMode"] = self.configureMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.stateConfigurationId != nil {
                map["StateConfigurationId"] = self.stateConfigurationId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigureMode") {
                self.configureMode = dict["ConfigureMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ScheduleExpression") {
                self.scheduleExpression = dict["ScheduleExpression"] as! String
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("StateConfigurationId") {
                self.stateConfigurationId = dict["StateConfigurationId"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("Targets") {
                self.targets = dict["Targets"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var stateConfiguration: [UpdateStateConfigurationResponseBody.StateConfiguration]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stateConfiguration != nil {
            var tmp : [Any] = []
            for k in self.stateConfiguration! {
                tmp.append(k.toMap())
            }
            map["StateConfiguration"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StateConfiguration") {
            var tmp : [UpdateStateConfigurationResponseBody.StateConfiguration] = []
            for v in dict["StateConfiguration"] as! [Any] {
                var model = UpdateStateConfigurationResponseBody.StateConfiguration()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stateConfiguration = tmp
        }
    }
}

public class UpdateStateConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStateConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateStateConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class UpdateTemplateShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class UpdateTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedBy") {
                self.createdBy = dict["CreatedBy"] as! String
            }
            if dict.keys.contains("CreatedDate") {
                self.createdDate = dict["CreatedDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HasTrigger") {
                self.hasTrigger = dict["HasTrigger"] as! Bool
            }
            if dict.keys.contains("Hash") {
                self.hash = dict["Hash"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String: Any]
            }
            if dict.keys.contains("TemplateFormat") {
                self.templateFormat = dict["TemplateFormat"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateVersion") {
                self.templateVersion = dict["TemplateVersion"] as! String
            }
            if dict.keys.contains("UpdatedBy") {
                self.updatedBy = dict["UpdatedBy"] as! String
            }
            if dict.keys.contains("UpdatedDate") {
                self.updatedDate = dict["UpdatedDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var template: UpdateTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") {
            var model = UpdateTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateTemplateContentRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var templateURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplateURL") {
            self.templateURL = dict["TemplateURL"] as! String
        }
    }
}

public class ValidateTemplateContentResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var outputs: String?

        public var properties: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Outputs") {
                self.outputs = dict["Outputs"] as! String
            }
            if dict.keys.contains("Properties") {
                self.properties = dict["Properties"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var outputs: String?

    public var parameters: String?

    public var ramRole: String?

    public var requestId: String?

    public var tasks: [ValidateTemplateContentResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ValidateTemplateContentResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ValidateTemplateContentResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class ValidateTemplateContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateTemplateContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ValidateTemplateContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
