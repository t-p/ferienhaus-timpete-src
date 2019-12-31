#!/usr/bin/env node
import cdk = require('@aws-cdk/core');
import { DeploymentStack } from '../lib/deployment-stack';

const app = new cdk.App();
new DeploymentStack(app, 'DeploymentStack', {
    env: {
        // Stack must be in us-east-1, because the ACM certificate for a
        // global CloudFront distribution must be requested in us-east-1.
        region: 'us-east-1'
    }
});
