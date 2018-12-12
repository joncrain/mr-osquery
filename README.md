# osquery
_Osquery plugin for MunkiReport_

This module installs `osqueryi` for using interactive osquery queries with other modules. It does not create any tables itself and installs the `osqueryi` binary to `${MUNKIPATH}osqueryi`. Information on creating these queries can be found at the [osquery website](https://osquery.readthedocs.io/en/stable/introduction/using-osqueryi/).

Example:

```sh
osqueryi --json "SELECT * FROM routes WHERE destination = '::1'" > ${CACHEDIR}file.json
```
