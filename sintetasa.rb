# Sintetasa Class
class Sintetasa
  @stopcodons = []
  @aminoacidos = []
  
  def init()
    @stopcodons = ["TAA","TAG","TGA"]
    @aminoacidos = ["I","L","V","F","M","C","A","G","P","T","S","Y","W","Q","N","H","E","D","K","R"]

      
    @codons = Hash.new("Codons")
    @codons["I"]=["ATT", "ATC", "ATA"]
    @codons["L"]=["CTT", "CTC", "CTA","CTG","TTA","TTG"]
    @codons["V"]=["GTT", "GTC", "GTA","GTG"]
    @codons["F"]=["TTT", "TTC"]
    @codons["M"]=["ATG"]
    @codons["C"]=["TGT","TGC"]
    @codons["A"]=["GCT","GCC","GCA","GCG"]
    @codons["G"]=["GGT","GGC","GGA","GGG"]
    @codons["P"]=["CCT","CCC","CCA","CCG"]
    @codons["T"]=["ACT","ACC","ACA","ACG"]
    @codons["S"]=["TCT","TCC","TCA","TCG","AGT","AGC"]
    @codons["Y"]=["TAT","TAC"]
    @codons["W"]=["TGG"]
    @codons["Q"]=["CAA","CAG"]
    @codons["N"]=["AAT","AAC"]
    @codons["H"]=["CAT","CAC"]
    @codons["E"]=["GAA","GAG"]
    @codons["D"]=["GAT","GAC"]
    @codons["K"]=["AAA","AAG"]
    @codons["R"]=["CGT","CGC","CGA","CGG","AGA","AGG"]
      
  end
  
  # Synthesize a DNA sequence based on the protein structure.
  # (This is the opposite of what is been generally done in all our cells).
  def synthesize(protein)
    adn = ''
    for a in (0..protein.length-1)
      aminoacido = protein[a,1]
      entropy = rand(100-10) + 10
      
      
      if (@aminoacidos.include?(aminoacido))
    
        adn = adn + @codons[aminoacido][entropy % (@codons[aminoacido].length)]
      end
      
    end
    @synthesize = adn
  end
  
  def makeup(seq)
    printableseq = ""
    
    for posicion in (0..seq.length-1)
      if (posicion>0 && posicion % 70 == 0)
        printableseq = printableseq + "\n"
      end
        
      printableseq = printableseq + seq[posicion,1]
        
    end
    
    @makeup = printableseq
  end

end






#protein = "MKCLSSIFLPCLQARKLRRQRRQDYHASWTCAGISELAQPTEPFPAYEHEKHHHGSTELS
#ALPDQPKDAVTKTPQMTPSIRLVNPADSECSTLDDPDEKQPQGIQDDIAAKQTTTLSDDD
#TDVESGSEKTSRVIDMKVGPQTEEPLNPKAHLSPKSKDDIDLELSSRRIPRSPDKKPRPA
#SMEVPPSAAAKLPEIKSRIIEDIPEDVEEEDKHDADIKHTVSAVPDEQAKPEEEYGSETA
#ATKPTKRTSTWRLSQRKSMNELFNLLQSTAAAVAAAPKLSNLKFAIPPKSPLRASPTNDS
#PHHSYVSSVSSTSNRPPTPPPKSPVLRPNSRPLPDPAQLSSSAPPASGTSLGSLSSSPTK
#KQRRMGTAVFPLLPCKWAGIHDEDMKEKHSNDTNRNSQTLFQ"
#
#
#s = Sintetasa.new
#
#s.init
#sq = s.synthesize(protein)
#sq = s.makeup(sq)
#
#puts sq


