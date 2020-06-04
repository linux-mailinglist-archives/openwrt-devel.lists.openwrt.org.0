Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCCA1EDEF1
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 09:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aNpUtCvQZKDomR+BatgK+JJVlrHRyRQhFN/doId6zTM=; b=ryv/JsLELA5tMu
	DbKrmqxgB8a3LGNuzAf+7r24NtoRZW6HoCDlJBJxMMQGZKz0cgmSW9UtZmIoBCqvFhHwnPtuGKVqS
	Oe7lxXWeKbRevGppCXpVk7tHrMbLq8TxxK00NwF0AlXmtQW3rCv3H+VhDeYKHhGNUEiAUw5Qgy6Z1
	HNUlYfMU+oqqXJnEg8BgieLWyGo+XTXpe8TzeHShT2ivdL4mgDqS0RgU95CCzD00dub9qqq7oGjWZ
	vcGqu9A+GauNQm1D1OTFJpF+vIlIJRx0h2lms8uCrdxSPEUAcjCKjHIa24bm9fStKZgCHdShk7kaM
	2Gi4g2QyP9m6w/pWkmsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkll-0003AZ-5V; Thu, 04 Jun 2020 07:58:33 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgklb-000373-VG
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 07:58:25 +0000
Received: from acer ([188.192.133.27]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MfI21-1j1eVy0dX1-00gmJC for
 <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 09:58:21 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 4 Jun 2020 09:58:20 +0200
Message-ID: <004f01d63a45$ea621820$bf264860$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdY6Qteh4s3vPyr9ReuidDYZnotYVg==
Content-Language: de
X-Provags-ID: V03:K1:GOAusp+9z3GM7MK+YcMWkaC1UfLHoiBByPXigBtLdPILQ0auBmC
 pGiMhbh4eEBgkCbZdZOcHv5cmJGZREyIAGGt4IQFSYm4w6ZHcnmUzqqdFOa0u78nIHuAO7w
 9spnuEsLODd4x74w82ZzqQpnug4lN34XXLat2T+1j8hOzSMlWKbEstteeh1n3K+zSk6+OHW
 FYEXS2mbLvrbROc2tdTog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YnAMgAAy63c=:sIb4e+ey7YRt+46itvF/Ag
 QQVN9LqBLYDgFjpGtyz05w1nn/lYU68RHIB1EYgnpP3+iK0T08hpJOmQFYDgdPWa2ASShOLLG
 X46WB6vMTr1hknSYC2SYlib1/LmoW10hPI2K4O5NGb1lyol9+zCPiyOfKpHRxFHh8FrJn1UBY
 JpdYUNhfb4Vy1zNdSkjYuR4OEEV8JnH63rbJBHyuSbo+sw5SSdUKIaJLHyDa8oflvNpmJBHBU
 RjoHO59vlkyXxHnAiVB6wj7GCvTv/ZRMZqesN5emUasNToTKfgEtmKEhcz/C8azAB0LoBLB6I
 KWaqzKV1X8tBGmM/drGBjT0SSvVrEDwsiCy75s43V+WzMqmD6pDNeyfwD+IZ70Vehs8PG/KUf
 tbqOCTWI9bPThi02TzTdvtNckz8UQ37dDObDDBnqk8Qqtcgz5FBTR7fPzWt5R+rtqLqhiSXT8
 E4DgQRuAW9tMF8vuOjqNI9zeIZoIZg/Qdb6HXdJsTkcNcrvbpHCF9A+tkI4RsxUFwitRsnCmt
 AL4AzKUFrMDjpdzf3GjfKowamSG/dueW7PoVVUjItmrC1IOWRti2OdqkMqE8xdld2nel/XvXs
 o8Ip/C6K3ZdtKJjogMbtderjpm31GzCEUIwWjUd/DYeXFx/d+E7y0ejlSQ0Jzw/R/Qtpz0aUa
 rCS5fq+kBiCc+NPpmCXzZZtsr8Ixs0uxQ9Pvin9GM/+uoUsyyuXMoHE+I2N2tubpr6iiHwwIm
 Z3uGBJRKjd6Zv5yJ32Spq2i+096kyozl4/QTUi9xmf+YWmpqw7zqtZO3l0Q1vrLEbbNW3ZisM
 f2stBfDlFT40BrZSBSCvIipwmo+vyRiMovvNi3HsKErrFbkEiEF9USilaiJ/MSeIgc5FR0E
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_005824_300511_AADB25A8 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] device compat version
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

we regularly encounter the situation that devices are subject to changes
that will make them incompatible to previous versions.
Removing SUPPORTED_DEVICES will not really be helpful in most of these
cases, as this only helps after a rename.

An easy way to address this would be the introduction of a
DEVICE_COMPAT_VERSION to the build parameters of a device (and to
DEVICE_VARS).
This could be put into image.mk with a default value of 1, and therefore
would be applied to all devices in the tree automatically. It could then be
inserted into the image metadata, and effectively lead to a similar
comparison (and message) like done for SUPPORTED_DEVICES now.

If an incompatible change without migration was introduced (i.e.
swconfig->DSA, sector size chance, whatever ...), one could just bump the
DEVICE_COMPAT_VERSION in image/Makefile to the next integer only for the
affected devices.
All older images without a defined compat_version would just be assumed to
be "1" or "0".

This should provide an easy option to indicate an incompatible change to the
user, without having to bloat configuration too much, as most devices will
just stick to the default forever.

Since I'm not an expert of the sysupgrade mechanics, though, I'd be happy
about pointers on whether/how that could be implemented.

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
