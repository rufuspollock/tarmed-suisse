# TARMED 

Switzerland's medical procedure codes and cost point system.

Dataset: http://datahub.io/dataset/tarmed-suisse

## System requirements
- Python
- [mdbtools](http://mdbtools.sourceforge.net/)
  - Available through `apt-get`, `brew` etc.
  - See also http://handbook.schoolofdata.org/en/latest/liberating-access-databases.html

## Data extraction
```
python dump.p
ls cache
```

## Data consolidation
```
python process.py
less consolidated.csv
```

## Table LEISTUNG

- TP_TL: TARMED points
- TP_ASSI, TP_AL: factor to multiply with TP_TL, qualification of the person administering the service (?)
