[{assign var="oConfig" value=$oViewConf->getConfig()}]
<noscript>
    <iframe src="//www.googletagmanager.com/ns.html?id=[{ $oConfig->getConfigParam("ivoba_google_tag_manager_id") }]" height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
{$smarty.block.parent}]
