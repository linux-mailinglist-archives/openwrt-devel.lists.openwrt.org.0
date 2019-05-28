Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3992CC0D
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 18:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ogL4UbDN+dYc0WpkWLyeV7wqhMtlb76Qsqq9kODfbAo=; b=b62
	UVkb6vDpXNX0ljQzfkrVOnkkOZI40Pp71OGuA2bYijK8+NnUavNhlfETrAUjNDx/2VUWXXx2bsVvy
	nBB/7QilZM3XubWKlq4o0DgODxKj1aEOlnMo0TsR7OwDPiMGYMR4ikVMT9CEN4otYhS+/aQjJPb+2
	KODGZk0uhKb/vcOBN9ST7TRfC6cGRNF5Ev5MnYjSRoNtZY+UY+udomrVHa+Ng5LdS6Ue/zDec/7U/
	7Gsvnd83KVDGppKsea9YlrDTwTaIDGPA7VtfSQr5S8WWDqSJHHxTsw9sQMXTYZscXxWWTTH4X8XMT
	CYHgHFOZjhLfBUVhE/wQGGnSSCPZwIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVf1i-0002OK-Hg; Tue, 28 May 2019 16:32:38 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVf1a-0002N1-GW
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 16:32:32 +0000
Received: from jkletsky-mbp15.guidewire.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 82F703EC36;
 Tue, 28 May 2019 09:32:22 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <4f2b99b8-0ee5-ed1e-4ffb-2aea0b8384d9@allycomm.com>
Date: Tue, 28 May 2019 09:32:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_093230_549107_923EF572 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] [RFC] Dual-Flash (NOR/NAND) Board Naming and Kernel
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
Content-Type: multipart/mixed; boundary="===============2754871059163400194=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============2754871059163400194==
Content-Type: multipart/alternative;
 boundary="------------6F455BE3C2227D862D2E823C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6F455BE3C2227D862D2E823C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

With the availability of the SPI-NAND framework in Linux 4.19 and
later it has become possible to support devices with SPI NAND on the
ath79 platform. The two devices I've been working on have both NOR and
NAND flash.

These devices can be built in multiple configurations and, with U-Boot
support, booted as:

   * Kernel NOR,  rootfs NOR
   * Kernel NOR,  rootfs NAND
   * Kernel NAND, rootfs NAND
   * Kernel NAND, rootfs NOR     (arguably "degenerate")

In the case of at least the GL.iNet AR300M, the choice booting a
NOR-resident kernel or a NAND-resident kernel can be made through
use of a switch on the device, or by use of U-Boot environment value.

Working with a dual-firmware Linksys device has convinced me of the
value of having two, independent firmware versions, especially when
one goes awry, either through misconfiguration or a bad build/flash.

This becomes even more valuable when the "other" firmware can be
mounted for read and potentially write access, as can be done with the
Linksys devices[1].

However, if a NOR-only kernel is booted, it is unable to access the
NAND flash, preventing this valuable feature.

The specific case that is driving naming is the AR750S. Its OEM
configuration is kernel on NOR and file system on NAND. As either
GL.iNet or another may provide an updated U-Boot that supports
direct boot from NAND (like the AR300M, or finds that it already does),
I'd like to "reserve" glinet,gl-ar750s-nand for a "full NAND" build
in the future.


The proposal here is that:

   (1) All NAND-bearing boards begin provide kernels that can
       read/write their NAND, as well as providing UBI support


   (2) Boards that have both NOR and NAND memory start to be named in such a
       manner to clearly identify the kernel and file-system locations,
       as well as to permit future implementations of `sysupgrade` to be
       able to "cross-grade" compatible images (NOR to/from NAND)



On (1), only building with a SPI-NAND kernel with UBI support, the
sizes of a "default" kernel for the ath79 platform for NOR and for
NAND (based on WIP on the AR750S[2]) are:

   * NOR only -- 1,618,231 bytes
   * SPI-NAND -- 1,803,792 bytes

