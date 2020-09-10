Overview
==========




template:
    - content - data array or hash
    - form - a bunch of allowed fields with input types and stuff
    - layout - the thing that describes the style and structure of the content.
    - output - a html blob.

document:
    - content

processor:
    - input: document, template
    - takes the content from the documents and merges it with the content from the template
    - output: html with content placed where template describes.
