Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9851BB7A
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 May 2019 19:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tIcaegBfKoFfDl6uyyYVWMl8LizyMB2VwdAnmpAT74o=; b=B/8
	2ipSyX2b3VxruUDNLtUwn6hzQanewxN/9fdUeQKCqpqMYhtC7ko6FxeA1FUc40nfg8oKMHDcBiEPV
	b59Yww3+i6Xb2ckR6UKOb5saDGNz77EQNDp/bEQz0X2FYC0xr/t18+2yi5lUJHOCfZV2hOhVG+aeY
	KFrHN/EFXl4ncO+8j0XuCo5oR7ZU7KCwbDUUHk2pYBwClrQn1KTaQZ4+sy2u7srFHCxRvnswPvYDx
	CZetm/X51PhEp8i/NgVEwF0uyApfbTcAxiQA+SZinv8rg14+tJOa2j2kVt/ucD07AEOIxeAe1BIUM
	VV4IZOn9IDjaX+1BjFdfMlGnXwxZtzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQELP-00030B-RB; Mon, 13 May 2019 17:02:31 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQELI-0002yu-O5
 for openwrt-devel@lists.openwrt.org; Mon, 13 May 2019 17:02:26 +0000
Received: from jkletsky-mbp15.guidewire.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 0EEB52404E;
 Mon, 13 May 2019 10:01:52 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <3e56cf85-d668-01d7-3891-f0662ab73c1c@allycomm.com>
Date: Mon, 13 May 2019 10:01:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_100224_788248_A4D34617 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] [RFC] sysupgrade-tar: board_name in Image
 Generation vs. Run Time
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
Content-Type: multipart/mixed; boundary="===============3390789868379923526=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============3390789868379923526==
Content-Type: multipart/alternative;
 boundary="------------D66CF7F03ED6AA9C3B92D200"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D66CF7F03ED6AA9C3B92D200
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

TL;DR

What would be a workable plan to reconcile mfgr_specific-board-name
at image-generation time with mfgr,specific-board-name at run time?



With the apparent tree-wide changes in progress to canonicalize board
naming of TARGET_DEVICES to mfgr_specific-board-name, there becomes a
disconnect between the board name at image generation and run time.

This results in a "disconnect" between what is used in the tar file as
the directory name and CONTROL contents by `scripts/sysupgrade-tar.sh`

     mkdir -p "${tmpdir}/sysupgrade-${board}"
     echo "BOARD=${board}" > "${tmpdir}/sysupgrade-${board}/CONTROL"
     [ -z "${rootfs}" ] || cp "${rootfs}" "${tmpdir}/sysupgrade-${board}/root"
     [ -z "${kernel}" ] || cp "${kernel}" "${tmpdir}/sysupgrade-${board}/kernel"

where ${board} is, for example, `glinet_gl-ar750s-nand`

and what is checked (or should be checked) by nand_do_platform_check()
in `package/base-files/files/lib/upgrade/nand.sh`

     tar xf $tar_file sysupgrade-$board_name/CONTROL

where $(board_name) returns the comma-delimited form, `glinet,gl-ar750s-nand`
(The contents of CONTROL are not checked at this time, but would suffer
from the same mismatch issues.)

The metadata commonly attached to the sysupgrade bundle often uses
the run-time, comma-delimited form in "supported_devices", yet the
build-time, underscore-delimited form in "board".



At this time, there appear to be very few boards that actually call
nand_do_platform_check(). Many still have board names that don't
appear to be what I believe is canonical:

   * layerscape
   * pistachio
   * imx6
   * ar71xx

While most either explicitly set the board name in the call or have
comma-less board names, `sysupgrade-img,pistachio-marduk` makes a
global, `tr ',' '_'` an unacceptable work-around.



I can see a few paths forward on this, but don't have the project
history and insight to properly evaluate them.

Of the options out there that I've considered, transitioning
scripts/sysupgrade-tar to use the run-time, comma-delimited form that
is returned by $(board_name) seems the cleanest, at least to me.



I can work around this for now with a device-specific workaround, but
it seems to be something that should be considered going forward,
perhaps before v19 is "cut" to reduce future upgrade issues.


Jeff



--------------D66CF7F03ED6AA9C3B92D200
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre>TL;DR

What would be a workable plan to reconcile mfgr_specific-board-name
at image-generation time with mfgr,specific-board-name at run time?



With the apparent tree-wide changes in progress to canonicalize board
naming of TARGET_DEVICES to mfgr_specific-board-name, there becomes a
disconnect between the board name at image generation and run time.

This results in a "disconnect" between what is used in the tar file as
the directory name and CONTROL contents by `scripts/sysupgrade-tar.sh`

    mkdir -p "${tmpdir}/sysupgrade-${board}"
    echo "BOARD=${board}" &gt; "${tmpdir}/sysupgrade-${board}/CONTROL"
    [ -z "${rootfs}" ] || cp "${rootfs}" "${tmpdir}/sysupgrade-${board}/root"
    [ -z "${kernel}" ] || cp "${kernel}" "${tmpdir}/sysupgrade-${board}/kernel"

where ${board} is, for example, `glinet_gl-ar750s-nand`

and what is checked (or should be checked) by nand_do_platform_check()
in `package/base-files/files/lib/upgrade/nand.sh`

    tar xf $tar_file sysupgrade-$board_name/CONTROL

where $(board_name) returns the comma-delimited form, `glinet,gl-ar750s-nand`
(The contents of CONTROL are not checked at this time, but would suffer
from the same mismatch issues.)

The metadata commonly attached to the sysupgrade bundle often uses 
the run-time, comma-delimited form in "supported_devices", yet the
build-time, underscore-delimited form in "board".



At this time, there appear to be very few boards that actually call
nand_do_platform_check(). Many still have board names that don't
appear to be what I believe is canonical:

  * layerscape
  * pistachio
  * imx6
  * ar71xx

While most either explicitly set the board name in the call or have
comma-less board names, `sysupgrade-img,pistachio-marduk` makes a
global, `tr ',' '_'` an unacceptable work-around.



I can see a few paths forward on this, but don't have the project
history and insight to properly evaluate them.

Of the options out there that I've considered, transitioning
scripts/sysupgrade-tar to use the run-time, comma-delimited form that
is returned by $(board_name) seems the cleanest, at least to me.



I can work around this for now with a device-specific workaround, but
it seems to be something that should be considered going forward,
perhaps before v19 is "cut" to reduce future upgrade issues.


Jeff


</pre>
  </body>
</html>

--------------D66CF7F03ED6AA9C3B92D200--


--===============3390789868379923526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3390789868379923526==--

