# ruby tools/makeIJEMappingFromExcelHTML.rb input/mapping/BFDR_Profile_Intros.xlsx input/images/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx 

require "json"
require "pry"
require "roo"

def get_file_type(file)
  File.extname(file).gsub(".", "")
end

def open_spreadsheet(file)
  extension = get_file_type(file)
  if ["csv", "xls", "xlsx"].include? extension
    Roo::Spreadsheet.open(file, extension: extension)
  else
    raise "Unknown file type: #{file}"
  end
end

# IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx columns
IJE_USECASE_COL = 1
IJE_FIELD_COL = 2
IJE_BEGIN_COL = 3
IJE_LENGTH_COL = 4
IJE_DESC_COL = 5
IJE_NAME_COL = 6
IJE_CS_DESC_COL = 7
IJE_ONLY_COL = 8
IJE_FHIR_IG_COL = 9
IJE_PROFILE_COL = 10
IJE_FHIR_FIELD_COL = 11
IJE_FHIR_TYPE_COL = 12
IJE_FHIR_COMMENTS_COL = 13
IJE_UNIQUENESS_COL = 14
#IJE_MAPPING_PROFILE_COL = 19 #NOT USED

# BFDR_Profile_Intros.xlsx columns
INTRO_ORDER_COL = 0
INTRO_HEADING_COL = 1 
INTRO_PROFILE_NAME_COL = 2
INTRO_PROFILE_ID_COL = 3
INTRO_PROFILE_USAGE_COL = 4
INTRO_FORM_MAPPING_COL = 5
INTRO_IJE_MAPPING_COL = 6
#INTRO_PROFILE_LOCATION_COL = 7 #NOT USED

# ARGV[0] input/mapping/BFDR_Profile_Intros.xlsx
vProfileIntrosSpreadsheet = open_spreadsheet(ARGV[0])
vProfileIntrosSpreadsheet.default_sheet = "BFDR"

# ARGV[1] input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx 
vSpreadsheet = open_spreadsheet(ARGV[1])
vSpreadsheet.default_sheet = "IJE_File_Layouts_Version_2021_F"

def printHeader(hHeading, pOutputFile, pIG, tableStyle)
    pOutputFile.puts hHeading
    pOutputFile.puts ""
    if pIG == "BFDR"
        pOutputFile.puts "<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>"
        pOutputFile.puts "<tbody>"
        pOutputFile.puts "<tr>"
        pOutputFile.puts "<td style='background-color:#98c1d9; text-align: center; width: 4%;'><b>#</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9; width: 16%;'><b>Description</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9; text-align: center; width: 6%;'><b>IJE Name</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9; width: 20%;'><b>Profile</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9;'><b>Field</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9; width: 7%;'><b>Type</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9; width: 14%;'><b>Value Set/Comments</b></td>"
        pOutputFile.puts "<td style='background-color:#98c1d9; width: 3%;'><b>Use</b></td>"
        pOutputFile.puts "</tr>"
    else
        pOutputFile.puts "<table align='left' border='1' cellpadding='1' cellspacing='1' style='width:100%;'>"
        pOutputFile.puts "<tbody>"
        pOutputFile.puts "<tr>"
        pOutputFile.puts "<td style='background-color:#D0F0C0; text-align: center;'><b>#</b></td>"
        pOutputFile.puts "<td style='background-color:#D0F0C0;'><b>Description</b></td>"
        pOutputFile.puts "<td style='background-color:#D0F0C0;'><b>IJE Name</b></td>"
        pOutputFile.puts "<td style='background-color:#D0F0C0;'><b>Profile</b></td>"
        pOutputFile.puts "<td style='background-color:#D0F0C0;'><b>Field</b></td>"
        pOutputFile.puts "<td style='background-color:#D0F0C0;'><b>Type</b></td>"
        pOutputFile.puts "<td style='background-color:#D0F0C0;'><b>Value Set/Comments</b></td>"
        pOutputFile.puts "</tr>"
    end
    return true
end 

