#!/bin/bash


talosctl apply-config --talosconfig=./talosconfig -f controlplane.yaml -n 10.0.2.51 -e 10.0.2.51 --config-patch @nodes/node1.yaml
talosctl apply-config --talosconfig=./talosconfig -f controlplane.yaml -n 10.0.2.52 -e 10.0.2.52 --config-patch @nodes/node2.yaml
talosctl apply-config --talosconfig=./talosconfig -f controlplane.yaml -n 10.0.2.53 -e 10.0.2.53 --config-patch @nodes/node3.yaml
talosctl apply-config --talosconfig=./talosconfig -f controlplane.yaml -n 10.0.2.54 -e 10.0.2.54 --config-patch @nodes/node4.yaml
