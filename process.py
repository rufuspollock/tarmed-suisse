import csv

fo = open("LEISTUNG_TEXT.csv")
reader = csv.DictReader(fo)

out = {}

for row in reader:
    if row['SPRACHE'] == 'D':
        out[row['LNR']] = row

print len (out)

fo = open("LEISTUNG.csv")

reader = csv.DictReader(fo)

add = ["BEZ_255"]

tmp = {}

fieldnames = reader.fieldnames + add

writer = csv.DictWriter(open("consolidated.csv", "w"), fieldnames)

for row in reader:

    if row['LNR'] in tmp:
        continue

    tmp[row['LNR']] = True

    for col in add:
        row[col] = out[row['LNR']][col]

    writer.writerow(row)



