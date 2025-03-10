## Explanation of Jekyll Scholar

Jekyll Scholar is a plugin for [Jekyll](https://jekyllrb.com/), a popular static site generator, designed to enhance academic blogging or websites. It provides tools to manage **citations**, **bibliographies**, and **reading lists** seamlessly within a Jekyll-powered site. Built for researchers, students, or anyone needing to handle scholarly references, it integrates [BibTeX](https://www.bibtex.com/)—a widely used bibliography format in academic writing—into static web pages. With Jekyll Scholar, you can:

- **Generate Bibliographies**: Automatically format and display a list of references from a BibTeX file.
- **Insert Citations**: Add in-text citations linked to your bibliography with customizable styles.
- **Support Academic Features**: Include details like DOIs, page numbers, or links to PDFs, all styled according to common citation formats (e.g., APA, MLA, Chicago).

It’s particularly useful because it bridges the gap between static site generation and the dynamic needs of academic writing, where proper citation is critical. However, note that Jekyll Scholar isn’t supported natively on [GitHub Pages](https://pages.github.com/) due to plugin restrictions, so you’d typically generate the site locally or use a custom GitHub Actions workflow.

### Key Features
- **BibTeX Integration**: Reads `.bib` files to create formatted references.
- **Citation Styles**: Uses [Citation Style Language (CSL)](https://citationstyles.org/) to support hundreds of citation formats.
- **Liquid Tags**: Provides tags like `{% cite %}` and `{% bibliography %}` for easy embedding in Markdown or HTML.

## Note
Jekyll Scholar is a plugin which is need to be enabled via the configuration file _config.yml file under the root directory of a IG Publisher project. However, the IG Publisher only use the _config.yml automatically generated under the folder temp/pages which contains nothing but **kramdown**, the configuration content is below:
```yml
kramdown:
  toc_levels:    1..3
```
IG Publisher command line tool does not have a parameter accepting the location of Jekyll configuration file, it only supports the parameter -jekyll. To make sure the jekyll command will use the _config.yml under the root directory, a script is created for this purpose, [jekyll-run.sh](jekyll-run.sh). The configuration of for jekyll command under the root directory is [_config.yml](_config.yml), and the content of it is:
```yml
baseurl: "."
plugins:
  - jekyll-plantuml
  - jekyll-scholar
plantuml:
  plantuml_jar: "/opt/local/share/java/plantuml/plantuml.jar"
scholar:
  style: apa  #  APA style
  bibliography: references.bib  # default BibTeX file
kramdown:
  toc_levels: 1..3
```
