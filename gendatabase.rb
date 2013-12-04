require 'digest/sha1'

require 'rubystats'

# Aminoacyl tRNA synthetase "charges" tRNA so that they can be used to generate polypeptide sequences....
load 'sintetasa.rb'

proteinName = []
proteinName[0]="Aminorasa"
proteinName[1]="Acid phosphatase"
proteinName[2]="Acyltransferase"
proteinName[3]="Adapter molecule"
proteinName[4]="Adenosyltransferase"
proteinName[5]="Adenylate cyclase"
proteinName[6]="Adhesion molecule"
proteinName[7]="Aldolase"
proteinName[8]="Alkaline phosphatase"
proteinName[9]="Aminopeptidase"
proteinName[10]="Amylase"
proteinName[11]="Anchor protein"
proteinName[12]="Aspartic protease"
proteinName[13]="ATPase"
proteinName[14]="B cell antigen receptor"
proteinName[15]="Calcium binding protein"
proteinName[16]="Carbonic anhydrase"
proteinName[17]="Carboxylase"
proteinName[18]="Carboxypeptidase"
proteinName[19]="Catalase"
proteinName[20]="Cell cycle control protein"
proteinName[21]="Cell junction protein"
proteinName[22]="Cell surface receptor"
proteinName[23]="Chaperone"
proteinName[24]="Chemokine"
proteinName[25]="Coagulation factor"
proteinName[26]="Complement protein"
proteinName[27]="Complement receptor"
proteinName[28]="Cysteine protease"
proteinName[29]="Cytokine"
proteinName[30]="Cytokine receptor"
proteinName[31]="Cytoskeletal associated protein"
proteinName[32]="Cytoskeletal protein"
proteinName[33]="Decarboxylase"
proteinName[34]="Deacetylase"
proteinName[35]="Deaminase"
proteinName[36]="Defensin"
proteinName[37]="Dehydratase"
proteinName[38]="Dehydrogenase"
proteinName[39]="Deoxyribonuclease"
proteinName[40]="DNA binding protein"
proteinName[41]="DNA endonuclease"
proteinName[42]="DNA exonuclease"
proteinName[43]="DNA helicase"
proteinName[44]="DNA ligase"
proteinName[45]="DNA methyltransferase"
proteinName[46]="DNA polymerase"
proteinName[47]="DNA repair protein"
proteinName[48]="DNA telomerase"
proteinName[49]="Dual specificity kinase"
proteinName[50]="Dual specificity phosphatase"
proteinName[51]="Epimerase"
proteinName[52]="Endopeptidase"
proteinName[53]="Enzyme regulator"
proteinName[54]="Esterase"
proteinName[55]="Extracellular ligand gated channel"
proteinName[56]="Extracellular matrix protein"
proteinName[57]="Galactosidase"
proteinName[58]="Galactosyltransferase "
proteinName[59]="Glucosaminyltransferase "
proteinName[60]="Glucosidase"
proteinName[61]="Glucuronidase"
proteinName[62]="Glutathione transferase"
proteinName[63]="Glycosidase"
proteinName[64]="Glycosylase"
proteinName[65]="Glycosyltransferase"
proteinName[66]="G protein"
proteinName[67]="G protein coupled receptor"
proteinName[68]="Growth factor"
proteinName[69]="Growth inhibitory factor"
proteinName[70]="GTPase"
proteinName[71]="GTPase activating protein"
proteinName[72]="Guanine nucleotide exchange factor"
proteinName[73]="Guanylate cyclase"
proteinName[74]="Guanyl cyclase"
proteinName[75]="Heat shock protein"
proteinName[76]="Hydratase"
proteinName[77]="Hydrolase"
proteinName[78]="Hydroxylase"
proteinName[79]="Immunoglobulin"
proteinName[80]="Integral membrane protein"
proteinName[81]="Intracellular ligand gated channel"
proteinName[82]="Inward rectifier channel"
proteinName[83]="Ion channel, other"
proteinName[84]="Isomerase"
proteinName[85]="Ligand"
proteinName[86]="Ligase"
proteinName[87]="Lipase"
proteinName[88]="Lipid Kinase"
proteinName[89]="Lipid phosphatase"
proteinName[90]="Lyase"
proteinName[91]="Membrane bound ligand"
proteinName[92]="Membrane transport protein"
proteinName[93]="Metallo protease"
proteinName[94]="Methyltransferase"
proteinName[95]="Motor protein"
proteinName[96]="Mutase"
proteinName[97]="MHC complex protein"
proteinName[98]="Neuraminidase"
proteinName[99]="Nuclear receptor"
proteinName[100]="Nucleotidyltransferase"
proteinName[101]="NADase"
proteinName[102]="Oxidase"
proteinName[103]="Oxidoreductase"
proteinName[104]="Oxygenase"
proteinName[105]="Peptide hormone"
proteinName[106]="Peroxidase"
proteinName[107]="Phosphatase,others"
proteinName[108]="Phosphodiesterase"
proteinName[109]="Phosphohydrolase"
proteinName[110]="Phospholipase"
proteinName[111]="Phosphorylase"
proteinName[112]="Phosphotransferase"
proteinName[113]="Phosphotriesterase"
proteinName[114]="Prenyltransferase"
proteinName[115]="Protease, unclassified"
proteinName[116]="Protease inhibitor"
proteinName[117]="Racemase"
proteinName[118]="Reductase"
proteinName[119]="Receptor serine/threonine kinase"
proteinName[120]="Receptor tyrosine kinase"
proteinName[121]="Receptor tyrosine phosphatase"
proteinName[122]="Regulatory/other subunit"
proteinName[123]="Reverse transcriptase"
proteinName[124]="Ribonuclease"
proteinName[125]="Ribonucleoprotein"
proteinName[126]="Ribosomal subunit"
proteinName[127]="Ribosyltransferase"
proteinName[128]="RNA binding protein"
proteinName[129]="RNA endonuclease"
proteinName[130]="RNA exonuclease"
proteinName[131]="RNA helicase"
proteinName[132]="RNA methyltransferase"
proteinName[133]="RNA polymerase"
proteinName[134]="Secreted polypeptide, miscellaneous"
proteinName[135]="Serine/threonine kinase"
proteinName[136]="Serine/threonine phosphatase"
proteinName[137]="Serine protease"
proteinName[138]="Sialyltransferase"
proteinName[139]="Storage protein"
proteinName[140]="Structural protein"
proteinName[141]="Sulphatase"
proteinName[142]="Sulphohydrolase"
proteinName[143]="Sulphotransferase"
proteinName[144]="Superoxide dismutase"
proteinName[145]="Synthetase"
proteinName[146]="T cell antigen receptor"
proteinName[147]="Thioesterase"
proteinName[148]="Topoisomerase"
proteinName[149]="Transaldolase"
proteinName[150]="Transaminase"
proteinName[151]="Transcription factor"
proteinName[152]="Transcription regulatory protein"
proteinName[153]="Transferase"
proteinName[154]="Transketolase"
proteinName[155]="Translation regulatory protein"
proteinName[156]="Translocase"
proteinName[157]="Transport/cargo protein"
proteinName[158]="Tyrosine kinase"
proteinName[159]="Tyrosine phosphatase"
proteinName[160]="Ubiquitin proteasome system protein"
proteinName[161]="Unclassified"
proteinName[162]="Voltage gated channel"
proteinName[163]="Water channel"


