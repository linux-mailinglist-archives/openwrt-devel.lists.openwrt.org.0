Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F4822899
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 May 2019 21:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XEQai2MYXqN98O6wOUfi3ydjtAavgvCX/4+33McDmQ0=; b=lcL
	8VRhDIv+YZxXiWp0mHmEmmjfvojuvbvwK1e8N2NNTaWs4oCYsLAtOLgMBuT1JeytSiKndXKEpk+w0
	2G1i0gXaad0hvtfOVJIx9GbEwFJTGJPZ7hjJqWA9gKKKjTaQKfG0HpIu2q1kIPvx9gkUJ5tWe8yGD
	1dP7nQccL+qirtOJ/fjn66Lqq8IRyzXOFi3K9tPMepMX1cV+h65wMvencJ45X/vnv8dXKlm91hZUi
	C2bkKKAuHMXCdJ1qOZS+BYTZjJP+c6BnaCwHzIYc03FC/weU8cjfXCDoKK4UIp5qsdg+3jCmcOK0i
	5Utg9pCVZ5w3drPWYNoXFLhAfX0Uvjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSRjQ-0005dN-GZ; Sun, 19 May 2019 19:44:28 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSRjJ-0005cr-64
 for openwrt-devel@lists.openwrt.org; Sun, 19 May 2019 19:44:23 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 9E5D438DF7;
 Sun, 19 May 2019 12:44:18 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org, "Marty E. Plummer"
 <hanetzer@startmail.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <2f67e4e7-34bc-bed4-a682-870b534f2ce9@allycomm.com>
Date: Sun, 19 May 2019 12:44:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_124421_230441_EE4CDD91 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] [RFC] ath79: Removal of GL.iNet AR300M NAND Target
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============5698393340706809363=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============5698393340706809363==
Content-Type: multipart/alternative;
 boundary="------------C36D0407F7FA66E0707C6656"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C36D0407F7FA66E0707C6656
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm in the process of porting the AR750S to the ath79 target with
SPI-NAND support now available on Linux 4.19[1].

 From what I can tell, the AR300M (NAND) target, while it builds,
does not provide a functional image with either Linux 4.14 or 4.19
as there has not been and is not yet an applicable SPI-NAND driver
built by OpenWrt[2].

While the ar71xx target had various patches to provide an SPI-attached
NAND driver, at least as I understand it, these were rejected for the
ath79 target in favor of the upstream SPI-NAND framework that would
become available[2,3].

While there is support for the GigaDevice E-series SPI NAND already
backported to OpenWrt under Linux 4.19[4] and I have submitted patches to
support the F-series chips upstream[5], I have been told that some of the
AR300M units also shipped with Paragon SPI NAND[6], for which there is no
upstream driver support at this time.



As there is no bootable image produced, I would like to remove
the AR300M (NAND) target from the ath79 tree at this time. The AR300M
would remain on the ath79 generic (NOR) target.

The intention is that the AR300M (NAND) would be reinstated once
proper driver support is available.



======================
If you have objections to this course of action, please let me know.
======================



Also, if you have an AR300M with the Paragon SPI NAND that you would
be able to assist me in testing development of an upstream-supported
driver, please also let me know.

 From looking at the GL.iNet source[7], I would expect to see `dmesg` on
an OEM or image built from their sources to display a line containing

     spi-nand: Paragon SPI NAND was found.

These are probably older-production units.



Jeff


---

[1] http://patchwork.ozlabs.org/project/openwrt/list/?series=107880

[2] http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015604.html
     http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015606.html

[3] https://github.com/openwrt/openwrt/pull/1428#issuecomment-441594401

[4] 3bc8ed91d4 generic-4.19: Backport spi-nand support for GigaDevice A/E

[5] http://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874

[6] http://www.xtxtech.com/upfile/2016082517274590.pdf

[7] <https://github.com/gl-inet/openwrt/blob/develop/target/linux/ar71xx/patches-4.9/491-mtd-spi-nand-driver.patch#L2678>


--------------C36D0407F7FA66E0707C6656
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>I'm in the process of porting the AR750S to the ath79 target with
SPI-NAND support now available on Linux 4.19[1].

From what I can tell, the AR300M (NAND) target, while it builds, 
does not provide a functional image with either Linux 4.14 or 4.19 
as there has not been and is not yet an applicable SPI-NAND driver 
built by OpenWrt[2].

While the ar71xx target had various patches to provide an SPI-attached
NAND driver, at least as I understand it, these were rejected for the
ath79 target in favor of the upstream SPI-NAND framework that would
become available[2,3].

While there is support for the GigaDevice E-series SPI NAND already
backported to OpenWrt under Linux 4.19[4] and I have submitted patches to
support the F-series chips upstream[5], I have been told that some of the
AR300M units also shipped with Paragon SPI NAND[6], for which there is no
upstream driver support at this time.



As there is no bootable image produced, I would like to remove
the AR300M (NAND) target from the ath79 tree at this time. The AR300M
would remain on the ath79 generic (NOR) target.

The intention is that the AR300M (NAND) would be reinstated once
proper driver support is available.



======================
If you have objections to this course of action, please let me know.
======================



Also, if you have an AR300M with the Paragon SPI NAND that you would
be able to assist me in testing development of an upstream-supported
driver, please also let me know. 

From looking at the GL.iNet source[7], I would expect to see `dmesg` on
an OEM or image built from their sources to display a line containing

    spi-nand: Paragon SPI NAND was found.

These are probably older-production units. 



Jeff


---

[1] <a class="moz-txt-link-freetext" href="http://patchwork.ozlabs.org/project/openwrt/list/?series=107880">http://patchwork.ozlabs.org/project/openwrt/list/?series=107880</a>

[2] <a class="moz-txt-link-freetext" href="http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015604.html">http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015604.html</a>
    <a class="moz-txt-link-freetext" href="http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015606.html">http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015606.html</a>

[3] <a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/pull/1428#issuecomment-441594401">https://github.com/openwrt/openwrt/pull/1428#issuecomment-441594401</a>

[4] 3bc8ed91d4 generic-4.19: Backport spi-nand support for GigaDevice A/E

[5] <a class="moz-txt-link-freetext" href="http://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874">http://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874</a>

[6] <a class="moz-txt-link-freetext" href="http://www.xtxtech.com/upfile/2016082517274590.pdf">http://www.xtxtech.com/upfile/2016082517274590.pdf</a>

[7] <a class="moz-txt-link-rfc2396E" href="https://github.com/gl-inet/openwrt/blob/develop/target/linux/ar71xx/patches-4.9/491-mtd-spi-nand-driver.patch#L2678">&lt;https://github.com/gl-inet/openwrt/blob/develop/target/linux/ar71xx/patches-4.9/491-mtd-spi-nand-driver.patch#L2678&gt;</a>

</pre>
  </body>
</html>

--------------C36D0407F7FA66E0707C6656--


--===============5698393340706809363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5698393340706809363==--

