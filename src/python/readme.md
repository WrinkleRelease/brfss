# About

These scripts were written to help prepare and transform the BRFSS datasets into a Postgre db.

`llcp_html_to_md.py` transformed the LPCC Codebook HTML format provided by the CDC in to markdown, but not without some manual manipulation first.

Prior to running the script, I deleted the front matter containing the `CSS` and `<script>` information, eliminated all tables marked `systitleandfootercontainer` with a simple Find/Replace, cleaned up instances of `�` (Unicode replacement character), and converted all `&nbsp;` to spaces.

You'll need to install BeautifulSoup4 to use `llcp_html_to_md.py`.