baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: rtg-core-variant-caller
inputs:
  input:
    doc: Input BAM file to call variants on
    inputBinding:
      position: 1
      prefix: --input
    type: File
label: RTG Core 3.7 Variant Caller
outputs:
  output:
    doc: Output VCF file containing variants
    outputBinding:
      glob: output/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/rtg-core-variant-caller:8
s:author:
  class: s:Person
  s:name: Isaac Liao
