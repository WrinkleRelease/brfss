This script was used to transform the LPCC Codebook HTML format provided by the CDC in to markdown.

Prior to running the script, I manually deleted the front matter containing the `CSS` and `<script>` information, eliminated all tables marked `systitleandfootercontainer` with a simple Find/Replace, cleaned up instances of `�` (Unicode replacement character), and converted all `&nbsp;` to spaces.

You'll need to install BeautifulSoup4 as the script imports it to parse the HTML.