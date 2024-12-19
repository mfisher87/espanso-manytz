# Espanso package - ManyTZ

For saving time typing out many time zones. Converts the given time in your current time
zone to a listing containing the same time in Pacific Time and Mountain Time.

```
;mtz(5:00PM)
```

If executed from within the Mountain Standard Time (MST) timezone, will be expanded to:

> 4:00 PM PST | 5:00 PM MST 


## Install

First, [install espanso](https://espanso.org/install/). On Linux, don't forget to set up
the service: `espanso service register && espanso start`

Then, install ManyTZ:

```bash
espanso install manytz --git "https://github.com/mfisher87/espanso-manytz" --external
```

It may take a moment for the espanso service to register the installation. Check with
`espanso match list`.


## Limitations

* Time zones are hardcoded. I haven't yet figured out how to allow a user of this
  package to pass in their own time zone list. If you want your own time zone list, for
  now, fork this package.
