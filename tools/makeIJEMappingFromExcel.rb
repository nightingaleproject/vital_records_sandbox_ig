# ruby tools/makeIJEMappingFromExcel.rb input/mapping/BFDR_Profile_Intros.xlsx input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx 

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
IJE_FHIR_ENCODING_COL = 13
IJE_MAPPING_PROFILE_COL = 18

# BFDR_Profile_Intros.xlsx columns
INTRO_ORDER_COL = 0
INTRO_HEADING_COL = 1 
INTRO_PROFILE_NAME_CONDENSED_COL = 2
INTRO_PROFILE_NAME_COL = 3
INTRO_PROFILE_USAGE_COL = 4
INTRO_FORM_MAPPING_COL = 5
INTRO_IJE_MAPPING_COL = 6
INTRO_PROFILE_LOCATION_COL = 7

# ARGV[0] input/mapping/BFDR_Profile_Intros.xlsx
vProfileIntrosSpreadsheet = open_spreadsheet(ARGV[0])
vProfileIntrosSpreadsheet.default_sheet = "BFDR"

# ARGV[1] input/mapping/IJE_File_Layouts_Version_2021_FHIR-2023-02-22-All-Combined.xlsx 
vSpreadsheet = open_spreadsheet(ARGV[1])
vSpreadsheet.default_sheet = "IJE_File_Layouts_Version_2021_F"

def printHeader(hHeading, pOutputFile)
    pOutputFile.puts "{: .grid }"
    pOutputFile.puts hHeading
    pOutputFile.puts ""
    pOutputFile.puts "| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |"
    pOutputFile.puts "| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |"
    return true
end 

def createMappingTable(pRowFilterIG, pRowFilter, pHeading, pOutputFile, pIntroSpreadsheet, pSpreadsheet)
    profiles = []
    profileName = ""
    pIntroSpreadsheet.default_sheet = pRowFilterIG
    pIntroSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
        #next if row[INTRO_PROFILE_LOCATION_COL].value.to_s != pRowFilterIG
        profileName = row[INTRO_PROFILE_NAME_CONDENSED_COL].value.to_s if row[INTRO_PROFILE_NAME_CONDENSED_COL] 
        profileHeading = row[INTRO_HEADING_COL].value.to_s if row[INTRO_HEADING_COL]
        profiles.append([profileName, profileHeading])
    end

    pOutputFile.puts pHeading
    pOutputFile.puts ""

    pOutputFile.puts "| **#** |  **Description**   |  **IJE Name**  | **Profile**  |  **Field**  |  **Type**  | **Value Set**  |"
    pOutputFile.puts "| :---------: | --------------- | ------------ | ------------- | ---------- | ---------- | -------------- |"

    codedHeader = false
    notImplementedHeader = false
    profiles.each do |(x, y)| 
        pSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
            next if row[IJE_USECASE_COL].value.to_s != pRowFilter || row[IJE_PROFILE_COL].value.to_s != x #|| row[IJE_PROFILE_COL].value.to_s == "not implemented"
            if codedHeader == false && y.to_s == "Coding"
                codedHeader = printHeader("#### Coded Content", pOutputFile)
            end
            if notImplementedHeader == false && y.to_s == "Not Implemented"
                notImplementedHeader = printHeader("#### Not Implemented Content", pOutputFile)
            end
            field = description = ijename = profile = vProvOutputFilename = fhirfield = fhirtype = fhirencoding = fhirig = ""
            field = row[IJE_FIELD_COL].value.to_s if row[IJE_FIELD_COL]
            ijename = row[IJE_NAME_COL].value.to_s if row[IJE_NAME_COL]
            fhirig = row[IJE_FHIR_IG_COL].value.to_s if row[IJE_FHIR_IG_COL]
            profile = "[" + row[IJE_PROFILE_COL].value.to_s + "]" if row[IJE_PROFILE_COL] 
            fhirfield = row[IJE_FHIR_FIELD_COL].value.to_s if row[IJE_FHIR_FIELD_COL]
            fhirtype = row[IJE_FHIR_TYPE_COL].value.to_s if row[IJE_FHIR_TYPE_COL]
            fhirencoding = row[IJE_FHIR_ENCODING_COL].value.to_s if row[IJE_FHIR_ENCODING_COL]   
            description = row[IJE_DESC_COL].value.to_s if row[IJE_DESC_COL]
            pOutputFile.puts "| " + field.chomp + " | " + description.chomp + " | " + ijename + "| " + profile + "|" + fhirfield + " | " + fhirtype + " | " + fhirencoding + " | "
        end
    end
    pOutputFile.puts "{: .grid }"
    pOutputFile.puts "{% include markdown-link-references.md %}"
  end

