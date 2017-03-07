# linux-upstart Cookbook

Relaxs the ulimits on a Ubuntu Server to scale it up.

## Requirements

### Platforms

- Ubuntu 64-bit (amd64)

### Chef

- Chef 12.10

### Cookbooks

limits - tunes Ubuntu ulimits

## Attributes

## Usage

Just include `linux-uberlimits` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[linux-uberlimits]"
  ]
}
```

Within a Vagrant provisioning session, use the `vagrant reload` provisioner to force a clean reload after provisioning this linux-uberlimits recipe.

# License and Authors

Authors: Lonnie VanZandt
