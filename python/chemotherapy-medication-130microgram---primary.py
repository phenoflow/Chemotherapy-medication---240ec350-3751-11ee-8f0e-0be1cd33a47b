# Lai A., 2023.

import sys, csv, re

codes = [{"code":"10864","system":"prod"},{"code":"11821","system":"prod"},{"code":"12895","system":"prod"},{"code":"12951","system":"prod"},{"code":"12962","system":"prod"},{"code":"12972","system":"prod"},{"code":"13064","system":"prod"},{"code":"13794","system":"prod"},{"code":"14106","system":"prod"},{"code":"14542","system":"prod"},{"code":"15270","system":"prod"},{"code":"15896","system":"prod"},{"code":"15897","system":"prod"},{"code":"15906","system":"prod"},{"code":"15907","system":"prod"},{"code":"15909","system":"prod"},{"code":"15914","system":"prod"},{"code":"15923","system":"prod"},{"code":"15932","system":"prod"},{"code":"15942","system":"prod"},{"code":"15944","system":"prod"},{"code":"15967","system":"prod"},{"code":"15974","system":"prod"},{"code":"15976","system":"prod"},{"code":"16363","system":"prod"},{"code":"16472","system":"prod"},{"code":"16722","system":"prod"},{"code":"18522","system":"prod"},{"code":"18597","system":"prod"},{"code":"19132","system":"prod"},{"code":"19251","system":"prod"},{"code":"20106","system":"prod"},{"code":"21261","system":"prod"},{"code":"21744","system":"prod"},{"code":"21788","system":"prod"},{"code":"22204","system":"prod"},{"code":"2419","system":"prod"},{"code":"2540","system":"prod"},{"code":"25723","system":"prod"},{"code":"26050","system":"prod"},{"code":"26769","system":"prod"},{"code":"27071","system":"prod"},{"code":"27388","system":"prod"},{"code":"28428","system":"prod"},{"code":"28976","system":"prod"},{"code":"30307","system":"prod"},{"code":"30344","system":"prod"},{"code":"30463","system":"prod"},{"code":"30709","system":"prod"},{"code":"30793","system":"prod"},{"code":"31093","system":"prod"},{"code":"31796","system":"prod"},{"code":"32034","system":"prod"},{"code":"32276","system":"prod"},{"code":"32412","system":"prod"},{"code":"32523","system":"prod"},{"code":"32529","system":"prod"},{"code":"33272","system":"prod"},{"code":"33725","system":"prod"},{"code":"33910","system":"prod"},{"code":"3671","system":"prod"},{"code":"36731","system":"prod"},{"code":"36738","system":"prod"},{"code":"37112","system":"prod"},{"code":"38113","system":"prod"},{"code":"38165","system":"prod"},{"code":"38298","system":"prod"},{"code":"38352","system":"prod"},{"code":"39024","system":"prod"},{"code":"39299","system":"prod"},{"code":"39361","system":"prod"},{"code":"39492","system":"prod"},{"code":"39563","system":"prod"},{"code":"39633","system":"prod"},{"code":"39764","system":"prod"},{"code":"40213","system":"prod"},{"code":"40214","system":"prod"},{"code":"40801","system":"prod"},{"code":"40888","system":"prod"},{"code":"41420","system":"prod"},{"code":"5870","system":"prod"},{"code":"6495","system":"prod"},{"code":"6832","system":"prod"},{"code":"7286","system":"prod"},{"code":"7382","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-130microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-130microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-130microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
