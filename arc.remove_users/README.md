Role Name
=========

A role to remove old and default users from all systems.

Requirements
------------

None

Role Variables
--------------

* users: a list of users to be removed

Dependencies
------------

None

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: arc.remove_users, become: true }

License
-------

GPLv3

Author Information
------------------

Sensei Rat

https://senseirat.com
