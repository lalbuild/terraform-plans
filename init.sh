#!/bin/bash
#terraform init
terraform import github_repository.dockerfiles dockerfiles
terraform import github_repository.lal lal
terraform import github_repository.lal-build_xyz lal-build.xyz
terraform import github_branch_protection.dockerfiles_master dockerfiles:master
terraform import github_branch_protection.lal_master lal:master
#terraform import github_branch_protection.lal-build_xyz_master lal-build.xyz:master
terraform import github_membership.membership_clux lalbuild:clux
terraform import github_membership.membership_gleaver lalbuild:gleaver
terraform import github_membership.membership_bencord0 lalbuild:bencord0
terraform import github_membership.membership_johanbrandhorst lalbuild:johanbrandhorst


#terraform import github_repository_webhook.lal-build_xyz-heroku lal-build.xyz/17491857