def createMappingTable(pRowFilterIG, pRowFilter, pHeading, pOutputFile, pIntroSpreadsheet, pSpreadsheet)
    profiles = []
    profileName = ""
    pIntroSpreadsheet.default_sheet = pRowFilterIG
    pIntroSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
        #next if row[INTRO_PROFILE_LOCATION_COL].value.to_s != pRowFilterIG
        profileName = row[INTRO_PROFILE_NAME_COL].value.to_s if row[INTRO_PROFILE_NAME_COL] 
        profileHeading = row[INTRO_HEADING_COL].value.to_s if row[INTRO_HEADING_COL]
        profiles.append([profileName, profileHeading])
    end
    pOutputFile.puts"<style>
    table.style1 { 
        border-collapse: collapse; 
        width: 100%; 
        table-layout: fixed;
    }  
    table.style1 tbody tr {
    border-bottom: 1px solid #dddddd;
    } 
    table.style1 tbody tr:nth-of-type(even) { 
        background-color: #f3f3f3; 
    } 
    table.style1 tbody tr:last-of-type {
    border-bottom: 2px solid #98c1d9;
    }
    </style>"
    printHeader(pHeading, pOutputFile, pRowFilterIG, "BFDR Inputs")

    codedHeader = false
    notImplementedHeader = false
    profiles.each do |(x, y)| 
        #pOutputFile.puts "<tbody>"
        pSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
            next if row[IJE_USECASE_COL].value.to_s != pRowFilter || row[IJE_PROFILE_COL].value.to_s != x #|| row[IJE_PROFILE_COL].value.to_s == "not implemented"
            if codedHeader == false && y.to_s == "Coding"
                pOutputFile.puts "</tbody>"
                pOutputFile.puts "</table>"
                codedHeader = printHeader("### Coded Content", pOutputFile, pRowFilterIG, "Coding")
            end
            if notImplementedHeader == false && y.to_s == "Not Implemented"
                pOutputFile.puts "</tbody>"
                pOutputFile.puts "</table>"
                notImplementedHeader = printHeader("### Not Implemented Content", pOutputFile, pRowFilterIG, "Not Implemented")
            end
            
            field = description = ijename = profile = vProvOutputFilename = fhirfield = fhirtype = fhirencoding = fhirig = fhirunique = ""
            field = row[IJE_FIELD_COL].value.to_s if row[IJE_FIELD_COL]
            ijename = row[IJE_NAME_COL].value.to_s if row[IJE_NAME_COL]
            fhirig = row[IJE_FHIR_IG_COL].value.to_s if row[IJE_FHIR_IG_COL]
            profile = "[" + row[IJE_PROFILE_COL].value.to_s + "]" if row[IJE_PROFILE_COL] 
            fhirfield = row[IJE_FHIR_FIELD_COL].value.to_s if row[IJE_FHIR_FIELD_COL]
            fhirtype = row[IJE_FHIR_TYPE_COL].value.to_s if row[IJE_FHIR_TYPE_COL]
            fhirencoding = row[IJE_FHIR_COMMENTS_COL].value.to_s if row[IJE_FHIR_COMMENTS_COL]   
            fhirunique = row[IJE_UNIQUENESS_COL].value.to_s if row[IJE_UNIQUENESS_COL] 
            description = row[IJE_DESC_COL].value.to_s if row[IJE_DESC_COL]
            if pRowFilterIG == "BFDR"
                pOutputFile.puts "<tr><td style='text-align: center;'>" + field.chomp + "</td><td>" + description.chomp + "</td><td style='text-align: center;'>" + ijename + "</td><td>" + profile + "</td><td>" + fhirfield + "</td><td>" + fhirtype + "</td><td>" + fhirencoding + "</td><td>" + fhirunique + "</td></tr>"
            else
                pOutputFile.puts "<tr><td style='text-align: center;'>" + field.chomp + "</td><td>" + description.chomp + "</td><td style='text-align: center;'>" + ijename + "</td><td>" + profile + "</td><td>" + fhirfield + "</td><td>" + fhirtype + "</td><td>" + fhirencoding + "</td></tr>"
            end
        end
        #pOutputFile.puts "</tbody>"
    end
    pOutputFile.puts "</tbody>"
    pOutputFile.puts "</table>"
    pOutputFile.close
end

