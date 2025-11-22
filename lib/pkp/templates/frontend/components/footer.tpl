{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *
 * @hook Templates::Common::Sidebar []
 * @hook Templates::Common::Footer::PageFooter []
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div class="pkp_structure_footer_wrapper" role="contentinfo">
	<a id="pkp_content_footer"></a>

	<div class="pkp_structure_footer">

		{if $pageFooter}
			<div class="pkp_footer_content">
				{$pageFooter}
			</div>
		{/if}

		<div class="pkp_brand_footer">
			<div class="pkp_brand_footer_content">
				{* Social Media Icons - Custom Footer Implementation *}
				<div class="social-media-icons">
					<a href="https://facebook.com" title="Facebook" target="_blank" rel="noopener noreferrer" class="social-facebook">
						<span class="fa fa-facebook" aria-hidden="true"></span>
					</a>
					<a href="https://twitter.com" title="Twitter" target="_blank" rel="noopener noreferrer" class="social-twitter">
						<span class="fa fa-twitter" aria-hidden="true"></span>
					</a>
					<a href="https://linkedin.com/company" title="LinkedIn" target="_blank" rel="noopener noreferrer" class="social-linkedin">
						<span class="fa fa-linkedin" aria-hidden="true"></span>
					</a>
					<a href="https://instagram.com" title="Instagram" target="_blank" rel="noopener noreferrer" class="social-instagram">
						<span class="fa fa-instagram" aria-hidden="true"></span>
					</a>
					<a href="https://youtube.com" title="YouTube" target="_blank" rel="noopener noreferrer" class="social-youtube">
						<span class="fa fa-youtube-play" aria-hidden="true"></span>
					</a>
				</div>

				<a href="{url page="about" op="aboutThisPublishingSystem"}">
					<img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}">
				</a>
			</div>
		</div>
	</div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