phenotypeName=[]
phenotypeName[0]='adipose tissue phenotype'
phenotypeName[1]='behavior/neurological phenotype'
phenotypeName[2]='cardiovascular system phenotype'
phenotypeName[3]='cellular phenotype'
phenotypeName[4]='craniofacial phenotype'
phenotypeName[5]='digestive/alimentary phenotype'
phenotypeName[6]='embryogenesis phenotype'
phenotypeName[7]='endocrine/exocrine gland phenotype'
phenotypeName[8]='growth/size phenotype'
phenotypeName[9]='hearing/vestibular/ear phenotype'
phenotypeName[10]='hematopoietic system phenotype'
phenotypeName[11]='homeostasis/metabolism phenotype'
phenotypeName[12]='immune system phenotype'
phenotypeName[13]='integument phenotype'
phenotypeName[14]='limbs/digits/tail phenotype'
phenotypeName[15]='liver/biliary system phenotype'
phenotypeName[16]='mortality/aging'
phenotypeName[17]='muscle phenotype'
phenotypeName[18]='nervous system phenotype'
phenotypeName[19]='no phenotypic analysis'
phenotypeName[20]='normal phenotype'
phenotypeName[21]='other phenotype'
phenotypeName[22]='pigmentation phenotype'
phenotypeName[23]='renal/urinary system phenotype'
phenotypeName[24]='reproductive system phenotype'
phenotypeName[25]='respiratory system phenotype'
phenotypeName[26]='skeleton phenotype'
phenotypeName[27]='taste/olfaction phenotype'
phenotypeName[28]='tumorigenesis'
phenotypeName[29]='altered tumor pathology'
phenotypeName[30]='altered tumor susceptibility'
phenotypeName[31]='vision/eye phenotype'
phenotypeName[32]='abnormal ear development'
phenotypeName[33]='abnormal inner ear morphology'
phenotypeName[34]='abnormal middle ear morphology'
phenotypeName[35]='abnormal outer ear morphology'
phenotypeName[36]='abnormal autonomic nervous system morphology'
phenotypeName[37]='abnormal brain morphology'
phenotypeName[38]='abnormal ependyma morphology'
phenotypeName[39]='abnormal glial cell morphology'
phenotypeName[40]='abnormal innervation'
phenotypeName[41]='abnormal meninges morphology'
phenotypeName[42]='abnormal nervous system development'
phenotypeName[43]='abnormal nervous system tract morphology'
phenotypeName[44]='abnormal neuron morphology'
phenotypeName[45]='abnormal somatic nervous system morphology'
phenotypeName[46]='abnormal spinal cord morphology'
phenotypeName[47]='alpha-synuclein inclusion body'
phenotypeName[48]='amyloid beta deposits'
phenotypeName[49]='abnormal coronary vessel morphology'
phenotypeName[50]='abnormal heart and great vessel attachment'
phenotypeName[51]='abnormal heart atrium and ventricle connection'
phenotypeName[52]='abnormal heart atrium morphology'
phenotypeName[53]='abnormal heart development'
phenotypeName[54]='abnormal heart iron level'
phenotypeName[55]='abnormal heart layer morphology'
phenotypeName[56]='abnormal heart position or orientation'
phenotypeName[57]='abnormal heart septum morphology'
phenotypeName[58]='abnormal heart shape'
phenotypeName[59]='abnormal heart size'
phenotypeName[60]='abnormal heart valve morphology'
phenotypeName[61]='abnormal heart ventricle morphology'
phenotypeName[62]='abnormal impulse conducting system morphology'
phenotypeName[63]='abnormal pericardium morphology'
phenotypeName[64]='absent heart'
phenotypeName[65]='cardiac fibrosis'
phenotypeName[66]='dilated heart'
phenotypeName[67]='dystrophic cardiac calcinosis'
phenotypeName[68]='heart vascular congestion'

