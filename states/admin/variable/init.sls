{% if grains.get('site') is not none %}
{% set mysite = grains['site'] %}

site_found:
  test.succeed_without_changes:
    - name: Found a site grain
    - comment: My site is {{ mysite }}
{% else %}

site_not_found:
  test.fail_without_changes:
    - name: Site grain not found
    - comment: No site grain has been found

{% endif %}
