// Copyright 2016 Marapongo, Inc. All rights reserved.

module aws/cloudformation

// A special service that simply emits a CloudFormation template.
service Resource {
    new() intrinsic

    properties {
        // The CF resource name.
        readonly resource: string
        // An optional list of properties to map.
        optional readonly properties: schema
        // An optional list of other CloudFormation resources that this depends on.
        optional readonly dependsOn: service[]
    }
}
