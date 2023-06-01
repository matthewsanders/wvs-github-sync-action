# WVS Github Sync

This action prints will sync a Github repository into WVS.io.

## Environment Variables

### `WVS_USERNAME`

**Required** The wvs.io username used to push

### `WVS_PASSWORD`

**Required** The wvs.io password for the user

## Inputs

### `wvs-repo`

**Required** The wvs.io repository url.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
uses: matthewsanders/wvs-github-sync-action@main
with:
  wvs-repo: 'https://wvs.io/<mygroup>/<myproject>.git'
env:
  WVS_USERNAME: "wvsuser"
  WVS_PASSWORD: ${{ secrets.WVS_PASSWORD }} // Generate here: https://wvs.io/-/profile/personal_access_tokens
```
