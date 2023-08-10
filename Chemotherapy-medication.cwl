cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  chemotherapy-medication-trimopan---primary:
    run: chemotherapy-medication-trimopan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  chemotherapy-medication-20000---primary:
    run: chemotherapy-medication-20000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-trimopan---primary/output
  chemotherapy-medication-starter---primary:
    run: chemotherapy-medication-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-20000---primary/output
  chemotherapy-medication-epanutin---primary:
    run: chemotherapy-medication-epanutin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-starter---primary/output
  chemotherapy-medication-180mg---primary:
    run: chemotherapy-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-epanutin---primary/output
  chemotherapy-medication-carboplatin---primary:
    run: chemotherapy-medication-carboplatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-180mg---primary/output
  chemotherapy-medication-pyrimethamine---primary:
    run: chemotherapy-medication-pyrimethamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-carboplatin---primary/output
  chemotherapy-medication-750mg---primary:
    run: chemotherapy-medication-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-pyrimethamine---primary/output
  chemotherapy-medication-015ml---primary:
    run: chemotherapy-medication-015ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-750mg---primary/output
  neoral-chemotherapy-medication---primary:
    run: neoral-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-015ml---primary/output
  chemotherapy-medication-undecanoate---primary:
    run: chemotherapy-medication-undecanoate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: neoral-chemotherapy-medication---primary/output
  chemotherapy-medication-methylprednisolone---primary:
    run: chemotherapy-medication-methylprednisolone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-undecanoate---primary/output
  chemotherapy-medication-375mg---primary:
    run: chemotherapy-medication-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-methylprednisolone---primary/output
  chemotherapy-medication-224mg---primary:
    run: chemotherapy-medication-224mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-375mg---primary/output
  chemotherapy-medication-dolmatil---primary:
    run: chemotherapy-medication-dolmatil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-224mg---primary/output
  chemotherapy-medication-amdipharm---primary:
    run: chemotherapy-medication-amdipharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dolmatil---primary/output
  chemotherapy-medication-solumedrone---primary:
    run: chemotherapy-medication-solumedrone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-amdipharm---primary/output
  chemotherapy-medication-phenytoin---primary:
    run: chemotherapy-medication-phenytoin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-solumedrone---primary/output
  chemotherapy-medication-endoxana---primary:
    run: chemotherapy-medication-endoxana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-phenytoin---primary/output
  chemotherapy-medication-bactrim---primary:
    run: chemotherapy-medication-bactrim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-endoxana---primary/output
  chemotherapy-medication-cortistab---primary:
    run: chemotherapy-medication-cortistab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-bactrim---primary/output
  chemotherapy-medication-injection---primary:
    run: chemotherapy-medication-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cortistab---primary/output
  chemotherapy-medication-malate---primary:
    run: chemotherapy-medication-malate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-injection---primary/output
  chemotherapy-medication-130microgram---primary:
    run: chemotherapy-medication-130microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-malate---primary/output
  chemotherapy-medication-palmitate---primary:
    run: chemotherapy-medication-palmitate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-130microgram---primary/output
  chemotherapy-medication-120mg---primary:
    run: chemotherapy-medication-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-palmitate---primary/output
  valproic-chemotherapy-medication---primary:
    run: valproic-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-120mg---primary/output
  chemotherapy-medication-hexacetonide---primary:
    run: chemotherapy-medication-hexacetonide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: valproic-chemotherapy-medication---primary/output
  chemotherapy-medication-tablet---primary:
    run: chemotherapy-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hexacetonide---primary/output
  chemotherapy-medication-100000---primary:
    run: chemotherapy-medication-100000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-tablet---primary/output
  chemotherapy-medication-mitomycin---primary:
    run: chemotherapy-medication-mitomycin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-100000---primary/output
  chemotherapy-medication-peginterferon---primary:
    run: chemotherapy-medication-peginterferon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mitomycin---primary/output
  chemotherapy-medication-140mg---primary:
    run: chemotherapy-medication-140mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-peginterferon---primary/output
  chemotherapy-medication-trifluoperazine---primary:
    run: chemotherapy-medication-trifluoperazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-140mg---primary/output
  chemotherapy-medication-melleril---primary:
    run: chemotherapy-medication-melleril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-trifluoperazine---primary/output
  risperdal-chemotherapy-medication---primary:
    run: risperdal-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-melleril---primary/output
  dispersible-chemotherapy-medication---primary:
    run: dispersible-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: risperdal-chemotherapy-medication---primary/output
  chemotherapy-medication-50000---primary:
    run: chemotherapy-medication-50000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: dispersible-chemotherapy-medication---primary/output
  chemotherapy-medication-thioridazine---primary:
    run: chemotherapy-medication-thioridazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-50000---primary/output
  chemotherapy-medication-distamine---primary:
    run: chemotherapy-medication-distamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-thioridazine---primary/output
  chemotherapy-medication-cambridge---primary:
    run: chemotherapy-medication-cambridge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-distamine---primary/output
  chemotherapy-medication-clopixol---primary:
    run: chemotherapy-medication-clopixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cambridge---primary/output
  chemotherapy-medication-triptafen---primary:
    run: chemotherapy-medication-triptafen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-clopixol---primary/output
  chemotherapy-medication-1000mg---primary:
    run: chemotherapy-medication-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-triptafen---primary/output
  chemotherapy-medication-sterile---primary:
    run: chemotherapy-medication-sterile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-1000mg---primary/output
  chemotherapy-medication-copharma---primary:
    run: chemotherapy-medication-copharma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sterile---primary/output
  intravenous-chemotherapy-medication---primary:
    run: intravenous-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-copharma---primary/output
  chemotherapy-medication-piportil---primary:
    run: chemotherapy-medication-piportil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: intravenous-chemotherapy-medication---primary/output
  chemotherapy-medication-glaxo---primary:
    run: chemotherapy-medication-glaxo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-piportil---primary/output
  chemotherapy-medication-precortisyl---primary:
    run: chemotherapy-medication-precortisyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-glaxo---primary/output
  chemotherapy-medication-succinate---primary:
    run: chemotherapy-medication-succinate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-precortisyl---primary/output
  chemotherapy-medication-remoxipride---primary:
    run: chemotherapy-medication-remoxipride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-succinate---primary/output
  chemotherapy-medication-olanzapine---primary:
    run: chemotherapy-medication-olanzapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-remoxipride---primary/output
  chemotherapy-medication-virormone---primary:
    run: chemotherapy-medication-virormone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-olanzapine---primary/output
  chemotherapy-medication-enanthate---primary:
    run: chemotherapy-medication-enanthate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-virormone---primary/output
  chemotherapy-medication-sunitinib---primary:
    run: chemotherapy-medication-sunitinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-enanthate---primary/output
  chemotherapy-medication-schering---primary:
    run: chemotherapy-medication-schering---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sunitinib---primary/output
  chemotherapy-medication-loxapine---primary:
    run: chemotherapy-medication-loxapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-schering---primary/output
  chemotherapy-medication-alfan1---primary:
    run: chemotherapy-medication-alfan1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-loxapine---primary/output
  chemotherapy-medication-dihydrochloride---primary:
    run: chemotherapy-medication-dihydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-alfan1---primary/output
  chemotherapy-medication-betamethasone---primary:
    run: chemotherapy-medication-betamethasone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dihydrochloride---primary/output
  chemotherapy-medication-dexamethasone---primary:
    run: chemotherapy-medication-dexamethasone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-betamethasone---primary/output
  chemotherapy-medication-40000---primary:
    run: chemotherapy-medication-40000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dexamethasone---primary/output
  chemotherapy-medication-sugarfree---primary:
    run: chemotherapy-medication-sugarfree---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-40000---primary/output
  chemotherapy-medication-30000---primary:
    run: chemotherapy-medication-30000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sugarfree---primary/output
  chemotherapy-medication-nivaquine---primary:
    run: chemotherapy-medication-nivaquine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-30000---primary/output
  chemotherapy-medication-hydrocortone---primary:
    run: chemotherapy-medication-hydrocortone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-nivaquine---primary/output
  chemotherapy-medication-stelazine---primary:
    run: chemotherapy-medication-stelazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hydrocortone---primary/output
  chemotherapy-medication-risperidone---primary:
    run: chemotherapy-medication-risperidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-stelazine---primary/output
  chemotherapy-medication-125mg---primary:
    run: chemotherapy-medication-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-risperidone---primary/output
  chemotherapy-medication-azathioprine---primary:
    run: chemotherapy-medication-azathioprine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-125mg---primary/output
  chemotherapy-medication-solvay---primary:
    run: chemotherapy-medication-solvay---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-azathioprine---primary/output
  chemotherapy-medication-droleptan---primary:
    run: chemotherapy-medication-droleptan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-solvay---primary/output
  chemotherapy-medication-maxtrex---primary:
    run: chemotherapy-medication-maxtrex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-droleptan---primary/output
  chemotherapy-medication-serenace---primary:
    run: chemotherapy-medication-serenace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-maxtrex---primary/output
  chemotherapy-medication-astella---primary:
    run: chemotherapy-medication-astella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-serenace---primary/output
  chemotherapy-medication-septrin---primary:
    run: chemotherapy-medication-septrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-astella---primary/output
  chemotherapy-medication-sandimmun---primary:
    run: chemotherapy-medication-sandimmun---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-septrin---primary/output
  chemotherapy-medication-zidovudine---primary:
    run: chemotherapy-medication-zidovudine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sandimmun---primary/output
  chemotherapy-medication-roferon---primary:
    run: chemotherapy-medication-roferon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-zidovudine---primary/output
  chemotherapy-medication-zyprexa---primary:
    run: chemotherapy-medication-zyprexa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-roferon---primary/output
  chemotherapy-medication-velotab---primary:
    run: chemotherapy-medication-velotab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-zyprexa---primary/output
  chemotherapy-medication-adcortyl---primary:
    run: chemotherapy-medication-adcortyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-velotab---primary/output
  chemotherapy-medication-methyltestosterone---primary:
    run: chemotherapy-medication-methyltestosterone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-adcortyl---primary/output
  chemotherapy-medication-clozaril---primary:
    run: chemotherapy-medication-clozaril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-methyltestosterone---primary/output
  chemotherapy-medication-depixol---primary:
    run: chemotherapy-medication-depixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-clozaril---primary/output
  chemotherapy-medication-60000---primary:
    run: chemotherapy-medication-60000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-depixol---primary/output
  chemotherapy-medication-leukeran---primary:
    run: chemotherapy-medication-leukeran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-60000---primary/output
  chemotherapy-medication-mesilate---primary:
    run: chemotherapy-medication-mesilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-leukeran---primary/output
  chemotherapy-medication-paclitaxel---primary:
    run: chemotherapy-medication-paclitaxel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mesilate---primary/output
  chemotherapy-medication-viraferonpeg---primary:
    run: chemotherapy-medication-viraferonpeg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-paclitaxel---primary/output
  chemotherapy-medication-800mg---primary:
    run: chemotherapy-medication-800mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-viraferonpeg---primary/output
  chemotherapy-medication-consta---primary:
    run: chemotherapy-medication-consta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-800mg---primary/output
  chemotherapy-medication-seroquel---primary:
    run: chemotherapy-medication-seroquel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-consta---primary/output
  chemotherapy-medication-abilify---primary:
    run: chemotherapy-medication-abilify---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-seroquel---primary/output
  ipral-chemotherapy-medication---primary:
    run: ipral-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-abilify---primary/output
  chemotherapy-medication-droperidol---primary:
    run: chemotherapy-medication-droperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: ipral-chemotherapy-medication---primary/output
  chemotherapy-medication-levomepromazine---primary:
    run: chemotherapy-medication-levomepromazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-droperidol---primary/output
  chemotherapy-medication-maleate---primary:
    run: chemotherapy-medication-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-levomepromazine---primary/output
  chemotherapy-medication-pericyazine---primary:
    run: chemotherapy-medication-pericyazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-maleate---primary/output
  chemotherapy-medication-gelatin---primary:
    run: chemotherapy-medication-gelatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-pericyazine---primary/output
  chemotherapy-medication-pharm---primary:
    run: chemotherapy-medication-pharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-gelatin---primary/output
  chemotherapy-medication-ribavirin---primary:
    run: chemotherapy-medication-ribavirin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-pharm---primary/output
  chemotherapy-medication-etanercept---primary:
    run: chemotherapy-medication-etanercept---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-ribavirin---primary/output
  chemotherapy-medication-quicklet---primary:
    run: chemotherapy-medication-quicklet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-etanercept---primary/output
  chemotherapy-medication-ciclosporin---primary:
    run: chemotherapy-medication-ciclosporin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-quicklet---primary/output
  chemotherapy-medication-cyclophosphamide---primary:
    run: chemotherapy-medication-cyclophosphamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-ciclosporin---primary/output
  chemotherapy-medication-taxol---primary:
    run: chemotherapy-medication-taxol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cyclophosphamide---primary/output
  chemotherapy-medication-roxiam---primary:
    run: chemotherapy-medication-roxiam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-taxol---primary/output
  chemotherapy-medication-amitriptyline---primary:
    run: chemotherapy-medication-amitriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-roxiam---primary/output
  chemotherapy-medication-arava---primary:
    run: chemotherapy-medication-arava---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-amitriptyline---primary/output
  chemotherapy-medication-methotrexate---primary:
    run: chemotherapy-medication-methotrexate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-arava---primary/output
  chemotherapy-medication-aripiprazole---primary:
    run: chemotherapy-medication-aripiprazole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-methotrexate---primary/output
  chemotherapy-medication-400mg---primary:
    run: chemotherapy-medication-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-aripiprazole---primary/output
  chemotherapy-medication-vancocin---primary:
    run: chemotherapy-medication-vancocin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-400mg---primary/output
  chemotherapy-medication-44microgram---primary:
    run: chemotherapy-medication-44microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-vancocin---primary/output
  chemotherapy-medication-cellcept---primary:
    run: chemotherapy-medication-cellcept---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-44microgram---primary/output
  chemotherapy-medication-melphalan---primary:
    run: chemotherapy-medication-melphalan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cellcept---primary/output
  buccal-chemotherapy-medication---primary:
    run: buccal-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-melphalan---primary/output
  chemotherapy-medication-sertindole---primary:
    run: chemotherapy-medication-sertindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: buccal-chemotherapy-medication---primary/output
  chemotherapy-medication-vancomycin---primary:
    run: chemotherapy-medication-vancomycin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sertindole---primary/output
  chemotherapy-medication-acetate---primary:
    run: chemotherapy-medication-acetate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-vancomycin---primary/output
  chemotherapy-medication-carbimazole---primary:
    run: chemotherapy-medication-carbimazole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-acetate---primary/output
  chemotherapy-medication-orlept---primary:
    run: chemotherapy-medication-orlept---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-carbimazole---primary/output
  chemotherapy-medication-chloractil---primary:
    run: chemotherapy-medication-chloractil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-orlept---primary/output
  chemotherapy-medication-spansule---primary:
    run: chemotherapy-medication-spansule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-chloractil---primary/output
  chemotherapy-medication-deflazacort---primary:
    run: chemotherapy-medication-deflazacort---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-spansule---primary/output
  chemotherapy-medication-zotepine---primary:
    run: chemotherapy-medication-zotepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-deflazacort---primary/output
  chemotherapy-medication-vertigon---primary:
    run: chemotherapy-medication-vertigon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-zotepine---primary/output
  chemotherapy-medication-xeloda---primary:
    run: chemotherapy-medication-xeloda---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-vertigon---primary/output
  chemotherapy-medication-fluorouracil---primary:
    run: chemotherapy-medication-fluorouracil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-xeloda---primary/output
  chemotherapy-medication-dacarbazine---primary:
    run: chemotherapy-medication-dacarbazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-fluorouracil---primary/output
  chemotherapy-medication-fludarabine---primary:
    run: chemotherapy-medication-fludarabine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dacarbazine---primary/output
  chemotherapy-medication-lamivudine---primary:
    run: chemotherapy-medication-lamivudine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-fludarabine---primary/output
  chemotherapy-medication-deltastab---primary:
    run: chemotherapy-medication-deltastab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-lamivudine---primary/output
  chemotherapy-medication-etoposide---primary:
    run: chemotherapy-medication-etoposide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-deltastab---primary/output
  chemotherapy-medication-capsule---primary:
    run: chemotherapy-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-etoposide---primary/output
  chemotherapy-medication-convulex---primary:
    run: chemotherapy-medication-convulex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-capsule---primary/output
  chemotherapy-medication-vincristine---primary:
    run: chemotherapy-medication-vincristine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-convulex---primary/output
  chemotherapy-medication-oxypertine---primary:
    run: chemotherapy-medication-oxypertine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-vincristine---primary/output
  chemotherapy-medication-rhone---primary:
    run: chemotherapy-medication-rhone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-oxypertine---primary/output
  chemotherapy-medication-prednisone---primary:
    run: chemotherapy-medication-prednisone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-rhone---primary/output
  chemotherapy-medication-betnesol---primary:
    run: chemotherapy-medication-betnesol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-prednisone---primary/output
  chemotherapy-medication-suppository---primary:
    run: chemotherapy-medication-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-betnesol---primary/output
  chemotherapy-medication-triamcinolone---primary:
    run: chemotherapy-medication-triamcinolone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-suppository---primary/output
  chemotherapy-medication-mercaptopurine---primary:
    run: chemotherapy-medication-mercaptopurine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-triamcinolone---primary/output
  chemotherapy-medication-epilim---primary:
    run: chemotherapy-medication-epilim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mercaptopurine---primary/output
  chemotherapy-medication-sirolimu---primary:
    run: chemotherapy-medication-sirolimu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-epilim---primary/output
  chemotherapy-medication-viatri---primary:
    run: chemotherapy-medication-viatri---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sirolimu---primary/output
  chemotherapy-medication-oradexonorganon---primary:
    run: chemotherapy-medication-oradexonorganon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-viatri---primary/output
  chemotherapy-medication-shire---primary:
    run: chemotherapy-medication-shire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-oradexonorganon---primary/output
  chemotherapy-medication-mesna---primary:
    run: chemotherapy-medication-mesna---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-shire---primary/output
  chemotherapy-medication-sulfasalazine---primary:
    run: chemotherapy-medication-sulfasalazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mesna---primary/output
  chemotherapy-medication-goldshield---primary:
    run: chemotherapy-medication-goldshield---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sulfasalazine---primary/output
  chemotherapy-medication-triperidol---primary:
    run: chemotherapy-medication-triperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-goldshield---primary/output
  chemotherapy-medication-health---primary:
    run: chemotherapy-medication-health---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-triperidol---primary/output
  chemotherapy-medication-eprex---primary:
    run: chemotherapy-medication-eprex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-health---primary/output
  linezolid-chemotherapy-medication---primary:
    run: linezolid-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-eprex---primary/output
  chemotherapy-medication-denfleet---primary:
    run: chemotherapy-medication-denfleet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: linezolid-chemotherapy-medication---primary/output
  chemotherapy-medication-temozolomide---primary:
    run: chemotherapy-medication-temozolomide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-denfleet---primary/output
  chemotherapy-medication-imatinib---primary:
    run: chemotherapy-medication-imatinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-temozolomide---primary/output
  chemotherapy-medication-glivec---primary:
    run: chemotherapy-medication-glivec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-imatinib---primary/output
  chemotherapy-medication-sulpiride---primary:
    run: chemotherapy-medication-sulpiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-glivec---primary/output
  chemotherapy-medication-retrovir---primary:
    run: chemotherapy-medication-retrovir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sulpiride---primary/output
  chemotherapy-medication-depakote---primary:
    run: chemotherapy-medication-depakote---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-retrovir---primary/output
  chemotherapy-medication-folinate---primary:
    run: chemotherapy-medication-folinate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-depakote---primary/output
  chemotherapy-medication-200microgram---primary:
    run: chemotherapy-medication-200microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-folinate---primary/output
  chemotherapy-medication-pentran---primary:
    run: chemotherapy-medication-pentran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-200microgram---primary/output
  chemotherapy-medication-promazine---primary:
    run: chemotherapy-medication-promazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-pentran---primary/output
  chemotherapy-medication-trifluperidol---primary:
    run: chemotherapy-medication-trifluperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-promazine---primary/output
  chemotherapy-medication-cortisone---primary:
    run: chemotherapy-medication-cortisone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-trifluperidol---primary/output
  chemotherapy-medication-rosemont---primary:
    run: chemotherapy-medication-rosemont---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cortisone---primary/output
  chemotherapy-medication-serdolect---primary:
    run: chemotherapy-medication-serdolect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-rosemont---primary/output
  chemotherapy-medication-alkeran---primary:
    run: chemotherapy-medication-alkeran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-serdolect---primary/output
  enteric-chemotherapy-medication---primary:
    run: enteric-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-alkeran---primary/output
  chemotherapy-medication-hoechstmar---primary:
    run: chemotherapy-medication-hoechstmar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: enteric-chemotherapy-medication---primary/output
  chemotherapy-medication-haldol---primary:
    run: chemotherapy-medication-haldol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hoechstmar---primary/output
  chemotherapy-medication-taxotere---primary:
    run: chemotherapy-medication-taxotere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-haldol---primary/output
  chemotherapy-medication-treosulfan---primary:
    run: chemotherapy-medication-treosulfan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-taxotere---primary/output
  chemotherapy-medication-squibb---primary:
    run: chemotherapy-medication-squibb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-treosulfan---primary/output
  chemotherapy-medication-morson---primary:
    run: chemotherapy-medication-morson---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-squibb---primary/output
  chemotherapy-medication-trimogal---primary:
    run: chemotherapy-medication-trimogal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-morson---primary/output
  chemotherapy-medication-forte---primary:
    run: chemotherapy-medication-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-trimogal---primary/output
  chemotherapy-medication-pimozide---primary:
    run: chemotherapy-medication-pimozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-forte---primary/output
  chemotherapy-medication-tranylcypromine---primary:
    run: chemotherapy-medication-tranylcypromine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-pimozide---primary/output
  chemotherapy-medication-tarceva---primary:
    run: chemotherapy-medication-tarceva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-tranylcypromine---primary/output
  chemotherapy-medication-syraprim---primary:
    run: chemotherapy-medication-syraprim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-tarceva---primary/output
  chemotherapy-medication-lundbeck---primary:
    run: chemotherapy-medication-lundbeck---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-syraprim---primary/output
  chemotherapy-medication-15000---primary:
    run: chemotherapy-medication-15000---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-lundbeck---primary/output
  chemotherapy-medication-concentrate---primary:
    run: chemotherapy-medication-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-15000---primary/output
  chemotherapy-medication-360mg---primary:
    run: chemotherapy-medication-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-concentrate---primary/output
  chemotherapy-medication-chlormethine---primary:
    run: chemotherapy-medication-chlormethine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-360mg---primary/output
  chemotherapy-medication-efcortesol---primary:
    run: chemotherapy-medication-efcortesol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-chlormethine---primary/output
  chemotherapy-medication-shock---primary:
    run: chemotherapy-medication-shock---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-efcortesol---primary/output
  chemotherapy-medication-myleran---primary:
    run: chemotherapy-medication-myleran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-shock---primary/output
  solian-chemotherapy-medication---primary:
    run: solian-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-myleran---primary/output
  chemotherapy-medication-adriamycin---primary:
    run: chemotherapy-medication-adriamycin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: solian-chemotherapy-medication---primary/output
  chemotherapy-medication-sustanon---primary:
    run: chemotherapy-medication-sustanon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-adriamycin---primary/output
  chemotherapy-medication-doxorubicin---primary:
    run: chemotherapy-medication-doxorubicin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sustanon---primary/output
  chemotherapy-medication-calcium---primary:
    run: chemotherapy-medication-calcium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-doxorubicin---primary/output
  chemotherapy-medication-janssen---primary:
    run: chemotherapy-medication-janssen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-calcium---primary/output
  chemotherapy-medication-integrin---primary:
    run: chemotherapy-medication-integrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-janssen---primary/output
  chemotherapy-medication-lilly---primary:
    run: chemotherapy-medication-lilly---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-integrin---primary/output
  chemotherapy-medication-hillcross---primary:
    run: chemotherapy-medication-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-lilly---primary/output
  myfortic-chemotherapy-medication---primary:
    run: myfortic-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hillcross---primary/output
  chemotherapy-medication-150mg---primary:
    run: chemotherapy-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: myfortic-chemotherapy-medication---primary/output
  chemotherapy-medication-oxaliplatin---primary:
    run: chemotherapy-medication-oxaliplatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-150mg---primary/output
  chemotherapy-medication-flynn---primary:
    run: chemotherapy-medication-flynn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-oxaliplatin---primary/output
  chemotherapy-medication-alitretinoin---primary:
    run: chemotherapy-medication-alitretinoin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-flynn---primary/output
  chemotherapy-medication-laratrim---primary:
    run: chemotherapy-medication-laratrim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-alitretinoin---primary/output
  chemotherapy-medication-hawgreen---primary:
    run: chemotherapy-medication-hawgreen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-laratrim---primary/output
  chemotherapy-medication-roche---primary:
    run: chemotherapy-medication-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hawgreen---primary/output
  chemotherapy-medication-instillation---primary:
    run: chemotherapy-medication-instillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-roche---primary/output
  chemotherapy-medication-refolinon---primary:
    run: chemotherapy-medication-refolinon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-instillation---primary/output
  chemotherapy-medication-myocrisin---primary:
    run: chemotherapy-medication-myocrisin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-refolinon---primary/output
  chemotherapy-medication-cisplatin---primary:
    run: chemotherapy-medication-cisplatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-myocrisin---primary/output
  chemotherapy-medication-tacrolimu---primary:
    run: chemotherapy-medication-tacrolimu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cisplatin---primary/output
  chemotherapy-medication-rituximab---primary:
    run: chemotherapy-medication-rituximab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-tacrolimu---primary/output
  dozic-chemotherapy-medication---primary:
    run: dozic-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-rituximab---primary/output
  chemotherapy-medication-500mg---primary:
    run: chemotherapy-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: dozic-chemotherapy-medication---primary/output
  temodal-chemotherapy-medication---primary:
    run: temodal-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-500mg---primary/output
  vepesid-chemotherapy-medication---primary:
    run: vepesid-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: temodal-chemotherapy-medication---primary/output
  chemotherapy-medication-pfizer---primary:
    run: chemotherapy-medication-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: vepesid-chemotherapy-medication---primary/output
  chemotherapy-medication-kyowa---primary:
    run: chemotherapy-medication-kyowa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-pfizer---primary/output
  chemotherapy-medication-orion---primary:
    run: chemotherapy-medication-orion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-kyowa---primary/output
  chemotherapy-medication-imuran---primary:
    run: chemotherapy-medication-imuran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-orion---primary/output
  chemotherapy-medication-uromitexan---primary:
    run: chemotherapy-medication-uromitexan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-imuran---primary/output
  chemotherapy-medication-300mg---primary:
    run: chemotherapy-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-uromitexan---primary/output
  chemotherapy-medication-penicillamine---primary:
    run: chemotherapy-medication-penicillamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-300mg---primary/output
  chemotherapy-medication-controlled---primary:
    run: chemotherapy-medication-controlled---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-penicillamine---primary/output
  chemotherapy-medication-vinblastine---primary:
    run: chemotherapy-medication-vinblastine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-controlled---primary/output
  chemotherapy-medication-trimethoprim---primary:
    run: chemotherapy-medication-trimethoprim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-vinblastine---primary/output
  chemotherapy-medication-idarubicin---primary:
    run: chemotherapy-medication-idarubicin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-trimethoprim---primary/output
  chemotherapy-medication-leucovorin---primary:
    run: chemotherapy-medication-leucovorin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-idarubicin---primary/output
  chemotherapy-medication-acuphase---primary:
    run: chemotherapy-medication-acuphase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-leucovorin---primary/output
  chemotherapy-medication-genus---primary:
    run: chemotherapy-medication-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-acuphase---primary/output
  chemotherapy-medication-mayne---primary:
    run: chemotherapy-medication-mayne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-genus---primary/output
  chemotherapy-medication-antigen---primary:
    run: chemotherapy-medication-antigen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mayne---primary/output
  chemotherapy-medication-copegu---primary:
    run: chemotherapy-medication-copegu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-antigen---primary/output
  chemotherapy-medication-dumex---primary:
    run: chemotherapy-medication-dumex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-copegu---primary/output
  chemotherapy-medication-067ml---primary:
    run: chemotherapy-medication-067ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dumex---primary/output
  chemotherapy-medication-castlemead---primary:
    run: chemotherapy-medication-castlemead---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-067ml---primary/output
  chemotherapy-medication-amgen---primary:
    run: chemotherapy-medication-amgen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-castlemead---primary/output
  chemotherapy-medication-vinorelbine---primary:
    run: chemotherapy-medication-vinorelbine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-amgen---primary/output
  chemotherapy-medication-haloperidol---primary:
    run: chemotherapy-medication-haloperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-vinorelbine---primary/output
  chemotherapy-medication-chanelle---primary:
    run: chemotherapy-medication-chanelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-haloperidol---primary/output
  chemotherapy-medication-mitoxantrone---primary:
    run: chemotherapy-medication-mitoxantrone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-chanelle---primary/output
  chemotherapy-medication-cetuximab---primary:
    run: chemotherapy-medication-cetuximab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mitoxantrone---primary/output
  chemotherapy-medication-astrazenec---primary:
    run: chemotherapy-medication-astrazenec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cetuximab---primary/output
  chemotherapy-medication-naltrexone---primary:
    run: chemotherapy-medication-naltrexone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-astrazenec---primary/output
  chemotherapy-medication-powder---primary:
    run: chemotherapy-medication-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-naltrexone---primary/output
  chemotherapy-medication-gemcitabine---primary:
    run: chemotherapy-medication-gemcitabine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-powder---primary/output
  chemotherapy-medication-propylthiouracil---primary:
    run: chemotherapy-medication-propylthiouracil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-gemcitabine---primary/output
  chemotherapy-medication-modecate---primary:
    run: chemotherapy-medication-modecate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-propylthiouracil---primary/output
  chemotherapy-medication-erlotinib---primary:
    run: chemotherapy-medication-erlotinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-modecate---primary/output
  chemotherapy-medication-cephalon---primary:
    run: chemotherapy-medication-cephalon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-erlotinib---primary/output
  chemotherapy-medication-dapsone---primary:
    run: chemotherapy-medication-dapsone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-cephalon---primary/output
  chemotherapy-medication-valproate---primary:
    run: chemotherapy-medication-valproate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dapsone---primary/output
  chemotherapy-medication-restandol---primary:
    run: chemotherapy-medication-restandol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-valproate---primary/output
  chemotherapy-medication-actavis---primary:
    run: chemotherapy-medication-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-restandol---primary/output
  chemotherapy-medication-sterwin---primary:
    run: chemotherapy-medication-sterwin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-actavis---primary/output
  chemotherapy-medication-sandoz---primary:
    run: chemotherapy-medication-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sterwin---primary/output
  chemotherapy-medication-winthrop---primary:
    run: chemotherapy-medication-winthrop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sandoz---primary/output
  chemotherapy-medication-200mg---primary:
    run: chemotherapy-medication-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-winthrop---primary/output
  chemotherapy-medication-episenta---primary:
    run: chemotherapy-medication-episenta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-200mg---primary/output
  chemotherapy-medication-granule---primary:
    run: chemotherapy-medication-granule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-episenta---primary/output
  chemotherapy-medication-filgrastim---primary:
    run: chemotherapy-medication-filgrastim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-granule---primary/output
  chemotherapy-medication-dasatinib---primary:
    run: chemotherapy-medication-dasatinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-filgrastim---primary/output
  chemotherapy-medication-paliperidone---primary:
    run: chemotherapy-medication-paliperidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-dasatinib---primary/output
  chemotherapy-medication-exjade---primary:
    run: chemotherapy-medication-exjade---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-paliperidone---primary/output
  chemotherapy-medication-prograf---primary:
    run: chemotherapy-medication-prograf---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-exjade---primary/output
  chemotherapy-medication-docetaxel---primary:
    run: chemotherapy-medication-docetaxel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-prograf---primary/output
  chemotherapy-medication-deferasirox---primary:
    run: chemotherapy-medication-deferasirox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-docetaxel---primary/output
  chemotherapy-medication-prolonged---primary:
    run: chemotherapy-medication-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-deferasirox---primary/output
  chemotherapy-medication-phosphate---primary:
    run: chemotherapy-medication-phosphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-prolonged---primary/output
  chemotherapy-medication-advagraf---primary:
    run: chemotherapy-medication-advagraf---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-phosphate---primary/output
  chemotherapy-medication-bristol---primary:
    run: chemotherapy-medication-bristol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-advagraf---primary/output
  chemotherapy-medication-basiliximab---primary:
    run: chemotherapy-medication-basiliximab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-bristol---primary/output
  chemotherapy-medication-chrono---primary:
    run: chemotherapy-medication-chrono---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule280
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-basiliximab---primary/output
  chemotherapy-medication-busulfan---primary:
    run: chemotherapy-medication-busulfan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule281
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-chrono---primary/output
  chemotherapy-medication-quetiapine---primary:
    run: chemotherapy-medication-quetiapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule282
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-busulfan---primary/output
  chemotherapy-medication-600mg---primary:
    run: chemotherapy-medication-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule283
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-quetiapine---primary/output
  chemotherapy-medication-hydroxycarbamide---primary:
    run: chemotherapy-medication-hydroxycarbamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule284
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-600mg---primary/output
  chemotherapy-medication-isotretinoin---primary:
    run: chemotherapy-medication-isotretinoin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule285
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hydroxycarbamide---primary/output
  chemotherapy-medication-roaccutane---primary:
    run: chemotherapy-medication-roaccutane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule286
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-isotretinoin---primary/output
  chemotherapy-medication-clozapine---primary:
    run: chemotherapy-medication-clozapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule287
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-roaccutane---primary/output
  chemotherapy-medication-biorex---primary:
    run: chemotherapy-medication-biorex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule288
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-clozapine---primary/output
  chemotherapy-medication-250mg---primary:
    run: chemotherapy-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule289
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-biorex---primary/output
  chemotherapy-medication-solution---primary:
    run: chemotherapy-medication-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule290
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-250mg---primary/output
  chemotherapy-medication---primary:
    run: chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule291
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-solution---primary/output
  chemotherapy-medication-calcort---primary:
    run: chemotherapy-medication-calcort---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule292
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication---primary/output
  chemotherapy-medication-denzapine---primary:
    run: chemotherapy-medication-denzapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule293
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-calcort---primary/output
  chemotherapy-medication-liquid---primary:
    run: chemotherapy-medication-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule294
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-denzapine---primary/output
  crushable-chemotherapy-medication---primary:
    run: crushable-chemotherapy-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule295
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-liquid---primary/output
  chemotherapy-medication-hydroxychloroquine---primary:
    run: chemotherapy-medication-hydroxychloroquine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule296
      potentialCases:
        id: potentialCases
        source: crushable-chemotherapy-medication---primary/output
  chemotherapy-medication-mofetil---primary:
    run: chemotherapy-medication-mofetil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule297
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hydroxychloroquine---primary/output
  chemotherapy-medication-nozinan---primary:
    run: chemotherapy-medication-nozinan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule298
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mofetil---primary/output
  chemotherapy-medication-sanofi---primary:
    run: chemotherapy-medication-sanofi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule299
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-nozinan---primary/output
  chemotherapy-medication-leflunomide---primary:
    run: chemotherapy-medication-leflunomide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule300
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sanofi---primary/output
  chemotherapy-medication-amisulpride---primary:
    run: chemotherapy-medication-amisulpride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule301
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-leflunomide---primary/output
  chemotherapy-medication-fluphenazine---primary:
    run: chemotherapy-medication-fluphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule302
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-amisulpride---primary/output
  chemotherapy-medication-deltacortril---primary:
    run: chemotherapy-medication-deltacortril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule303
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-fluphenazine---primary/output
  chemotherapy-medication-moditen---primary:
    run: chemotherapy-medication-moditen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule304
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-deltacortril---primary/output
  chemotherapy-medication-chlorambucil---primary:
    run: chemotherapy-medication-chlorambucil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule305
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-moditen---primary/output
  chemotherapy-medication-flupentixol---primary:
    run: chemotherapy-medication-flupentixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule306
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-chlorambucil---primary/output
  chemotherapy-medication-perphenazine---primary:
    run: chemotherapy-medication-perphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule307
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-flupentixol---primary/output
  chemotherapy-medication-capecitabine---primary:
    run: chemotherapy-medication-capecitabine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule308
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-perphenazine---primary/output
  chemotherapy-medication-480mg---primary:
    run: chemotherapy-medication-480mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule309
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-capecitabine---primary/output
  chemotherapy-medication-lederspan---primary:
    run: chemotherapy-medication-lederspan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule310
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-480mg---primary/output
  chemotherapy-medication-fentazin---primary:
    run: chemotherapy-medication-fentazin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule311
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-lederspan---primary/output
  chemotherapy-medication-decadron---primary:
    run: chemotherapy-medication-decadron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule312
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-fentazin---primary/output
  chemotherapy-medication-decanoate---primary:
    run: chemotherapy-medication-decanoate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule313
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-decadron---primary/output
  chemotherapy-medication-hydrochloride---primary:
    run: chemotherapy-medication-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule314
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-decanoate---primary/output
  chemotherapy-medication-sulphate---primary:
    run: chemotherapy-medication-sulphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule315
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hydrochloride---primary/output
  chemotherapy-medication-hydrocortisone---primary:
    run: chemotherapy-medication-hydrocortisone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule316
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sulphate---primary/output
  chemotherapy-medication-mitobronitol---primary:
    run: chemotherapy-medication-mitobronitol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule317
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-hydrocortisone---primary/output
  chemotherapy-medication-sodium---primary:
    run: chemotherapy-medication-sodium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule318
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mitobronitol---primary/output
  chemotherapy-medication-adalimumab---primary:
    run: chemotherapy-medication-adalimumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule319
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-sodium---primary/output
  chemotherapy-medication-prednisolone---primary:
    run: chemotherapy-medication-prednisolone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule320
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-adalimumab---primary/output
  chemotherapy-medication-daunorubicin---primary:
    run: chemotherapy-medication-daunorubicin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule321
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-prednisolone---primary/output
  chemotherapy-medication-bexarotene---primary:
    run: chemotherapy-medication-bexarotene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule322
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-daunorubicin---primary/output
  chemotherapy-medication-bortezomib---primary:
    run: chemotherapy-medication-bortezomib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule323
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-bexarotene---primary/output
  chemotherapy-medication-crisantaspase---primary:
    run: chemotherapy-medication-crisantaspase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule324
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-bortezomib---primary/output
  chemotherapy-medication-trastuzumab---primary:
    run: chemotherapy-medication-trastuzumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule325
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-crisantaspase---primary/output
  chemotherapy-medication-tretinoin---primary:
    run: chemotherapy-medication-tretinoin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule326
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-trastuzumab---primary/output
  chemotherapy-medication-bevacizumab---primary:
    run: chemotherapy-medication-bevacizumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule327
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-tretinoin---primary/output
  chemotherapy-medication-razoxane---primary:
    run: chemotherapy-medication-razoxane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule328
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-bevacizumab---primary/output
  chemotherapy-medication-mitotane---primary:
    run: chemotherapy-medication-mitotane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule329
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-razoxane---primary/output
  chemotherapy-medication-temsirolimus---primary:
    run: chemotherapy-medication-temsirolimus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule330
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-mitotane---primary/output
  chemotherapy-medication-gefitinib---primary:
    run: chemotherapy-medication-gefitinib---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule331
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-temsirolimus---primary/output
  chemotherapy-medication-alemtuzumab---primary:
    run: chemotherapy-medication-alemtuzumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule332
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-gefitinib---primary/output
  chemotherapy-medication-thalidomide---primary:
    run: chemotherapy-medication-thalidomide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule333
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-alemtuzumab---primary/output
  chemotherapy-medication-interferon---primary:
    run: chemotherapy-medication-interferon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule334
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-thalidomide---primary/output
  chemotherapy-medication-natalizumab---primary:
    run: chemotherapy-medication-natalizumab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule335
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-interferon---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule336
      potentialCases:
        id: potentialCases
        source: chemotherapy-medication-natalizumab---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
  inputModule280:
    id: inputModule280
    doc: Python implementation unit
    type: File
  inputModule281:
    id: inputModule281
    doc: Python implementation unit
    type: File
  inputModule282:
    id: inputModule282
    doc: Python implementation unit
    type: File
  inputModule283:
    id: inputModule283
    doc: Python implementation unit
    type: File
  inputModule284:
    id: inputModule284
    doc: Python implementation unit
    type: File
  inputModule285:
    id: inputModule285
    doc: Python implementation unit
    type: File
  inputModule286:
    id: inputModule286
    doc: Python implementation unit
    type: File
  inputModule287:
    id: inputModule287
    doc: Python implementation unit
    type: File
  inputModule288:
    id: inputModule288
    doc: Python implementation unit
    type: File
  inputModule289:
    id: inputModule289
    doc: Python implementation unit
    type: File
  inputModule290:
    id: inputModule290
    doc: Python implementation unit
    type: File
  inputModule291:
    id: inputModule291
    doc: Python implementation unit
    type: File
  inputModule292:
    id: inputModule292
    doc: Python implementation unit
    type: File
  inputModule293:
    id: inputModule293
    doc: Python implementation unit
    type: File
  inputModule294:
    id: inputModule294
    doc: Python implementation unit
    type: File
  inputModule295:
    id: inputModule295
    doc: Python implementation unit
    type: File
  inputModule296:
    id: inputModule296
    doc: Python implementation unit
    type: File
  inputModule297:
    id: inputModule297
    doc: Python implementation unit
    type: File
  inputModule298:
    id: inputModule298
    doc: Python implementation unit
    type: File
  inputModule299:
    id: inputModule299
    doc: Python implementation unit
    type: File
  inputModule300:
    id: inputModule300
    doc: Python implementation unit
    type: File
  inputModule301:
    id: inputModule301
    doc: Python implementation unit
    type: File
  inputModule302:
    id: inputModule302
    doc: Python implementation unit
    type: File
  inputModule303:
    id: inputModule303
    doc: Python implementation unit
    type: File
  inputModule304:
    id: inputModule304
    doc: Python implementation unit
    type: File
  inputModule305:
    id: inputModule305
    doc: Python implementation unit
    type: File
  inputModule306:
    id: inputModule306
    doc: Python implementation unit
    type: File
  inputModule307:
    id: inputModule307
    doc: Python implementation unit
    type: File
  inputModule308:
    id: inputModule308
    doc: Python implementation unit
    type: File
  inputModule309:
    id: inputModule309
    doc: Python implementation unit
    type: File
  inputModule310:
    id: inputModule310
    doc: Python implementation unit
    type: File
  inputModule311:
    id: inputModule311
    doc: Python implementation unit
    type: File
  inputModule312:
    id: inputModule312
    doc: Python implementation unit
    type: File
  inputModule313:
    id: inputModule313
    doc: Python implementation unit
    type: File
  inputModule314:
    id: inputModule314
    doc: Python implementation unit
    type: File
  inputModule315:
    id: inputModule315
    doc: Python implementation unit
    type: File
  inputModule316:
    id: inputModule316
    doc: Python implementation unit
    type: File
  inputModule317:
    id: inputModule317
    doc: Python implementation unit
    type: File
  inputModule318:
    id: inputModule318
    doc: Python implementation unit
    type: File
  inputModule319:
    id: inputModule319
    doc: Python implementation unit
    type: File
  inputModule320:
    id: inputModule320
    doc: Python implementation unit
    type: File
  inputModule321:
    id: inputModule321
    doc: Python implementation unit
    type: File
  inputModule322:
    id: inputModule322
    doc: Python implementation unit
    type: File
  inputModule323:
    id: inputModule323
    doc: Python implementation unit
    type: File
  inputModule324:
    id: inputModule324
    doc: Python implementation unit
    type: File
  inputModule325:
    id: inputModule325
    doc: Python implementation unit
    type: File
  inputModule326:
    id: inputModule326
    doc: Python implementation unit
    type: File
  inputModule327:
    id: inputModule327
    doc: Python implementation unit
    type: File
  inputModule328:
    id: inputModule328
    doc: Python implementation unit
    type: File
  inputModule329:
    id: inputModule329
    doc: Python implementation unit
    type: File
  inputModule330:
    id: inputModule330
    doc: Python implementation unit
    type: File
  inputModule331:
    id: inputModule331
    doc: Python implementation unit
    type: File
  inputModule332:
    id: inputModule332
    doc: Python implementation unit
    type: File
  inputModule333:
    id: inputModule333
    doc: Python implementation unit
    type: File
  inputModule334:
    id: inputModule334
    doc: Python implementation unit
    type: File
  inputModule335:
    id: inputModule335
    doc: Python implementation unit
    type: File
  inputModule336:
    id: inputModule336
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
