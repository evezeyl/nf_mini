// NF MINI Pipeline


log.info "".center(74, "=")
log.info "######################################################"
log.info "##                        NF-MINI                     "
log.info "######################################################"
log.info "".center(74, "=")
log.info "Run track: $params.track".center(74)
log.info "ALPPACA Version: $workflow.manifest.version".center(74)
log.info "".center(74, "=")

// Activate dsl2
nextflow.enable.dsl=2

// Define workflows
include { CONTAMINATION } from "./workflows/CONTAMINATION.nf"
//include { CGMLST      } from "./workflows/CGMLST.nf"

workflow {
	if (params.track == "contamination") {
		CONTAMINATION()
	}
    /*
	if (params.track == "cgmlst") {
		CGMLST()
	}
    */    
}

workflow.onComplete {
	log.info "".center(74, "=")
	log.info "nf-mini Complete!".center(74)
	log.info "Output directory: $params.out_dir".center(74)
	log.info "Duration: $workflow.duration".center(74)
	log.info "Nextflow version: $workflow.nextflow.version".center(74)
	log.info "".center(74, "=")
}

workflow.onError {
	println "Pipeline execution stopped with the following message: ${workflow.errorMessage}".center(74, "=")
}