# WVS Github Sync

This action will sync a Github repository into WVS.io.

## Environment Variables

### `WVS_USERNAME`

**Required** The wvs.io username used to push

### `WVS_PASSWORD`

**Required** The wvs.io personal access token for the user.  Can be generated here https://wvs.io/-/profile/personal_access_tokens.

## Inputs

### `wvs-repo`

**Required** The wvs.io repository url.

## Outputs

### `time`

The time this action ran.

## Example usage

* Create a yml file in your Github repository under .github/workflows.  Example wvs-sync.yml.
* Add your wvs personal access token to your Github secrets.  This can be done on the repo or at higher levels such as your organization: https://docs.github.com/en/actions/security-guides/encrypted-secrets

```yaml
name: wvs-sync-action
run-name: WVS Sync Action
on: [push]
jobs:
  sync-to-wvs:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0
      - uses: matthewsanders/wvs-github-sync-action@main
        with:
          wvs-repo: 'https://wvs.io/<mygroup>/<myproject>.git'
        env:
          WVS_USERNAME: "wvsuser"
          WVS_PASSWORD: ${{ secrets.WVS_PASSWORD }}
```