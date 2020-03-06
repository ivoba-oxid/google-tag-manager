[{$smarty.block.parent}]
[{assign var="oConfig" value=$oViewConf->getConfig()}]
[{assign var="order" value=$oView->getOrder()}]
[{assign var="basket" value=$oView->getBasket()}]
<script>
  window.dataLayer = window.dataLayer || []
  dataLayer.push({
    [{if $oConfig->getConfigParam("ivoba_google_tag_manager_order_event")}]
    'event': '[{$oConfig->getConfigParam("ivoba_google_tag_manager_order_event")}]',
    [{/if}]
    'transactionId': '[{$order->oxorder__oxordernr->value}]',
    'transactionAffiliation': '[{$oxcmp_shop->oxshops__oxname->value}]',
    'transactionTotal': [{$order->oxorder__oxtotalordersum}],
    'transactionTax': [{$order->oxorder__oxartvatprice1}],
    'transactionShipping': [{$order->oxorder__oxdelcost}],
    'transactionProducts': [
      [{foreach key="_index" from=$basket->getContents() item="basketItem" name="transactionProducts"}]
              [{assign var=basketProduct value=$basketItem->getArticle()}]
              [{assign var=unitPrice value=$basketItem->getUnitPrice()}]
              [{assign var=category value=$basketProduct->getCategory()}]
      {
        'sku': '[{$basketProduct->oxarticles__oxartnum->value}]',
        'name': '[{$basketItem->getTitle()}]',
        'category': '[{$category->oxcategories__oxtitle->value}]',
        'price': [{$unitPrice->getBruttoPrice()}],
        'quantity': [{$basketItem->getAmount()}]
      },
      [{/foreach}]
    ]
  });
</script>