# Aminoacids
aminoacidos = ["I","L","V","F","M","C","A","G","P","T","S","Y","W","Q","N","H","E","D","K","R"]
stopcodons = ["TAA","TAG","TGA"]

# Predictable random sequence.
srand 73674736

# Protein Class
class ProteinBlock
   def aminoacidos
     ["I","L","V","F","M","C","A","G","P","T","S","Y","W","Q","N","H","E","D","K","R"]
   end
   
   def block(size)
     protein = ""
     for a in (0..size-1)
       entropy = rand(aminoacidos.length) + 0
       protein = protein + aminoacidos[entropy]
     end     
     
     @block = protein
   end
   
   
 end

 n = ProteinBlock.new

# Species Class
class Specie
  @name = ''
  @filename = ''
  @file = nil
  @altfile = nil
  @proteindatabase = []
  @numberofproteins = 0
  @proteinName = []
  @stopcodons = []
  
    
  # Init output files.
  def init(pname, pfilename, pproteindatabase, pproteinnames)
    @filename = pfilename
    @name = pname
    @file = File.new(@filename,"w+")
    @altfile = File.new('final.' + @filename,"w+")
    @proteindatabase = pproteindatabase
    @proteinName = pproteinnames
    @stopcodons = ["TAA","TAG","TGA"]
    
    @file.write 'AUG' 
    @altfile.write 'AUG'
    
  end
  
  
  def close()
    @file.write @stopcodons[rand(@stopcodons.length)+0]
    
    @file.close
    
    @altfile.write @stopcodons[rand(@stopcodons.length)+0]
  
    @altfile.close
    
  end
  
  def genomeByPhenotype(junkDNABlockSize, phenotypesPerSpecie, phenotypedatabase, phenotypeName)
    
    puts 'Phenotypes per specie ' + @name + ':' + phenotypesPerSpecie.to_s
    
    phenoma = ''
    
    for s in (0..phenotypesPerSpecie-1) 
      # Pick one phenotype, any
      proteinids = []
      entropy = rand(phenotypedatabase.length)+0
      
      # Get all the values for that phenotype.
      for ss in (0..phenotypedatabase[entropy.to_s].length-1)
        proteinids += [phenotypedatabase[entropy.to_s][ss]]
      end
      
      if (phenoma.length>0)
        phenoma += '+'
      end
      genomeex(junkDNABlockSize, proteinids)
      
      phenoma += phenotypeName[entropy]
      
    end 
    
    @genomeByPhenotype = phenoma
  end
  
  def genome(junkDNABlockSize, numberofproteins)
    proteinids = []
    for s in (0..numberofproteins-1)
      proteinids += [rand(@proteindatabase.length)+0]
    end
    
    @genome = genomeex(junkDNABlockSize, proteinids)
  end
  
  def genomeex(junkDNABlockSize, proteinids)
    sintetasa = Sintetasa.new
    
    sintetasa.init
    
    proteinBlock = ProteinBlock.new
    
    puts 'Generating gen blocks for one phenotype for '+@name+':'
      
    numberofproteins = proteinids.length
      
    @file.write sintetasa.synthesize(sintetasa.makeup(proteinBlock.block(Rubystats::NormalDistribution.new(junkDNABlockSize,10).rng.to_int.abs)))
    @altfile.write sintetasa.synthesize(sintetasa.makeup(proteinBlock.block(Rubystats::NormalDistribution.new(junkDNABlockSize,10).rng.to_int.abs)))

    human = ""
    for s in (0..numberofproteins-1)
      print '-'
      #proteinid = rand(@proteindatabase.length)+0
      proteinid = proteinids[s]
      @file.write sintetasa.synthesize(sintetasa.makeup(@proteindatabase[proteinid]))
      @altfile.write sintetasa.synthesize(sintetasa.makeup(@proteindatabase[proteinid]))
  
      if (human.length > 0)
        human = human + '+'
      end
      #human = human + 'Protein_' + proteinid.to_s
      human = human + @proteinName[proteinid]
      

      @file.write sintetasa.synthesize(sintetasa.makeup(proteinBlock.block(Rubystats::NormalDistribution.new(junkDNABlockSize,10).rng.to_int.abs)))
      @altfile.write sintetasa.synthesize(sintetasa.makeup(proteinBlock.block(Rubystats::NormalDistribution.new(junkDNABlockSize,10).rng.to_int.abs)))
    

      
    end
    
    @file.flush
    
    puts 'Done!'
    #We return here the  code definition for the database
    @genome = human
    
  end
  
  
  
  
  
