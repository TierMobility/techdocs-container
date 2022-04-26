# TIER Mobility TechDocs Container

A Docker container that powers the generation of TechDocs static sites at TIER Mobility.  
Inspired by the Backstage [techdocs-container](https://github.com/backstage/techdocs-container).

Builds on top of [mkdocs](https://mkdocs.org/) and our customized [core mkdocs plugin](https://github.com/TierMobility/tier-mkdocs-techdocs-core).

## Usage

First, create a `docs/` directory and place your markdown files into it. Note that for `mkdocs` to properly recognize your docs directory, this folder **needs** to contain an `index.md` file.  
Then, create your mkdocs config file, `mkdocs.yaml` and place it next to (not inside) the `docs/` directory. In order to use the functionality provided by our [core mkdocs plugin](https://github.com/TierMobility/tier-mkdocs-techdocs-core), specify `tier-techdocs-core` in the `plugins` section of the config.

Here is an example of a `mkdocs.yaml` config file:

```yaml
site_name: My Docs

plugins:
  - tier-techdocs-core
```

Before you proceed, make sure you are logged in to GitHub container registry. Check the [official documentation](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry) to learn how to do this.

Now, you can use the Backstage `techdocs-cli` to serve a preview of your static site:

`npx @techdocs/cli serve -i ghcr.io/tiermobility/techdocs-container:latest`
