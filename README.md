# methylation_scripts
```quast.py*fasta -t 1```
```for i in RetrievedST; do prokka -outdir$(echo "$i | sed 's/RetrievedST\///' |sed 's/.fasta//') --gram pos --prefix $(echo "$i" | sed 's/genomes\///' | sed 's/.fasta\\') --genus 'Staphylococcus' --species 'aureus' $i --usegenus; done```
```panaroo -i */*.gff -o PanarooOutput --clean-mode strict```
```panaroo-merge -d RetrievedST20/ RetrievedST80/ RetrievedST12/ RetrievedST9/ -o st_merge -t 1```
