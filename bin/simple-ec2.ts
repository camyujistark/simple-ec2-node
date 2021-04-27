#!/usr/bin/env node
import "source-map-support/register";
import * as cdk from "@aws-cdk/core";
import { SimpleEc2Stack } from "../lib/simple-ec2-stack";

const app = new cdk.App();
new SimpleEc2Stack(app, "SimpleEc2Stack", {
  description: "This is a simple EC2 stack",
});
