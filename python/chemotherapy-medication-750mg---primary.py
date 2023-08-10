# Lai A., 2023.

import sys, csv, re

codes = [{"code":"10401","system":"prod"},{"code":"12339","system":"prod"},{"code":"1314","system":"prod"},{"code":"14395","system":"prod"},{"code":"14576","system":"prod"},{"code":"14857","system":"prod"},{"code":"15596","system":"prod"},{"code":"16489","system":"prod"},{"code":"16768","system":"prod"},{"code":"17177","system":"prod"},{"code":"17186","system":"prod"},{"code":"18197","system":"prod"},{"code":"18236","system":"prod"},{"code":"1899","system":"prod"},{"code":"19072","system":"prod"},{"code":"19370","system":"prod"},{"code":"2128","system":"prod"},{"code":"21555","system":"prod"},{"code":"21899","system":"prod"},{"code":"23209","system":"prod"},{"code":"24270","system":"prod"},{"code":"24783","system":"prod"},{"code":"2502","system":"prod"},{"code":"25903","system":"prod"},{"code":"26261","system":"prod"},{"code":"26387","system":"prod"},{"code":"267","system":"prod"},{"code":"26790","system":"prod"},{"code":"26855","system":"prod"},{"code":"270","system":"prod"},{"code":"2782","system":"prod"},{"code":"27967","system":"prod"},{"code":"28325","system":"prod"},{"code":"2837","system":"prod"},{"code":"28605","system":"prod"},{"code":"29340","system":"prod"},{"code":"29675","system":"prod"},{"code":"30111","system":"prod"},{"code":"3079","system":"prod"},{"code":"31171","system":"prod"},{"code":"31172","system":"prod"},{"code":"31215","system":"prod"},{"code":"3348","system":"prod"},{"code":"33815","system":"prod"},{"code":"34166","system":"prod"},{"code":"34687","system":"prod"},{"code":"34728","system":"prod"},{"code":"34902","system":"prod"},{"code":"35126","system":"prod"},{"code":"35445","system":"prod"},{"code":"35487","system":"prod"},{"code":"35787","system":"prod"},{"code":"35929","system":"prod"},{"code":"36575","system":"prod"},{"code":"36792","system":"prod"},{"code":"37099","system":"prod"},{"code":"3772","system":"prod"},{"code":"38056","system":"prod"},{"code":"38509","system":"prod"},{"code":"3881","system":"prod"},{"code":"38885","system":"prod"},{"code":"38913","system":"prod"},{"code":"39427","system":"prod"},{"code":"3985","system":"prod"},{"code":"40816","system":"prod"},{"code":"41070","system":"prod"},{"code":"41620","system":"prod"},{"code":"4231","system":"prod"},{"code":"4876","system":"prod"},{"code":"5587","system":"prod"},{"code":"571","system":"prod"},{"code":"6891","system":"prod"},{"code":"7514","system":"prod"},{"code":"8327","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-750mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-750mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-750mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
