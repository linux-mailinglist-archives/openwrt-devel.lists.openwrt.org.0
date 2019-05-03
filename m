Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4398012C11
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 13:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0uQhON3vO1IuEwY/7x6EPGwPYxNW7e0wdxgxM7dA+tw=; b=LIm1K/JkjauoL/7ApdmwC8Rm6
	/GCnXbLP8dfWNntPKDCk5Tt04ySuQXtpuljmtgt2/bddRAFVxEqbE256dZBOzcsKpwWmRxYWHlax2
	xqhcfZGkjjfoB/SP8ZY+/udbGn3S+03VQduE3Q+lwHb2SNLMmzrpqbc0+xwfvUvYEdK3g9Emf6sVj
	BJkr/TjNOwbdalJ9RVLhA8DljYTQQtB2XT/0nxqXe2I6u0F27PNxObl0/2p63UTcQkalfypRFXZyZ
	6bbMx9LWcdX6UdrR3o7S/ATATLZe7MqCDjJVbyt4sekMsA6sEQSMrzZZK+dH3TMVa+dzu9w5NILce
	IRBjxYS9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMW6k-0002ZE-UT; Fri, 03 May 2019 11:12:02 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMW6f-0002Yo-8v
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 11:11:59 +0000
Received: from JKLETSKY-MBP15.local (unknown [213.86.87.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id C17E53967E;
 Fri,  3 May 2019 04:11:49 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <8657fdac-f013-7025-e5f1-634665246af8@wagsky.com>
 <20190503101917.GH346@meh.true.cz>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <62b2ed25-699b-7127-2de9-f6194c43704e@allycomm.com>
Date: Fri, 3 May 2019 12:11:48 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503101917.GH346@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_041157_322187_ADC1C073 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: glinet_gl-ar750s: Use QCA9887
 firmware
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7763120315910742138=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7763120315910742138==
Content-Type: multipart/alternative;
 boundary="------------E38AFF7DE1D14327E8A7A233"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E38AFF7DE1D14327E8A7A233
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/3/19 11:19 AM, Petr Štetiar wrote:

> Jeff Kletsky <lede@allycomm.com> [2019-04-20 18:33:10]:
>
>> This patch corrects the firmware selection for the ath79 AR750S
>>
>> The ar71xx AR750S already uses the QCA9887 firmware.
>>
>> $ fgrep -A 3 Device/gl-ar750s target/linux/ar71xx/image/generic.mk
>> define Device/gl-ar750s
>>    DEVICE_TITLE := GL.iNet GL-AR750S
>>    DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb-core \
>> 	kmod-usb2 kmod-usb-storage
>>
>>
>> Jeff
>>
>>
>>
>>  From cb6e411f8d172a8dde5ca7e075cef67994ac0062 Mon Sep 17 00:00:00 2001
>> From: Jeff Kletsky <git-commits@allycomm.com>
>> Date: Sun, 27 Jan 2019 20:17:16 -0800
>> Subject: [PATCH] ath79: glinet_gl-ar750s: Use QCA9887 firmware
>>
>> The GL.iNet AR750S is based around the QCA9563
>> and uses the QCA9887 firmware for operation.
>>
>> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
>> ---
>>   target/linux/ath79/image/generic.mk | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
>> index 8588e7cdf6..8e162e1d0e 100644
>> --- a/target/linux/ath79/image/generic.mk
>> +++ b/target/linux/ath79/image/generic.mk
>> @@ -363,7 +363,7 @@ TARGET_DEVICES += glinet_gl-ar300m-nor
>>   define Device/glinet_gl-ar750s
>>     ATH_SOC := qca9563
>>     DEVICE_TITLE := GL.iNet GL-AR750S
>> -  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
>> +  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
>>     IMAGE_SIZE := 16000k
>>     SUPPORTED_DEVICES += gl-ar750s
>>   endef
>> -- 
>> 2.11.0
> something probably went wrong with this patch:
>
>   ../maintainer-tools/patchwork-apply.sh 1088433
>   Saved patch to OpenWrt-Devel-ath79-glinet_gl-ar750s-Use-QCA9887-firmware
>   Patch is empty.  Was it split wrong?
>   If you would prefer to skip this patch, instead run "git am --skip".
>   To restore the original branch and stop patching run "git am --abort".
>   Failed to apply patch 1088433
>
> -- ynezz
>
That's strange -- perhaps another patch updated it?

jeff@deb-devel:~/devel/openwrt$ git pull
Already up-to-date.

jeff@deb-devel:~/devel/openwrt$ git log -1 --pretty=oneline
2c3dd70741 (HEAD -> master, openwrt/master, openwrt/HEAD) procd: add procd_running() helper for checking running state

jeff@deb-devel:~/devel/openwrt$ fgrep -iA6 ar750s target/linux/ath79/image/generic.mk
define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
   DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += gl-ar750s
endef
TARGET_DEVICES += glinet_gl-ar750s

jeff@deb-devel:~/devel/openwrt$ git remote -v show openwrt
* remote openwrt
   Fetch URL: https://git.openwrt.org/openwrt/openwrt.git


Jeff


--------------E38AFF7DE1D14327E8A7A233
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>On 5/3/19 11:19 AM, Petr Štetiar wrote:
</pre>
    <blockquote type="cite" cite="mid:20190503101917.GH346@meh.true.cz">
      <pre class="moz-quote-pre" wrap="">Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:lede@allycomm.com">&lt;lede@allycomm.com&gt;</a> [2019-04-20 18:33:10]:

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">This patch corrects the firmware selection for the ath79 AR750S

The ar71xx AR750S already uses the QCA9887 firmware.

$ fgrep -A 3 Device/gl-ar750s target/linux/ar71xx/image/generic.mk
define Device/gl-ar750s
  DEVICE_TITLE := GL.iNet GL-AR750S
  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb-core \
	kmod-usb2 kmod-usb-storage


Jeff



From cb6e411f8d172a8dde5ca7e075cef67994ac0062 Mon Sep 17 00:00:00 2001
From: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>
Date: Sun, 27 Jan 2019 20:17:16 -0800
Subject: [PATCH] ath79: glinet_gl-ar750s: Use QCA9887 firmware

The GL.iNet AR750S is based around the QCA9563
and uses the QCA9887 firmware for operation.

Signed-off-by: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>
---
 target/linux/ath79/image/generic.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 8588e7cdf6..8e162e1d0e 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -363,7 +363,7 @@ TARGET_DEVICES += glinet_gl-ar300m-nor
 define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
-  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += gl-ar750s
 endef
-- 
2.11.0
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
something probably went wrong with this patch:

 ../maintainer-tools/patchwork-apply.sh 1088433
 Saved patch to OpenWrt-Devel-ath79-glinet_gl-ar750s-Use-QCA9887-firmware
 Patch is empty.  Was it split wrong?
 If you would prefer to skip this patch, instead run "git am --skip".
 To restore the original branch and stop patching run "git am --abort".
 Failed to apply patch 1088433

-- ynezz

</pre>
    </blockquote>
    <pre>That's strange -- perhaps another patch updated it?</pre>
    <pre>jeff@deb-devel:~/devel/openwrt$ git pull
Already up-to-date.

jeff@deb-devel:~/devel/openwrt$ git log -1 --pretty=oneline 
2c3dd70741 (HEAD -&gt; master, openwrt/master, openwrt/HEAD) procd: add procd_running() helper for checking running state

jeff@deb-devel:~/devel/openwrt$ fgrep -iA6 ar750s target/linux/ath79/image/generic.mk 
define Device/glinet_gl-ar750s
  ATH_SOC := qca9563
  DEVICE_TITLE := GL.iNet GL-AR750S
  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct
  IMAGE_SIZE := 16000k
  SUPPORTED_DEVICES += gl-ar750s
endef
TARGET_DEVICES += glinet_gl-ar750s

jeff@deb-devel:~/devel/openwrt$ git remote -v show openwrt
* remote openwrt
  Fetch URL: <a class="moz-txt-link-freetext" href="https://git.openwrt.org/openwrt/openwrt.git">https://git.openwrt.org/openwrt/openwrt.git</a>


Jeff

</pre>
  </body>
</html>

--------------E38AFF7DE1D14327E8A7A233--


--===============7763120315910742138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7763120315910742138==--

