# Habitat Package: etcd
Endocode Habitat Maintainers <habitat@endocode.com>

## Description

- [www](https://coreos.com/etcd)
- [Docs](https://coreos.com/etcd/docs/latest/)

> etcd is a distributed key value store that provides a reliable way to store data across a cluster of machines

- It’s open-source and available on GitHub.
- etcd gracefully handles leader elections during network partitions and will tolerate machine failure, including the leader.


## Usage

- On the first node: `hab sup start endocode/etcd --topology leader`
- On subsequent nodes: `hab sup start endocode/crate -- topology leader --peer <first node ip>`

On all nodes the following ports are available:

- **2379**: etcd client communication.
- **2380**: etcd server to server communication.

The ports can be changed.


On all nodes the following URLs are accessible:
- **listen-client-urls**: URLs to listen on for client traffic. Default to https://IP:2379
- **listen-peer-urls**: URLs to listen on for peer traffic. Default to https://IP:2380

The URLs can be changed.


### Notes

- hab v0.22/0.23 due to a bug in domain resolution inside these versions
of Habitat, etcd configuration is only using IP addresses to contact
other peers.
