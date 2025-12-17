<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/proxy">
<html>
<head>
    <title><xsl:value-of select="title"/></title>
    <style>
        body { font-family: sans-serif; padding: 20px; background: #f9f9f9; }
        .box { background: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        input { width: 70%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
        button { padding: 10px 20px; background: #1583ca; color: white; border: none; border-radius: 5px; cursor: pointer; }
        iframe { width: 100%; height: 600px; margin-top: 20px; border: 1px solid #ddd; }
    </style>
    <script>
        function loadUrl() {
            var url = document.getElementById('u').value;
            if (!url.startsWith('http')) url = 'https://' + url;
            // Public proxy to help load restricted .com/.net/.gg domains
            document.getElementById('f').src = "api.allorigins.win" + encodeURIComponent(url);
        }
    </script>
</head>
<body>
    <div class="box">
        <h2><xsl:value-of select="title"/></h2>
        <input id="u" type="text" placeholder="Enter URL (e.g., discord.gg or google.com)" />
        <button onclick="loadUrl()">Load</button>
        <iframe id="f"></iframe>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
