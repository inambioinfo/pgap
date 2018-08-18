#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

label: "file concatenation"

hints:
  DockerRequirement:
    dockerPull: ncbi/gpdev:latest

baseCommand: cat
stdout: cat.out

inputs:
  files_in:
    type: File[]
    inputBinding:
      position: 1
  
outputs: 
  file_out:
    type: stdout