for a net increase of 185,561 bytes by adding:

     FEATURES += nand

     CONFIG_MTD_NAND_CORE=y
     CONFIG_MTD_SPI_NAND=y
     CONFIG_MTD_UBI=y
     CONFIG_MTD_UBI_BLOCK=y

     CONFIG_UBIFS_FS=y
     CONFIG_UBIFS_FS_ADVANCED_COMPR=y
     CONFIG_UBIFS_FS_LZO=y
     CONFIG_UBIFS_FS_ZLIB=y


While a significant amount compared to 4 or 8 MB flash, NAND-bearing
devices seem unlikely to be in the "bottom of the barrel" for
resources, with 16 MB NOR being seen.  Even in the case where the
device uses NOR for the kernel with no intention of providing a file
system on NOR (such as the IPQ40xx-based EA6350), 4 MB of NOR should
be more than sufficient for a kernel for at least the next several
years (roughly double of current size, accounting for boot loader
and device-specific partitions).

This also means that if you have, for example, an AR300M which has
NAND, you would always "look" in the "Generic devices with NAND flash"
section for your device, then being presented, for example

   [...]
   GL.iNet AR300M (NAND)
   GL.iNet AR300M (NOR)
   [...]

or the like. As the kernel config and required packages would be the
same, it becomes straightforward to build and flash both to provide
the same basic functionality, even if the total storage were different.

The question of MTD-partition naming and associated auto-splitting
becomes "trivial" with a DTS-based kernel through the use of
node/property deletion and/or overrides in a handful of lines in
"flavor-specific" DTS files.



On (2), board (and DTS) naming, things are a bit murkier. At the
moment, there appear to be several forms:

   * legacy_name
   * mfgr,board-name
   * mfgr,board-name-nor
   * mfgr,board-name-nand



Leaving the migration of the legacy_name boards as a separate task,
I'd propose for boards going forward:

   * mfgr,board-name[-kernel[-rootfs]]

with the suffixes applied only as needed to disambiguate.


In more detail:

   * mfgr,board-name

         Single flash/kernel configuration possible due to *hardware* limitations
         (only NOR or NAND flash present)

   * mfgr,board-name-nor

         Kernel and file system both on NOR

   * mfgr,board-name-nand

         Kernel and file system both on NAND

   * mfgr,board-name-nor-nand

         Kernel on NOR, file system on NAND  (OEM U-Boot on AR750S always boots NOR)

   * mfgr,board-name-nand-nor (degenerate case, likely "never" offered)

         Kernel on NAND, file system on NOR


A similar naming approach would apply for the DTS files.



Thoughts? Suggestions?



Jeff


[1] <https://forum.openwrt.org/t/script-mount-alternate-nand-firmware-linksys/33588?u=jeff>

[2] <https://patchwork.ozlabs.org/patch/1099811/>


--------------6F455BE3C2227D862D2E823C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>With the availability of the SPI-NAND framework in Linux 4.19 and
later it has become possible to support devices with SPI NAND on the
ath79 platform. The two devices I've been working on have both NOR and
NAND flash.

These devices can be built in multiple configurations and, with U-Boot
support, booted as:

  * Kernel NOR,  rootfs NOR
  * Kernel NOR,  rootfs NAND
  * Kernel NAND, rootfs NAND
  * Kernel NAND, rootfs NOR     (arguably "degenerate")

In the case of at least the GL.iNet AR300M, the choice booting a 
NOR-resident kernel or a NAND-resident kernel can be made through 
use of a switch on the device, or by use of U-Boot environment value.

Working with a dual-firmware Linksys device has convinced me of the
value of having two, independent firmware versions, especially when
one goes awry, either through misconfiguration or a bad build/flash.

This becomes even more valuable when the "other" firmware can be
mounted for read and potentially write access, as can be done with the
Linksys devices[1].

However, if a NOR-only kernel is booted, it is unable to access the
NAND flash, preventing this valuable feature.

The specific case that is driving naming is the AR750S. Its OEM
configuration is kernel on NOR and file system on NAND. As either
GL.iNet or another may provide an updated U-Boot that supports 
direct boot from NAND (like the AR300M, or finds that it already does), 
I'd like to "reserve" glinet,gl-ar750s-nand for a "full NAND" build 
in the future.


