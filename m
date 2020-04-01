Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB1919B5A0
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 20:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AvsRcuZdM2eUQAhNIvqlVg8KCSLxcRgPyOiu7gWptDU=; b=aOSU955E9gzLRRDpaTU6tzWQY
	fEmpbYBa+prUbTKHkUIpn/3ifQ112RN5sLSFJBZ/O/xCSCO51MIKdsHaDwr4ox8NcvAVB5V4SDUkx
	hCjEYqAuQpCv6bLwE+9V3UCzUDjWM1K3PZR12ht8s2lsU3yIdswpI78lCBI+MI3vtN5GQnoGIkgZJ
	INNX66zgS77ALg90MXhYGBNfn+tIYN8lzy8nLDbWk8XfZo8Bt4H5Ukmkl56DaAEpayFbw8Q2P2vbv
	QmKou31qy2OqM7Zjjm4E1GhO4FbSzxrkcs/s8o2itQojVYmRnM4qyniMozcfGQUYSZm9pAX7bN9Xu
	xB2wESDKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJiD5-000194-9E; Wed, 01 Apr 2020 18:35:31 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJiCx-00018O-40
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 18:35:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id 3308B6A73;
 Wed,  1 Apr 2020 21:35:20 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id t66dqc1K1dY5; Wed,  1 Apr 2020 21:35:19 +0300 (EEST)
Received: from [192.168.1.180] (87-100-206-162.bb.dnainternet.fi
 [87.100.206.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 343F4286;
 Wed,  1 Apr 2020 21:35:16 +0300 (EEST)
From: Hannu Nyman <hannu.nyman@iki.fi>
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 openwrt-devel@lists.openwrt.org
References: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
Message-ID: <3c189c56-97ab-2ee8-ad7f-1955ae9ea5b4@iki.fi>
Date: Wed, 1 Apr 2020 21:35:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_113523_493652_095B2D2E 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH v1 0/2] Moving to drop Out of tree cake
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4559889268036296669=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============4559889268036296669==
Content-Type: multipart/alternative;
 boundary="------------2A2B03517D96FB7EF8B68AAE"

This is a multi-part message in MIME format.
--------------2A2B03517D96FB7EF8B68AAE
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Kevin Darbyshire-Bryant kirjoitti 1.4.2020 klo 13.14:

> Cake has been in upstream linux from 4.19 onward yet openwrt still
> builds a module from out of tree source.  This patch set intends to drop
> the out of tree module for those versions of linux that contain an
> in-tree version + various backports of upstream enhancements.
>
> Unfortunately it's not as simple as just renaming a package and adding
> PROVIDES due to some issues with PROVIDES handling.  So the dependency
> handling has to be handled in the depending package.
>
> To be read in combination with:
> https://github.com/ldir-EDB0/packages/commit/1ec73d60da31c13b05c36d5fca2a062bc9bce071
>
I succeeded in having the correct dependencies (with also your SQM dependency 
change): in-tree cake for 4.19 in ipq806x and out-of-tree cake for 4.14 
ar71xx with the following change to your commits:

I added kmod-ipt-conntrack dependency to kmod-sched-cake-oot to avoid a 
"missing dependency" error at compilation

--- a/package/kernel/kmod-sched-cake-oot/Makefile
+++ b/package/kernel/kmod-sched-cake-oot/Makefile
@@ -26,7 +26,7 @@ define KernelPackage/sched-cake-oot
    URL:=https://github.com/dtaht/sch_cake
    FILES:=$(PKG_BUILD_DIR)/sch_cake.ko
    AUTOLOAD:=$(call AutoLoad,75,sch_cake)
-  DEPENDS:=@LINUX_4_14 +kmod-sched-core
+  DEPENDS:=@LINUX_4_14 +kmod-sched-core +kmod-ipt-conntrack
  endef
  
  include $(INCLUDE_DIR)/kernel-defaults.mk



That change enabled the compilation in ar71xx with 4.14.

Otherwise the changes look ok, and SQM picks up the correct cake variant 
based on target's kernel.


--------------2A2B03517D96FB7EF8B68AAE
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">
      <pre>Kevin Darbyshire-Bryant kirjoitti 1.4.2020 klo 13.14:</pre>
    </div>
    <blockquote type="cite"
      cite="mid:%3C20200401101423.8618-1-ldir@darbyshire-bryant.me.uk%3E">
      <pre class="moz-quote-pre" wrap="">Cake has been in upstream linux from 4.19 onward yet openwrt still
builds a module from out of tree source.  This patch set intends to drop
the out of tree module for those versions of linux that contain an
in-tree version + various backports of upstream enhancements.

Unfortunately it's not as simple as just renaming a package and adding
PROVIDES due to some issues with PROVIDES handling.  So the dependency
handling has to be handled in the depending package.

To be read in combination with:
<a class="moz-txt-link-freetext" href="https://github.com/ldir-EDB0/packages/commit/1ec73d60da31c13b05c36d5fca2a062bc9bce071">https://github.com/ldir-EDB0/packages/commit/1ec73d60da31c13b05c36d5fca2a062bc9bce071</a>

</pre>
    </blockquote>
    <p>I succeeded in having the correct dependencies (with also your
      SQM dependency change): in-tree cake for 4.19 in ipq806x and
      out-of-tree cake for 4.14 ar71xx with the following change to your
      commits:</p>
    <p>I added kmod-ipt-conntrack dependency to kmod-sched-cake-oot to
      avoid a "missing dependency" error at compilation  <br>
    </p>
    <pre>--- a/package/kernel/kmod-sched-cake-oot/Makefile
+++ b/package/kernel/kmod-sched-cake-oot/Makefile
@@ -26,7 +26,7 @@ define KernelPackage/sched-cake-oot
   URL:=<a class="moz-txt-link-freetext" href="https://github.com/dtaht/sch_cake">https://github.com/dtaht/sch_cake</a>
   FILES:=$(PKG_BUILD_DIR)/sch_cake.ko
   AUTOLOAD:=$(call AutoLoad,75,sch_cake)
-  DEPENDS:=@LINUX_4_14 +kmod-sched-core
+  DEPENDS:=@LINUX_4_14 +kmod-sched-core +kmod-ipt-conntrack
 endef
 
 include $(INCLUDE_DIR)/kernel-defaults.mk



</pre>
    <p>That change enabled the compilation in ar71xx with 4.14.<br>
      <br>
      Otherwise the changes look ok, and SQM picks up the correct cake
      variant based on target's kernel.<br>
    </p>
  </body>
</html>

--------------2A2B03517D96FB7EF8B68AAE--


--===============4559889268036296669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4559889268036296669==--

