<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/articles">
		<html>
			<body>
				<div class="wrapper">
					<div class="container">
						<div id="col-right">
							<xsl:for-each select="article">
								<div id="col-row">
									<h2>
										<xsl:value-of select="title" />
									</h2>
									<h3>
										<xsl:value-of select="startDate" />
										| By
										<a href="author_information.jsp?name={author}">
											<xsl:value-of select="author" />
											<img id="articleImage" src="images/articles/{articleImage}" />
										</a>
									</h3>
									<p>
										<xsl:value-of select="leadText" />
										...
										<a href="full_article.jsp?title={title}">Read More ></a>
										<ul class="tag">
											<li>
												<a href="#">
													<xsl:value-of select="category" />
												</a>
											</li>
										</ul>
										<!-- <xsl:value-of select="visibility" /> -->
										<xsl:value-of select="id" />
									</p>
								</div>
							</xsl:for-each>
						</div>
					</div>
				</div>
			</body>
		</html>

	</xsl:template>

</xsl:stylesheet>