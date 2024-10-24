#!/bin/bash

ansible-galaxy collection install nvidia.nvue
patch -u -b ~/.ansible/collections/ansible_collections/nvidia/nvue/roles/mlag/tasks/mlag-config.yml -i mlag-config.patch
