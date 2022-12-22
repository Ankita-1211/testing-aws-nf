process MULTIQC {
    publishDir "$params.output_dir", mode:'copy'
       
    input:
    path (inputpath)
    
    output:
    path 'multiqc_report.html'
     
    script:
    """
    multiqc $inputpath
    """
} 

