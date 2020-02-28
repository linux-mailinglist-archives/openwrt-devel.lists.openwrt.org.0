Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A8A174146
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 22:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IbKbLCOkeuJO9s8FpmJcoL3Qvzcn4U1BpBZsDUAWvCY=; b=I4OSmWhPRejV+AVHzQBqiBQRft
	uXaI36+lLqCpnS1isEptk2Fp8u5UjejxT6cr9K1MkTnlyCAG+nWbbkoHN1s9DCmbYPXBo6ehFA8b5
	JdfWPfslyYrXLopUeJinSHXMzaMMn3b/IGpfFAce9UShnmUrfL0kr/h69neLfFxytzSwmDFNgLfYY
	fcTcQ8+PQxnbghHg2Kub8wmf9qBRv/rqoytOtgHdLU9KjHbJDPLwNkUdzEmxvaH5VZCg/twBjVU3j
	VzhRSgrUStNUXtvqtJ05BQLkox4NCzmlPRa2LEY4qlqibEBSnlGK3c+v9DSC/LMIm0rjEO19pxl6A
	xBaHc1rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mqF-0005ry-2Y; Fri, 28 Feb 2020 21:06:39 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mq7-0005rY-Eh
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 21:06:33 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E4E2B4D21;
 Fri, 28 Feb 2020 22:06:27 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8d190416;
 Fri, 28 Feb 2020 22:06:14 +0100 (CET)
Date: Fri, 28 Feb 2020 22:06:14 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200228210614.GD2524@meh.true.cz>
References: <1582918436-20954-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582918436-20954-1-git-send-email-tharvey@gateworks.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_130631_637711_C7581F08 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: backport lsm9ds1 imu support for
 GW553x
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Tim,

commit description is nice (and required), can you add it next time? No need
for v2, I'll add something myself to all your patches this time.

BTW it's quite helpful to include the upstream kernel version used for the
backport and include it in the patch filename, for example:

 005-v5.7-ARM-dts-imx6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch

Cheers,

Petr

> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  ...6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch | 73 ++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 target/linux/imx6/patches-5.4/005-ARM-dts-imx6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch

...

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
