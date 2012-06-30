
# Read tables LEISTUNG and LEISTUNG_TEXT
# Extract first record per LNR, ignore other entries (they're not valid anymore, see GUELTIG_VON,GUELTIG_BIS)
# Add description in LEISTUNG_TEXT.BEZ_255 to record
# Save to consolidated.csv

import csv

fo = open("LEISTUNG_TEXT.csv")
reader = csv.DictReader(fo)

out = {}

for row in reader:
    if row['SPRACHE'] == 'D':
        out[row['LNR']] = row

fo = open("LEISTUNG.csv")

reader = csv.DictReader(fo)

add = ["BEZ_255"]

tmp = {}

fieldnames = reader.fieldnames + add

writer = csv.DictWriter(open("consolidated.csv", "w"), fieldnames)

for row in reader:

    if row["LNR"] in tmp:
        continue

    tmp[row["LNR"]] = True

    for col in add:
        row[col] = out[row["LNR"]][col]

    writer.writerow(row)