#create BFDR data dictionary_natality
vOutputFilename = "/generated/dataDictionaries/bfdr_ije_mapping_natality.md"
puts vOutputFilename
vOutputFile = File.open(Dir.pwd + vOutputFilename, "w")
vOutputFile.puts "Many of the BFDR data elements can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for data exchange among jurisdictions and with authorized data partners, such as National Vital Statistics System (NVSS). The National Center for Health Statistics (NCHS) has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG; however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS.

The following IJE mappings to locations in FHIR specifications are for information purposes only:
* BFDR: Vital Records Birth and Fetal Death Reporting (this IG)
* VRCPL: [Vital Records Common Profile Library]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}})
* US CORE: [US Core Implementation Guide, 5.0.1]({{site.data.fhir.ver.hl7fhiruscore}})
* ODH: [Occupational Data for Health]({{site.data.fhir.ver.hl7fhirusodh}})
* FHIR: [extensions](http://hl7.org/fhir/extensions/extension-registry.html)"

vOutputFile.puts ""
vOutputFile.puts "#### Specifying None of the Above and Missing Data"
vOutputFile.puts "All of the none-of-the-above values are represented as observations with a clear code, and a value of 'None'. If the none-of-the-above observation is present in the bundle, then its complement should not be used. See [Note on missing data]" 
vOutputFile.puts ""
vOutputFile.puts "| **Observation** |  **Complements**   |"
vOutputFile.puts "| --------------- | ------------------ |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedAbnormalConditionsOfNewborn]  | [ProcedureAssistedVentilationFollowingDelivery], [ProcedureAssistedVentilationFollowingDelivery], [ObservationNICUAdmission], [ProcedureSurfactantReplacementTherapy], [ProcedureAntibioticSuspectedNeonatalSepsis], [ConditionSeizure] |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery]  | [ProcedureInductionOfLabor], [ProcedureAugmentationOfLabor], [ObservationSteroidsFetalLungMaturation], [ObservationAntibioticsAdministeredDuringLabor], [ConditionChorioamnionitis], [ProcedureEpiduralOrSpinalAnesthesia] |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedCongenitalAnomoliesOfTheNewborn] | [ConditionCongenitalAnomalyOfNewborn] |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedInfectionsPresentDuringPregnancy] | [ConditionInfectionPresentDuringPregnancy] |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedMaternalMorbidities] | [ProcedureBloodTransfusion], [ConditionPerinealLaceration], [ConditionRupturedUterus], [ProcedureUnplannedHysterectomy], [ObservationICUAdmission] |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedObstetricProcedures] | [ProcedureObstetric] |"
vOutputFile.puts "| [ObservationNoneOfSpecifiedPregnancyRiskFactors] | [ConditionPrepregnancyDiabetes], [ConditionGestationalDiabetes], [ConditionPrepregnancyHypertension], [ConditionGestationalHypertension], [ConditionEclampsiaHypertension], [ObservationPreviousPretermBirth], [ProcedureInfertilityTreatment], [ProcedureArtificialInsemination], [ProcedureAssistedFertilization], [ObservationPreviousCesarean] |"
vOutputFile.puts "| [ObservationUnknownFinalRouteMethodDelivery] | [ProcedureFinalRouteMethodDelivery] |"
vOutputFile.puts "{: .grid }"

vOutputFile.puts ""
createMappingTable("BFDR", "Natality", "### Natality (Live Birth) IJE Mapping", vOutputFile, vProfileIntrosSpreadsheet, vSpreadsheet)

#create BFDR data dictionary_fetalDeath
vOutputFilename1 = "/generated/dataDictionaries/bfdr_ije_mapping_fetalDeath.md"
puts vOutputFilename1
vOutputFile1 = File.open(Dir.pwd + vOutputFilename1, "w")
vOutputFile1.puts "Many of the BFDR data elements can be identified using the IJE (Inter-Jurisdictional Exchange) data element names (codes). The IJE codes are used for data exchange among jurisdictions and with authorized data partners, such as National Vital Statistics System (NVSS). The National Center for Health Statistics (NCHS) has implemented IJE codes for exchange of mortality data with jurisdictions via the VRDR IG; however, the use of IJE codes has not yet been implemented for birth and fetal death reporting to NCHS.

The following IJE mappings to locations in FHIR specifications are for information purposes only:
* BFDR: Vital Records Birth and Fetal Death Reporting (this IG)
* VRCPL: [Vital Records Common Profile Library]({{site.data.fhir.ver.hl7fhirusvrcommonlibrary}})
* US CORE: [US Core Implementation Guide, 5.0.1]({{site.data.fhir.ver.hl7fhiruscore}})
* ODH: [Occupational Data for Health]({{site.data.fhir.ver.hl7fhirusodh}})
* FHIR: [extensions](http://hl7.org/fhir/extensions/extension-registry.html)"

vOutputFile1.puts ""
vOutputFile1.puts "#### Specifying None of the Above and Missing Data"
vOutputFile1.puts "All of the none-of-the-above values are represented as observations with a clear code, and a value of 'None'. If the none-of-the-above observation is present in the bundle, then its complement should not be used. See [Note on missing data]" 
vOutputFile1.puts ""
vOutputFile1.puts "| **Observation** |  **Complements**   |"
vOutputFile1.puts "| --------------- | ------------------ |"
vOutputFile1.puts "| [ObservationNoneOfSpecifiedMaternalMorbidities] | [ProcedureBloodTransfusion], [ConditionPerinealLaceration], [ConditionRupturedUterus], [ProcedureUnplannedHysterectomy], [ObservationICUAdmission] |"
vOutputFile1.puts "| [ObservationNoneOfSpecifiedPregnancyRiskFactors] | [ConditionPrepregnancyDiabetes], [ConditionGestationalDiabetes], [ConditionPrepregnancyHypertension], [ConditionGestationalHypertension], [ConditionEclampsiaHypertension], [ObservationPreviousPretermBirth], [ProcedureInfertilityTreatment], [ProcedureArtificialInsemination], [ProcedureAssistedFertilization], [ObservationPreviousCesarean] |"
vOutputFile1.puts "| [ObservationUnknownFinalRouteMethodDelivery] | [ProcedureFinalRouteMethodDelivery] |"
vOutputFile1.puts "{: .grid }"

vOutputFile1.puts ""
createMappingTable("BFDR", "Fetal Death", "### Fetal Death IJE Mapping", vOutputFile1, vProfileIntrosSpreadsheet, vSpreadsheet)

#create VRDR data dictionary_mortality
vOutputFilename2 = "/generated/dataDictionaries/vrdr_ije_mapping_mortality.md"
puts vOutputFilename2
vOutputFile2 = File.open(Dir.pwd + vOutputFilename2, "w")
vOutputFile2.puts ""
createMappingTable("VRDR", "Mortality", "### Death Record IJE Mapping", vOutputFile2,vProfileIntrosSpreadsheet, vSpreadsheet)

#create VRDR data dictionary_mortalityRoster
vOutputFilename3 = "/generated/dataDictionaries/vrdr_ije_mapping_mortalityRoster.md"
puts vOutputFilename3
vOutputFile3 = File.open(Dir.pwd + vOutputFilename3, "w")
vOutputFile3.puts ""
createMappingTable("VRDR", "Mortality Roster", "### Mortality Roster IJE Mapping", vOutputFile3, vProfileIntrosSpreadsheet, vSpreadsheet)

#create hash for mapping of links 
aliases={}
File.foreach(Dir.pwd + "/input/includes/markdown-link-references.md", chomp: true) do |line|
    parts = line.split(':',2)
    url =parts[1][1..] if !parts[1].nil?
    link = parts[0][1..-2]
    s = "<a href='#{url}'>#{link}</a>"   
    aliases[parts[0]]=s
end
File.foreach(Dir.pwd + "/fsh-generated/includes/fsh-link-references.md", chomp: true) do |line|
    parts = line.split(':',2)
    url =parts[1][1..] if !parts[1].nil?
    link = parts[0][1..-2]
    s = "<a href='#{url}'>#{link}</a>"   
    aliases[parts[0]]=s
end

#global substitute to create html links
def exchangeURLs(pOutputFile, aliases)
    content = File.read(pOutputFile)
    aliases.each{|key, value|
        content=content.gsub(key,value)}
    File.open(pOutputFile, 'w') { |file| file.write(content) }
end
exchangeURLs(vOutputFile, aliases)
exchangeURLs(vOutputFile1, aliases)
exchangeURLs(vOutputFile2, aliases)
exchangeURLs(vOutputFile3, aliases)