The proposal here is that:

  (1) All NAND-bearing boards begin provide kernels that can 
      read/write their NAND, as well as providing UBI support


  (2) Boards that have both NOR and NAND memory start to be named in such a
      manner to clearly identify the kernel and file-system locations, 
      as well as to permit future implementations of `sysupgrade` to be
      able to "cross-grade" compatible images (NOR to/from NAND)



On (1), only building with a SPI-NAND kernel with UBI support, the
sizes of a "default" kernel for the ath79 platform for NOR and for
NAND (based on WIP on the AR750S[2]) are:

  * NOR only -- 1,618,231 bytes
  * SPI-NAND -- 1,803,792 bytes

for a net increase of 185,561 bytes by adding:

    FEATURES += nand

    CONFIG_MTD_NAND_CORE=y
    CONFIG_MTD_SPI_NAND=y
    CONFIG_MTD_UBI=y
    CONFIG_MTD_UBI_BLOCK=y

    CONFIG_UBIFS_FS=y
    CONFIG_UBIFS_FS_ADVANCED_COMPR=y
    CONFIG_UBIFS_FS_LZO=y
    CONFIG_UBIFS_FS_ZLIB=y


While a significant amount compared to 4 or 8 MB flash, NAND-bearing
devices seem unlikely to be in the "bottom of the barrel" for
resources, with 16 MB NOR being seen.  Even in the case where the
device uses NOR for the kernel with no intention of providing a file
system on NOR (such as the IPQ40xx-based EA6350), 4 MB of NOR should
be more than sufficient for a kernel for at least the next several
years (roughly double of current size, accounting for boot loader 
and device-specific partitions).

This also means that if you have, for example, an AR300M which has
NAND, you would always "look" in the "Generic devices with NAND flash"
section for your device, then being presented, for example

  [...]
  GL.iNet AR300M (NAND)
  GL.iNet AR300M (NOR)
  [...]

or the like. As the kernel config and required packages would be the
same, it becomes straightforward to build and flash both to provide
the same basic functionality, even if the total storage were different.

The question of MTD-partition naming and associated auto-splitting
becomes "trivial" with a DTS-based kernel through the use of 
node/property deletion and/or overrides in a handful of lines in 
"flavor-specific" DTS files.



On (2), board (and DTS) naming, things are a bit murkier. At the
moment, there appear to be several forms:

  * legacy_name
  * mfgr,board-name
  * mfgr,board-name-nor
  * mfgr,board-name-nand



Leaving the migration of the legacy_name boards as a separate task,
I'd propose for boards going forward:

  * mfgr,board-name[-kernel[-rootfs]]

with the suffixes applied only as needed to disambiguate.


In more detail:

  * mfgr,board-name

        Single flash/kernel configuration possible due to *hardware* limitations
        (only NOR or NAND flash present)

  * mfgr,board-name-nor

        Kernel and file system both on NOR

  * mfgr,board-name-nand

        Kernel and file system both on NAND

  * mfgr,board-name-nor-nand

        Kernel on NOR, file system on NAND  (OEM U-Boot on AR750S always boots NOR)

  * mfgr,board-name-nand-nor (degenerate case, likely "never" offered)

        Kernel on NAND, file system on NOR


A similar naming approach would apply for the DTS files.



Thoughts? Suggestions?



Jeff


[1] <a class="moz-txt-link-rfc2396E" href="https://forum.openwrt.org/t/script-mount-alternate-nand-firmware-linksys/33588?u=jeff">&lt;https://forum.openwrt.org/t/script-mount-alternate-nand-firmware-linksys/33588?u=jeff&gt;</a>

[2] <a class="moz-txt-link-rfc2396E" href="https://patchwork.ozlabs.org/patch/1099811/">&lt;https://patchwork.ozlabs.org/patch/1099811/&gt;</a>

</pre>
  </body>
</html>

--------------6F455BE3C2227D862D2E823C--


--===============2754871059163400194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2754871059163400194==--

