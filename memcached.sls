memcached:
  pkg.installed:
    - name: memcached
  file.managed:
    - name: /etc/memcached.conf
    - source: salt://openstack/memcached/memcached.conf
  service.running:
    - enable: true
    - restart: True
    - watch:
      - file: /etc/memcached.conf

python-memcache:
  pkg.installed:
    - name: python-memcache
  require:
    - pkg: memcached

