Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D320186CA
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 10:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j+TF2pgww3K1Fvzohx85Hk9nAvZMT2Mn4H1Wxah3Dic=; b=Lbn
	JcgOCbLJdbRqHTTWCRkmr+OL/fqAbDXGbFrFfL4K+196xdGSyJJ6JZjPOqMqWFWmu//Jor10TBVBc
	2PZM8UY9b2DtJNhVDI8pxrkp5n6ILPjSGMXvpseJq1RIlcuCa0wSGfBy7AOSWaCnZl7Fw9r/8QiM0
	cNBgjan1GiG+je9Hovyiqr1EC4BOraeq3ojUhEAc6saQhiUl6S3Wp2jWZBLjvJVdFpCwcOVRwK7NP
	jSJ8p8ZfvPxDMvD23sJAshmfRiL1PruXnA3uokeFP3Itsc/ffzFV/rnmLrgtahIvG/M9vmtSGLhr8
	ChvV1DfB8NYDXPTDod3bGLTgVXCZC5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOeRO-0004uX-Hp; Thu, 09 May 2019 08:30:10 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeQu-0004oZ-JV
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 08:29:43 +0000
Received: from JKLETSKY-MBP15.local (188.29.164.140.threembb.co.uk
 [188.29.164.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 39E513D435;
 Thu,  9 May 2019 01:29:36 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
Date: Thu, 9 May 2019 10:29:31 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_012941_548941_A8EE9315 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set for
 subtarget
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
Content-Type: multipart/mixed; boundary="===============4509552519796500565=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============4509552519796500565==
Content-Type: multipart/alternative;
 boundary="------------64649D1CE837B6520A2BF557"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------64649D1CE837B6520A2BF557
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm having some challenges understanding why PCI_SUPPORT is being set
for the "generic" target, but not being set for the "nand" subtarget.
This seems to be the cause for the ath10k drivers not being available
in menuconfig.

While this has become an issue with the first port of an ath79 device
using the spinand framework backported to Linux 4.19, it can be seen
on `master` without any modifications.

All that follows is based on `master` as of

   commit 165d598521 (HEAD -> master, openwrt/master)
   Author: Hans Dedecker <reacted>
   Date:   Wed May 8 21:52:20 2019 +0200


To replicate:

* Check out `master`
* `make menuconfig`

* Select
   * Target System (Atheros ATH79 (DTS))
   * Subtarget (Generic)
   * Target Profile (GL.iNet GL-AR300M)
* Search (with /) for "mod-ath10k"
* Note that
   * PACKAGE_kmod-ath10k-ct is available for selection
   * It "Depends on: PCI_SUPPORT [=y] && ..."
* Exit from the search

* Change the selection to
   * Target System (Atheros ATH79 (DTS))
   * Subtarget (Generic devices with NAND flash)
   * Target Profile (GL.iNet GL-AR300M (NAND))
* Search (with /) for "mod-ath10k"
* Note that
   * PACKAGE_kmod-ath10k-ct is *not* available for selection
   * It "Depends on: PCI_SUPPORT [=n] && ..."

I don't see any differences between the generic and nand subtargets'
`config-default`, `target.mk`, or `image/*.mk` that seem related to
PCI_SUPPORT.

FEATURES don't seem to come into play at the target level

   target/linux/ath79$ fgrep -r FEATURES .
   ./Makefile:FEATURES:=ramdisk
   ./tiny/target.mk:FEATURES += squashfs small_flash
   ./nand/target.mk:FEATURES += squashfs nand rtc
   ./generic/target.mk:FEATURES += squashfs

I've tried adding FEATURES += pci with no apparent change in behavior.

I've tried to follow through `include/target.mk` and `scripts/kconfig.pl`
around LINUX_KCONFIG_LIST and LINUX_RECONFIG_LIST and it appears to me
that the "starting" config is generic, then platform, then subtarget,
(then local from ./env/, at least for compile). __config_name_list
suggests to me that `config-4.x` is processed before `config-default`
for each of these levels. It seems that this is a "last wins" process
for each specific config line.

Is my understanding of this process correct?

Can you provide any insight as how to resolve this specific problem
with PCI_SUPPORT?

Thanks,

Jeff





--------------64649D1CE837B6520A2BF557
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>I'm having some challenges understanding why PCI_SUPPORT is being set
for the "generic" target, but not being set for the "nand" subtarget.
This seems to be the cause for the ath10k drivers not being available
in menuconfig.

While this has become an issue with the first port of an ath79 device
using the spinand framework backported to Linux 4.19, it can be seen
on `master` without any modifications. 

All that follows is based on `master` as of

  commit 165d598521 (HEAD -&gt; master, openwrt/master)
  Author: Hans Dedecker &lt;reacted&gt;
  Date:   Wed May 8 21:52:20 2019 +0200


To replicate:

* Check out `master`
* `make menuconfig`

* Select
  * Target System (Atheros ATH79 (DTS))
  * Subtarget (Generic)
  * Target Profile (GL.iNet GL-AR300M)
* Search (with /) for "mod-ath10k"
* Note that
  * PACKAGE_kmod-ath10k-ct is available for selection
  * It "Depends on: PCI_SUPPORT [=y] &amp;&amp; ..."
* Exit from the search

* Change the selection to
  * Target System (Atheros ATH79 (DTS))
  * Subtarget (Generic devices with NAND flash)
  * Target Profile (GL.iNet GL-AR300M (NAND))
* Search (with /) for "mod-ath10k"
* Note that
  * PACKAGE_kmod-ath10k-ct is *not* available for selection
  * It "Depends on: PCI_SUPPORT [=n] &amp;&amp; ..."

I don't see any differences between the generic and nand subtargets'
`config-default`, `target.mk`, or `image/*.mk` that seem related to
PCI_SUPPORT.

FEATURES don't seem to come into play at the target level

  target/linux/ath79$ fgrep -r FEATURES .
  ./Makefile:FEATURES:=ramdisk
  ./tiny/target.mk:FEATURES += squashfs small_flash
  ./nand/target.mk:FEATURES += squashfs nand rtc
  ./generic/target.mk:FEATURES += squashfs

I've tried adding FEATURES += pci with no apparent change in behavior.

I've tried to follow through `include/target.mk` and `scripts/kconfig.pl`
around LINUX_KCONFIG_LIST and LINUX_RECONFIG_LIST and it appears to me
that the "starting" config is generic, then platform, then subtarget,
(then local from ./env/, at least for compile). __config_name_list
suggests to me that `config-4.x` is processed before `config-default`
for each of these levels. It seems that this is a "last wins" process
for each specific config line.

Is my understanding of this process correct?

Can you provide any insight as how to resolve this specific problem
with PCI_SUPPORT?

Thanks,

Jeff




</pre>
  </body>
</html>

--------------64649D1CE837B6520A2BF557--


--===============4509552519796500565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4509552519796500565==--

