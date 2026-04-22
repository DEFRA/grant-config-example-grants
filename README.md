# grant-config-example-grants

Grant specific config for example grants.

## Usage

Add any grant config below a specific top level directory which indicates the name of the grant. Inside
there subdirectories can be provided to split down the config between services or functions.

## Making changes

To make changes to this repo, please follow the steps below.
Note that normal flow is to create ever increasing versions, by whichever semver increment is appropriate. If you wish
to release a hotfix for an older version, follow the change below [Making changes for a hotfix](#making-changes-for-a-hotfix)

1. Make the changes to config as required on a branch.
2. Run `npm run version` OR `npx @changesets/cli` to create a changeset file. This will prompt you to document your changes.
3. A changeset .md file will be added to the commit automatically.
4. Push to branch, and create a pull request.
5. After review, merge the pull request.
6. Github action will create a second pull request with versioning applied
    - At this point you can create further changes to include in the next version on further branches if desired
    - Repeat steps 1-5 for further changes to include in the next version
7. Merge this pull request to apply version and publish tag.

## Making changes for a hotfix

You may want to release a hotfix to a specific version of a grant. E.g to release v2.2.4 when v3.0.0 already exists.
1. Create the hotfix/release branch from the tag version you want to build upon
   e.g.
   ```
      git checkout 2.2.3
      git checkout -b hotfix/release-2.2.x
   
      # you can use either hotfix/* or release/* for you branch name
   ```
2. Make the changes to config as required on that branch.
3. Run `npm run version` to create a changeset file. This will guide you through the process of documenting your changes. Note that you should choose semver increment very carefully here, usually only patch would make sense.
4. A changeset .md file will be added to the commit automatically.
5. Push to branch
6. If you want the hotfix changes to be reviewed by PR, then you will need to create a second branch from the hotfix/release branch, make the changes there, push to github, and create a pull request. Then after merge proceed to step 7.
7. Run the `Create Hot Fix` workflow via github manually, selecting the branch you just pushed to.
8. Github action will create a pull request with versioning applied
9. Merge this pull request to run `Release Hot Fix` workflow and apply version and publish tag.

## Licence

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

<http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3>

The following attribution statement MUST be cited in your products and applications when using this information.

> Contains public sector information licensed under the Open Government license v3

### About the licence

The Open Government Licence (OGL) was developed by the Controller of His Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
