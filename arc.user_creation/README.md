Role Name
=========

A role to add an administrative user

Requirements
------------

None

Role Variables
--------------

* admin_user: the user name of the admin
* admin_password: the password of the user (will be removed later)
* sudo_group: defines whether we should use sudo or wheel as the group
* admin_groups: the groups the admin should be assigned too
* admin_home: the home directory of the admin

Dependencies
------------

None

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: arc.user_creation, become: true }

License
-------

GPLv3

Author Information
------------------

Sensei Rat

https://senseirat.com
