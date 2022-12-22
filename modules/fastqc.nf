process FASTQC {

    tag "${sampleName}"

    publishDir "$params.output_dir", mode: "copy"

    input:
        tuple val(sampleName), path(reads)

    output:
        path("*"), emit: fastqc_html_ch

    script:

        """
        fastqc $reads
        
        """

}