#create BFDR data dictionary
vOutputFilename = "/generated/dataDictionaries/bfdr_ije_mapping.md"
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
createMappingTable("BFDR", "Natality", "### Natality (Live Birth) IJE Mapping", vOutputFile, vProfileIntrosSpreadsheet, vSpreadsheet)
createMappingTable("BFDR", "Fetal Death", "### Fetal Death IJE Mapping", vOutputFile, vProfileIntrosSpreadsheet, vSpreadsheet)

#create VRDR data dictionary
vOutputFilename2 = "/generated/dataDictionaries/vrdr_ije_mapping.md"
puts vOutputFilename2
vOutputFile2 = File.open(Dir.pwd + vOutputFilename2, "w")
vOutputFile2.puts ""
createMappingTable("VRDR", "Mortality", "### Death Record IJE Mapping", vOutputFile2,vProfileIntrosSpreadsheet, vSpreadsheet)
createMappingTable("VRDR", "Mortality Roster", "### Mortality Roster IJE Mapping", vOutputFile2, vProfileIntrosSpreadsheet, vSpreadsheet)







#create array of profile names and field # for sorting
=begin
profileArray = []
vSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
    next if row[IJE_USECASE_COL].value.to_s != "Natality" && row[IJE_USECASE_COL].value.to_s != "Fetal Death"
    #field = profile = ""
    profile = row[IJE_PROFILE_COL].value.to_s if row[IJE_PROFILE_COL] 
    #field = row[IJE_FIELD_COL].value.to_s if row[IJE_FIELD_COL]  
    if not profileArray.include?(profile)
        profileArray << profile
    end
end
=end
=begin
profileArray = []
vProfileIntrosSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
    next if row[INTRO_PROFILE_LOCATION_COL].value.to_s != "BFDR" && row[INTRO_PROFILE_LOCATION_COL].value.to_s != "VRCPL"
    #field = profile = ""
    profile = row[INTRO_PROFILE_NAME_CONDENSED_COL].value.to_s if row[INTRO_PROFILE_NAME_CONDENSED_COL] 
    #field = row[IJE_FIELD_COL].value.to_s if row[IJE_FIELD_COL]  
    if not profileArray.include?(profile)
        profileArray << profile
    end
end
profileArray = profileArray.sort
puts profileArray
=end

#def createSortedArray(pRowFilter, pHeading, pOutputFile, pSpreadsheet)
#profiles = Hash.new
#field = profileName = ""
#pSpreadsheet.each_row_streaming(offset:1, pad_cells: true) do |row|
#    next if row[IJE_USECASE_COL].value.to_s != pRowFilter
#    profileName = row[IJE_PROFILE_COL].value.to_s if row[IJE_PROFILE_COL] 
#    field = row[IJE_FIELD_COL].value.to_s if row[IJE_FIELD_COL]  
    #profiles[profileA] = { :field => fieldA}
#    if profiles.key?(profileName) 
#        a = profiles[profileName]
#        profiles[profileName] = a.append(field)
#    else
#        profiles[profileName] = [field]
#    end
#end
#puts profiles.sort_by{|k,v| k}.to_h
#end


