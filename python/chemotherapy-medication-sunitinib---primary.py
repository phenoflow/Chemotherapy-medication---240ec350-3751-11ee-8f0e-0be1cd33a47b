# Lai A., 2023.

import sys, csv, re

codes = [{"code":"12594","system":"prod"},{"code":"12618","system":"prod"},{"code":"15677","system":"prod"},{"code":"15707","system":"prod"},{"code":"20399","system":"prod"},{"code":"21070","system":"prod"},{"code":"21476","system":"prod"},{"code":"22177","system":"prod"},{"code":"22505","system":"prod"},{"code":"23122","system":"prod"},{"code":"24499","system":"prod"},{"code":"24926","system":"prod"},{"code":"25612","system":"prod"},{"code":"26314","system":"prod"},{"code":"26933","system":"prod"},{"code":"2703","system":"prod"},{"code":"28296","system":"prod"},{"code":"28419","system":"prod"},{"code":"31190","system":"prod"},{"code":"38081","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-sunitinib---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-sunitinib---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-sunitinib---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
