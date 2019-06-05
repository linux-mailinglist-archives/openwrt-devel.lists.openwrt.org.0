Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348C036491
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 21:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oTOLx7SsRiEwZkWv79EEWQ7wlMyQ8XJD49jMlBazuYo=; b=bo/OR5+70jRje/8929OVhg+EG
	gUf1VATXVGvKSsQY6zm1m02Qi8dzhEBQkMju2Q9lsgSZus0V0pK2jqxyOmKN3mCPhLx46COFm9Fon
	jLrhmOs3BIEvidWFckXDIx84LWIFBbR5jm2JlgS/EVn5lxWpUe3Ckz//Lceefydbn8Z0aw+xqRm9l
	XrcjmKiOcnOXg8c0bM4myITJqDSaKBEC1W1/DHmuBS9lD/a/Zfch/qUHa/qVD8Hy4CXEiZA4+MH0o
	9kuRR2b0+FfCSJkLD25O75IL6TSgMZO3NQwqZ1FXSTbTUv0oxZXiMEV1r1YPlRKOuHElBsdfJnj0O
	BRwgviVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbTc-0004RM-0u; Wed, 05 Jun 2019 19:21:36 +0000
Received: from smtp-out-so.shaw.ca ([64.59.136.137])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbTU-0004Qv-UG
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 19:21:30 +0000
Received: from [192.168.120.100] ([104.129.18.7]) by shaw.ca with ESMTPA
 id YbTNhvJXlGusjYbTRhfnUT; Wed, 05 Jun 2019 13:21:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shaw.ca;
 s=s20180605; t=1559762485;
 bh=xga4Zt40C/77wdIo7ko3i9tnkhYU3t6EJ+R5FwzHMSo=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=LmgluHPh5+4BpGbD6ZA53ng6JuPvwwSJG+whzr5MlH7JA/N7WyZmgx2dU5qKmADFU
 FEHccNBqlUfwYJpw5KZXFHBUdNgBwgIKoqAGvY5D5BSuUFnJ4AQzpaLgNYQ5kYWw6d
 OLesW13cz5dHemAqju3NJLV9wo5NUE1vQOgYfVs9ffhA0eajlgMyMHRx7vcyZhl9EB
 MdUGsxZQP2GtS5ibT1BT7t+jzvsbhWkoEB9OHCh7MRVr/OrbE20baGItoXEom1wdcf
 239IYaFX5ZNFdWMEl01VigdY8uFAEwuCCYkry24H2kcZZ7VoTiUVRn0SNB55r6VX6s
 h9rAYvHCj2I2w==
X-Authority-Analysis: v=2.3 cv=fOdHIqSe c=1 sm=1 tr=0
 a=Bgo42vMeEbSibDPBEyw4oA==:117 a=Bgo42vMeEbSibDPBEyw4oA==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=r77TgQKjGQsHNAKrUKIA:9 a=jdP34snFAAAA:8
 a=XT_YGBXsNtQGTetirasA:9 a=QEXdDO2ut3YA:10 a=IM1BDPOpAAAA:8
 a=RPHX7RrVtH4Jw0-xi_QA:9 a=11BSWBsZ1i23WDfC:21 a=_W_S_7VecoQA:10
 a=jlphF6vWLdwq7oh3TaWq:22 a=siJ5BUxqvLcLn6gPV0Ge:22
To: openwrt-devel@lists.openwrt.org
References: <64c3f723-428e-df41-1186-d03477959544@shaw.ca>
 <facf0acf-63ac-37ab-ac22-83decbea6234@wwsnet.net>
From: Kabuli Chana <anome@shaw.ca>
Message-ID: <5f983fcb-7977-f923-f2a5-265bbd397697@shaw.ca>
Date: Wed, 5 Jun 2019 13:21:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <facf0acf-63ac-37ab-ac22-83decbea6234@wwsnet.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNr6NoqILHKZq+RULRwF73lY1KgUDDiCb4jslupxjOtv4fp/TB+RFh9++lRlgQ89LtsCQCL62KKV57x3rXd7jR0mhXQ38bTXU74bj5LYnrVEk47wuucH
 QpbSraa6QXCBpLcaQpUt+0iP1LOHBRiof3QYJ9c5+ZZOYjKzeAXBAFtTl1bpWLGYekmGWgWWLQtPZg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_122129_018790_56C3C5B2 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.59.136.137 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] lua bug introduction
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2504595237009553924=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============2504595237009553924==
Content-Type: multipart/alternative;
 boundary="------------EEFDEBFDD986E510FE5F3A1D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EEFDEBFDD986E510FE5F3A1D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Through LuCI, stopping / disabling rngd, as I am also testing the urngd 
change. Did not happen on an image generated yesterday.

On 2019-06-05 1:16 p.m., Jo-Philipp Wich wrote:
> Hi,
>
>> Something has started zeroing out /etc/rc.local contents, maybe:
>>
>> https://git.openwrt.org/?p=project/luci.git;a=commit;h=1c09ee5e42550d6339bffa58d4cba3461948e19c
> Does it zero out itself or when using LuCI? The commit above will
> touch rc.local when LuCI is not used.
>
> ~ Jo
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------EEFDEBFDD986E510FE5F3A1D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Through LuCI, stopping / disabling rngd, as I am also testing the
      urngd change. Did not happen on an image generated yesterday.<br>
    </p>
    <div class="moz-cite-prefix">On 2019-06-05 1:16 p.m., Jo-Philipp
      Wich wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:facf0acf-63ac-37ab-ac22-83decbea6234@wwsnet.net">
      <pre class="moz-quote-pre" wrap="">Hi,

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Something has started zeroing out /etc/rc.local contents, maybe:

<a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=project/luci.git;a=commit;h=1c09ee5e42550d6339bffa58d4cba3461948e19c">https://git.openwrt.org/?p=project/luci.git;a=commit;h=1c09ee5e42550d6339bffa58d4cba3461948e19c</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Does it zero out itself or when using LuCI? The commit above will
touch rc.local when LuCI is not used.

~ Jo

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------EEFDEBFDD986E510FE5F3A1D--


--===============2504595237009553924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2504595237009553924==--

