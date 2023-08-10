# Lai A., 2023.

import sys, csv, re

codes = [{"code":"1133","system":"prod"},{"code":"12067","system":"prod"},{"code":"13604","system":"prod"},{"code":"13735","system":"prod"},{"code":"14982","system":"prod"},{"code":"16583","system":"prod"},{"code":"18765","system":"prod"},{"code":"20094","system":"prod"},{"code":"2156","system":"prod"},{"code":"23511","system":"prod"},{"code":"23850","system":"prod"},{"code":"26502","system":"prod"},{"code":"32593","system":"prod"},{"code":"33132","system":"prod"},{"code":"33560","system":"prod"},{"code":"35156","system":"prod"},{"code":"37737","system":"prod"},{"code":"40983","system":"prod"},{"code":"4123","system":"prod"},{"code":"4687","system":"prod"},{"code":"5493","system":"prod"},{"code":"6882","system":"prod"},{"code":"7405","system":"prod"},{"code":"768","system":"prod"},{"code":"8404","system":"prod"},{"code":"925","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-140mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-140mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-140mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
