Role Name
=========

A role to configure the initial ansible user for managing devices.

Requirements
------------

None

Role Variables
--------------

ansible_user: The username that will be used for the new user
ansible_groups: Any groups that should be appended to the user.

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: arc.ansible_config, ansible_user: ansible, ansible_groups: docker }

License
-------

GPLv3

Author Information
------------------

Sensei Rat
https://senseirat.com
