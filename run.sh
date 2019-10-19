#!/bin/bash
 
ansible-playbook -i inventory --ask-become-pass main.yml
