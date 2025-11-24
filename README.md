# 4th BioHackathon Germany
## Project: Integrating Data Science Capabilities within the OMERO Data Management Ecosystem

This repo works to collect matherial, issues and results from the Project

### Project Description

OMERO is a widely adopted, open-source data management platform designed to support the handling, visualization, and analysis of biological imaging data. It is a central infrastructure in the global bioimaging community, providing robust solutions for organizing, sharing, and storing microscopy data. Within Germany, OMERO has become a key component of the NFDI4BIOIMAGE consortium—part of the National Research Data Infrastructure (NFDI)—which aims to enable FAIR and sustainable research data management in the field of bioimage analysis.

This project will enhance the functionality of existing OMERO plugins with a focus on data science applications. By addressing current limitations, resolving software issues, and extending plugin capabilities, we aim to improve the user experience and enable more advanced, integrated data analysis capabilities. These improvements will help transform OMERO into a more powerful and accessible tool for image-based research. Participants in the project will be able to contribute in various ways, including writing tests, improving documentation, debugging issues, and developing new functionality. We propose two key focus areas for development, though contributions are not limited to these.

* OMERO.parade-crossfilter: Organizing and annotating data within the OMERO database significantly enhances its value, enabling complex queries and the compilation of statistical analyses. Currently, this process is primarily conducted within Python notebooks, outside of the web client, which is impractical for many bio-image scientists. OMERO.parade-crossfilter is a prototype plugin that shows great promise for integrating data science applications directly within the web client. A key challenge of our hackathon will be to develop and release version 1.0 of this plugin, making advanced data science tools accessible to all users.
* Advancement of ROIs Filtering with Annotation: OMERO's ability to save image analysis results alongside raw data allows collaborators to review findings remotely using the web client. Regions of Interest (ROIs) are fundamental to most bioimage analysis projects. This aspect of our project aims to improve the display interface and APIs for filtering and annotating ROIs across several plugins, including OMERO.iviewer (for viewing images and overlaying ROIs), OMERO.figure (for creating figures and presenting analysis results), napari-omero (for interfacing with the Python image analysis software napari), omero_macro-extension (for extending Fiji's macro language capabilities), BIOMERO (for submitting jobs to HPC clusters and importing results back), and OMERO.parade-crossfilter.

By equipping researchers with more intuitive, integrated tools for data annotation, filtering, and statistical analysis, this project will substantially expand the analytical capabilities of the OMERO platform. The planned developments are directly aligned with the goals of NFDI4BIOIMAGE and consequently with the goals of de.NBI, and ELIXIR Germany by contributing to a more robust, interoperable bioimaging data ecosystem. Ultimately, the project supports the broader mission of the NFDI to enable professional, reproducible, and FAIR research data management in life sciences.

### Hackaton schedule

Hacking will take place between **December 1st and 5th, 2025, starting at 13:00**. The last day will be mainly for presenting results and wrapping up.

### Useful Links

-OMERO.web			https://github.com/ome/omero-web 

-OMERO.figure		https://github.com/ome/omero-figure

-OMERO.iviewer		https://github.com/ome/omero-iviewer

-OMERO.parade-crossfilter	https://github.com/will-moore/parade-crossfilter

-OMERO.tagsearch		https://github.com/German-BioImaging/omero-tagsearch 

-BIOMERO (HPC)		https://github.com/NL-BioImaging/biomero 

-Napari-OMERO plugin	https://github.com/tlambert03/napari-omero

-Fiji-OMERO plugin		https://github.com/GReD-Clermont/omero_macro-extensions

-QuPath-OMERO plugin	https://github.com/qupath/qupath-extension-omero 

-Galaxy-OMERO plugin	https://github.com/Helmholtz-UFZ/galaxy-tools 
