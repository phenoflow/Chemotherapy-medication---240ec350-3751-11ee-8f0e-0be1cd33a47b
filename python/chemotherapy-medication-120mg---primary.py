# Lai A., 2023.

import sys, csv, re

codes = [{"code":"11003","system":"prod"},{"code":"12387","system":"prod"},{"code":"13306","system":"prod"},{"code":"13483","system":"prod"},{"code":"14347","system":"prod"},{"code":"16103","system":"prod"},{"code":"17050","system":"prod"},{"code":"17642","system":"prod"},{"code":"19283","system":"prod"},{"code":"2136","system":"prod"},{"code":"26064","system":"prod"},{"code":"28004","system":"prod"},{"code":"29540","system":"prod"},{"code":"31115","system":"prod"},{"code":"31179","system":"prod"},{"code":"31539","system":"prod"},{"code":"32490","system":"prod"},{"code":"32614","system":"prod"},{"code":"33883","system":"prod"},{"code":"34258","system":"prod"},{"code":"35040","system":"prod"},{"code":"35688","system":"prod"},{"code":"36163","system":"prod"},{"code":"40273","system":"prod"},{"code":"796","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-120mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-120mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-120mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
