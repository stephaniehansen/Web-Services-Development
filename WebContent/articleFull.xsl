<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/articles">
		<html>
			<head />
			<body>
				<div class="wrapper">
					<div class="container">
						<div id="col-right">
							<xsl:for-each select="article">
								<div id="breadcrumbs">
									<a href="index.jsp">Home</a>
									>
									<xsl:value-of select="title" />
								</div>
								<h1>
									<xsl:value-of select="title" />
								</h1>
								<p>
									<xsl:attribute name="articleImage" />
									<img id="fullArticleImage" src="images/articles/{articleImage}" />
									<h3>
										<xsl:value-of select="startDate" />
										| By
										<a href="author_information.jsp?name={author}">
											<xsl:value-of select="author" />
										</a>
									</h3>
								</p>
								<p>
									<xsl:value-of select="fullText" />
								</p>
								<ul class="tag">
									<li>
										<a href="#">
											<xsl:value-of select="category" />
										</a>
									</li>
								</ul>
								<xsl:value-of select="visibility" />
								<xsl:value-of select="id" />
							</xsl:for-each>
						</div>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>