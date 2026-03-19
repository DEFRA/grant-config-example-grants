# grant-config-example-grants

Grant specific config for example grants.

## Usage

Add any grant config below a specific top level directory which indicates the name of the grant. Inside
there subdirectories can be provided to split down the config between services or functions.

## Making changes

To make changes to this repo, please follow the steps below:
1. Make the changes to config as required.
2. Run `npm run version:create` OR `npx @changesets/cli` to create a changeset file. This will guide you through the process of documenting your changes.`
3. Ensure there is a changeset .md file added to the commit (should be done automatically).
4. Push to branch, and create a pull request.
5. Github actions will verify the build.
6. After review, merge the pull request.
7. Github action will automatically increment the version and publish.


## Licence

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

<http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3>

The following attribution statement MUST be cited in your products and applications when using this information.

> Contains public sector information licensed under the Open Government license v3

### About the licence

The Open Government Licence (OGL) was developed by the Controller of His Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