end 
 
f = File.new("database.dat","w+")

# Let's do some math....
sizeOfGenome = 40*20*400*300       #*700
numberOfProteinsPerPhenotype = 20
phenotypesPerSpecie = 40
numberofproteins = numberOfProteinsPerPhenotype*phenotypesPerSpecie
availableProteins = proteinName.length
lengthOfProtein = 400


# The size of each block will be: (sizeOfGenome-(numberofproteins*lengthOfProtein))/(numberofProteins+1)

junkDNABlockSize = ((sizeOfGenome-(numberofproteins*lengthOfProtein))/(numberofproteins+1))




puts 'Profile:'
puts '--------'
puts 'Size of Genome:'+sizeOfGenome.to_s
puts 'Phenotypes per Specie:'+phenotypesPerSpecie.to_s
puts 'Number of Proteins per Phenotype:'+numberOfProteinsPerPhenotype.to_s
puts 'Number of Proteins per Specie:'+numberofproteins.to_s
puts 'Length of Protein:'+lengthOfProtein.to_s
puts 'Size of junkDNA average:' + ((sizeOfGenome-(numberofproteins*lengthOfProtein))/(numberofproteins+1)).to_s
puts 'Estimated size in MB:' + (((lengthOfProtein*3*numberofproteins+(junkDNABlockSize)*(numberofproteins+1)*3))/(1024*1024)).to_s


# Create all the protein databases, based on peptide sequences.
proteindatabase= [];
  
