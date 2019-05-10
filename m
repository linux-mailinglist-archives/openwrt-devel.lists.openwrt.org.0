Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16291A573
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 00:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HvUBuDN37P5eGvm6rgJBLm7M4b8X4NttDtzeRGZI1OA=; b=Fqru+zqoShILmwD6lKhYBoetA
	SBOi0kEIHrDNuzeDCGk6pfAd+At7jldUabsQwaZ9DKm4MyVAHbNox/9sePNenQ1TkaI1XBblcn2xs
	6ONevHzbfIRv58RS1PI8nMgebzNnOrMxHub/036F9AYyKRDIlTHeYqyxOup1h6ES34N6fC6lzVt0n
	MQxBViDknn+UIVqXfock4Nxm9qlftKgPBbVOs8QcT5bZFmmwOtdwalJY5/g+AtPOFsXRwpvMS05J9
	CrU6UDevQvLRth71608dMpn+SO0so1lO5anqV8dP8Cm9ndnBnCRzIFnFbmZB8clKtcl9gufxXfty5
	EFJK+ERdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPEMD-0001T9-R2; Fri, 10 May 2019 22:51:13 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPEM7-0001Sm-68
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 22:51:08 +0000
Received: from JKLETSKY-MBP15.local (unknown [213.86.87.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 95EB3431A7;
 Fri, 10 May 2019 15:50:33 -0700 (PDT)
To: Christian Lamparter <chunkeey@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190510135637.31204-1-lede@allycomm.com>
 <4040720.Q0NHDdjkrE@debian64>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <b0870e4d-44a4-7cb4-d1d7-6b07415c24a1@allycomm.com>
Date: Fri, 10 May 2019 23:50:31 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4040720.Q0NHDdjkrE@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_155107_232430_65DF1745 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] utils/spidev_test: Update to current
 source from upstream Linux
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
Content-Type: multipart/mixed; boundary="===============0619909334128738816=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0619909334128738816==
Content-Type: multipart/alternative;
 boundary="------------4DDA2FE9849C835AE56EBB37"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4DDA2FE9849C835AE56EBB37
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/10/19 11:18 PM, Christian Lamparter wrote:

> On Friday, May 10, 2019 3:56:37 PM CEST lede@allycomm.com wrote:
>> From: Jeff Kletsky <git-commits@allycomm.com>
>>
>> Incorporates multiple changes, including file-based input and output
>>
>>  From upstream commit:
>>
>>      commit 35386dfd13b7
>>      Author: Geert Uytterhoeven <geert+renesas@glider.be>
>>      Date:   Mon Sep 3 19:33:23 2018 +0200
>>
>> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
>> ---
> Hm, this got me thinking. Because we could also just do what the perf
> package does and built the spidev_test from the device's linux kernel
> source and ship it. This would also entail that we don't need to ship
> the spidev_test.c in package/utils/spidev_test/src anymore. What do you
> think?
>
> Cheers,
> Christian
>
> ---
> diff --git a/package/utils/spidev_test/Makefile b/package/utils/spidev_test/Makefile
> index b7c5227f91..29c6a90dc8 100644
> --- a/package/utils/spidev_test/Makefile
> +++ b/package/utils/spidev_test/Makefile
> @@ -10,13 +10,16 @@ include $(INCLUDE_DIR)/kernel.mk
>   
>   PKG_NAME:=spidev-test
>   PKG_RELEASE:=$(LINUX_VERSION)
> +PKG_FLAGS:=nonshared
> +PKG_BUILD_DIR:=$(LINUX_DIR)/tools/spi-$(TARGET_DIR_NAME)
> +PKG_BUILD_PARALLEL:=1
>   
>   include $(INCLUDE_DIR)/package.mk
>   
>   define Package/spidev-test
>     SECTION:=utils
>     CATEGORY:=Utilities
> -  DEPENDS:=+kmod-spi-dev
> +  DEPENDS:=+kmod-spi-dev @!IN_SDK
>     TITLE:=SPI testing utility
>     VERSION:=$(LINUX_VERSION)-$(PKG_RELEASE)
>     URL:=http://www.kernel.org
> @@ -27,9 +30,26 @@ define Package/spidev-test/description
>     SPI testing utility.
>   endef
>   
> +define Build/Prepare
> +	$(CP) $(LINUX_DIR)/tools/spi/* $(PKG_BUILD_DIR)/
> +endef
>
> [...]

Sounds great to me!

It's one of those packages that probably only a couple people a year
need, but when they need it, they really need it. The way you proposed
means that it is as current as the Linux version in hand without further
attention.

I was going to say that it would be a couple days until I was back home
and able to look into it and test as I'm on travel, but it looks like
you've already got things well in order. If you want to go ahead with
your patch, I think it's a much better approach.

Jeff


--------------4DDA2FE9849C835AE56EBB37
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>On 5/10/19 11:18 PM, Christian Lamparter wrote:
</pre>
    <blockquote type="cite" cite="mid:4040720.Q0NHDdjkrE@debian64">
      <pre class="moz-quote-pre" wrap="">On Friday, May 10, 2019 3:56:37 PM CEST <a class="moz-txt-link-abbreviated" href="mailto:lede@allycomm.com">lede@allycomm.com</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">From: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>

Incorporates multiple changes, including file-based input and output

From upstream commit:

    commit 35386dfd13b7
    Author: Geert Uytterhoeven <a class="moz-txt-link-rfc2396E" href="mailto:geert+renesas@glider.be">&lt;geert+renesas@glider.be&gt;</a>
    Date:   Mon Sep 3 19:33:23 2018 +0200

Signed-off-by: Jeff Kletsky <a class="moz-txt-link-rfc2396E" href="mailto:git-commits@allycomm.com">&lt;git-commits@allycomm.com&gt;</a>
---
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Hm, this got me thinking. Because we could also just do what the perf
package does and built the spidev_test from the device's linux kernel
source and ship it. This would also entail that we don't need to ship
the spidev_test.c in package/utils/spidev_test/src anymore. What do you
think?

Cheers,
Christian

---
diff --git a/package/utils/spidev_test/Makefile b/package/utils/spidev_test/Makefile
index b7c5227f91..29c6a90dc8 100644
--- a/package/utils/spidev_test/Makefile
+++ b/package/utils/spidev_test/Makefile
@@ -10,13 +10,16 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=spidev-test
 PKG_RELEASE:=$(LINUX_VERSION)
+PKG_FLAGS:=nonshared
+PKG_BUILD_DIR:=$(LINUX_DIR)/tools/spi-$(TARGET_DIR_NAME)
+PKG_BUILD_PARALLEL:=1
 
 include $(INCLUDE_DIR)/package.mk
 
 define Package/spidev-test
   SECTION:=utils
   CATEGORY:=Utilities
-  DEPENDS:=+kmod-spi-dev
+  DEPENDS:=+kmod-spi-dev @!IN_SDK
   TITLE:=SPI testing utility
   VERSION:=$(LINUX_VERSION)-$(PKG_RELEASE)
   URL:=<a class="moz-txt-link-freetext" href="http://www.kernel.org">http://www.kernel.org</a>
@@ -27,9 +30,26 @@ define Package/spidev-test/description
   SPI testing utility.
 endef
 
+define Build/Prepare
+	$(CP) $(LINUX_DIR)/tools/spi/* $(PKG_BUILD_DIR)/
+endef

[...]
</pre>
    </blockquote>
    <pre>Sounds great to me!

It's one of those packages that probably only a couple people a year
need, but when they need it, they really need it. The way you proposed
means that it is as current as the Linux version in hand without further
attention.

I was going to say that it would be a couple days until I was back home
and able to look into it and test as I'm on travel, but it looks like 
you've already got things well in order. If you want to go ahead with 
your patch, I think it's a much better approach.

Jeff

</pre>
  </body>
</html>

--------------4DDA2FE9849C835AE56EBB37--


--===============0619909334128738816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0619909334128738816==--