for b in (0..availableProteins-1)
  protein = ""
  for a in (0..Rubystats::NormalDistribution.new(lengthOfProtein,lengthOfProtein/2).rng.to_int.abs+1-1)
    entropy = rand(aminoacidos.length) + 0
    protein += aminoacidos[entropy]
  end
  
  proteindatabase[b] = protein
  
  #puts protein
  #f.puts 'Protein_' + b.to_s + '=' + '"' + protein  +  '"'
  f.puts proteinName[b] + '=' + '"' + protein  +  '"'
end


# The next step is to create phenotypes.

# These are a tree structure, where the leafs are the value that define each specie,
# and the proteins is what I already have in the database.
# Each specie is just a sequence of proteins, which is maskered with a tree structure
# for the phenotypes.http://www.informatics.jax.org/searches/Phat.cgi?id=MP:0002006

phenotypedatabase = {}
  
for a in (0..phenotypeName.length-1)
  numberOfProteinsPerThisPhenotype = rand(numberOfProteinsPerPhenotype) + 3
  array = []
  for n in (0..numberOfProteinsPerThisPhenotype-1)
    entropy = rand(proteinName.length) + 0
    
    array += [entropy]
    
  end
  phenotypedatabase[a.to_s] = array
end


# And print them out...
for s in (0..phenotypeName.length-1)
  list = ''
  
  for k in (0..phenotypedatabase[s.to_s].length-1)
    if (list.length > 0)
      list += '+'
    end
  
    list += proteinName[phenotypedatabase[s.to_s][k]]
  end
  
  f.puts phenotypeName[s] + '=' + list
  
end

f.close


# I got the general structure now, let's put the structure of each specie.
f = File.new("database.dat","a")

human = Specie.new

human.init('human','human.dat',proteindatabase, proteinName)

humangenomedef = human.genomeByPhenotype(junkDNABlockSize, Rubystats::NormalDistribution.new(phenotypesPerSpecie,3).rng.to_int.abs+1, phenotypedatabase, phenotypeName)

human.close


chimp = Specie.new

chimp.init('chimp','chimp.dat',proteindatabase, proteinName)

chimpgenomedef = chimp.genomeByPhenotype(junkDNABlockSize, Rubystats::NormalDistribution.new(phenotypesPerSpecie,3).rng.to_int.abs+1, phenotypedatabase, phenotypeName)

chimp.close

horse = Specie.new

horse.init('horse','horse.dat',proteindatabase, proteinName)

horsegenomedef = horse.genomeByPhenotype(junkDNABlockSize, Rubystats::NormalDistribution.new(phenotypesPerSpecie,3).rng.to_int.abs+1, phenotypedatabase, phenotypeName)

horse.close


bear = Specie.new

bear.init('bear','bear.dat',proteindatabase, proteinName)

beargenomedef = bear.genomeByPhenotype(junkDNABlockSize, Rubystats::NormalDistribution.new(phenotypesPerSpecie,3).rng.to_int.abs+1, phenotypedatabase, phenotypeName)

bear.close


orangutan = Specie.new

orangutan.init('orangutan','orangutan.dat',proteindatabase, proteinName)

orangutangenomedef = orangutan.genomeByPhenotype(junkDNABlockSize, Rubystats::NormalDistribution.new(phenotypesPerSpecie,3).rng.to_int.abs+1, phenotypedatabase, phenotypeName)

orangutan.close

nobody = Specie.new

nobody.init('nobody','nobody.dat',proteindatabase, proteinName)

nobodygenomedef = nobody.genomeByPhenotype(junkDNABlockSize, Rubystats::NormalDistribution.new(phenotypesPerSpecie,3).rng.to_int.abs+1, phenotypedatabase, phenotypeName)

nobody.close



# Put everything into the file....
f.puts 'human' + '=' + ' ' +  humangenomedef   + ' '

f.puts 'chimp' + '=' + ' ' + chimpgenomedef + ' '
  
f.puts 'horse' + '=' + ' ' + horsegenomedef + ' '
  
f.puts 'bear' + '=' + ' ' + beargenomedef + ' '
  
f.puts 'orangutan' + '=' + ' ' + orangutangenomedef + ' '

f.close

# Check file integrity...
Digest::SHA1.hexdigest 'foo'

# Verify predictability of random sequences....
gen = Rubystats::NormalDistribution.new(16,3)

puts gen.rng.to_int



  