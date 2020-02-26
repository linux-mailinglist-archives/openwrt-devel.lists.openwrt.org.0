Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51E116FFC4
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 14:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiwiTApkdwDCYPXb7qV1A0OXbG6m1TsdoZz6ksBP3HM=; b=cyY+fPr2YQyeez
	yxCnch5zqT7RS+sXC1aegCM5eCwFecyrbFA82cMrcTo4okY/QHBJ5Nc4aBaUHjyw60X37OEsUzOpP
	EntafhuXrq0mTjk9F4yMTerFnIN08en6fwi94m6AxlMOZlIH9KsN7+667e5Bat/FqWc0PUYOOMEBc
	mlasYo5A22Imbx8XHkl3PTqfQcIX9oGKDVbbpLATCyvbwvYn1lQhsl9zHKMZs03WqO7rrh0VwCjZP
	CGZjhfHCu9WNYk29TjjNyyNWMv3GYQMwyCdg72MIPd+jVSE0G9Gslb7sJr6XD41c7bdJXtiFclsyp
	Ctn7xUJO8AwrElnbRgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wbe-0007Im-DK; Wed, 26 Feb 2020 13:20:06 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wbT-0007IA-Cp
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 13:19:57 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MbRbr-1jilSc1L0z-00bsD4; Wed, 26
 Feb 2020 14:19:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>,
 <openwrt-devel@lists.openwrt.org>
References: <87tv3dtzut.fsf@husum.klickitat.com>
In-Reply-To: <87tv3dtzut.fsf@husum.klickitat.com>
Date: Wed, 26 Feb 2020 14:19:45 +0100
Message-ID: <000701d5eca7$6ae4f0e0$40aed2a0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQKyOHC2ZsrvrsN7wRnTorTWuhqfs6Z025Pg
X-Provags-ID: V03:K1:ZQDaBFvk2gZyrQVE3D5c2PRtwsZIyyxY6sEbr8Q3+XrXhR/nrRo
 4zj0IqAkhdL9oiRay5TcvCbuXsqgvpJKcO4hE4+mWEcLXeA0iHlb9QtL9dRekP9OPQUDPy3
 Yhs0ctdw31yes8W3bNt3k9OpVpeSiZfiOS2lXuIbzjh0nPlbebsaGRpG6ziHukyKF/fqawS
 ffjrZNHyEe3vlnS20eQSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZwDSC/5iBYo=:RhsyhOvIADoX4ls0U/za+4
 U/sYwhBk/oX2If0JuNdniAo0IPzGXz/9LixdR7XnYixRkWGsWyj6ap+UVt7anWkCZkfyUapU6
 5BRyvr+sZVsZ9oHCCj93LTR/abHNTLGTg0IbxHBdIFvu3vukNRZxxgtqLjOLldhxqsIXiEaZp
 tkS7pKm2gB0h5+p0I8M3w4+OJU8W+aGo2mxCQCMhPDE4ghaOWbHtdvYgSdFSSvSqfbX4FceEF
 k41Ivdyr9T+QBqX5XIH5gEWzoRuyQn1xIT49rmrpwM/PyaDvwha3A5aeiJA6TWo6GNksFnY3a
 FxOr/OiUvTtS/aK6NM+gYNfeEpv1jN5wIcpaFw8FStwjb7FZilE1KA6N3V/oy7+eP+rWvjLE3
 5IM+Vd972pUMMdYy15sYwC2BopoUoxtKQsJCgcQoDEOKyuwt6SetRSe1/iKo5W0ZfJWCT+Inr
 KbD98Pb+HSAxvBsmdXYVTVfM3mgvPO1eHluzSVcmK1pEFHj4qBjJulPcW1Su2A4dGfX/v3HIr
 ntAeCV/C/e6z+Bxp+WFyLT0ln8kcWcXG+TP4YFwbe4BlotNqyqrGQLcrTg/DlnVYi2Aulk7d2
 TN9FAjA0g5Y7hikOiDbgUUB9vTlnb18ylangTk7tvMNvjzZ1o/tLDXmoS+SnikQRJ2W6lgws6
 fISKRa1iQIFEacaJImO2fymEuWn7FX9SQhJ2X4wfolDnvj/m5//CIlOzGFoOWADKR5r+xr59L
 pVYddrPeE2KqobOcwsyktXqSxoPoyfLPBo4EUV5URJ4t4FTRBuwHb1iSwF2hxfICxTDRx2L2L
 NgqrbQALCz2amr8sOPlKtofxQrkVGJpzImesJrTtcBHZl6W1riIJuXALmXQ18p9cRyqJBTv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_051955_724491_8508152F 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240
 version of the ubiquiti bullet
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

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Russell Senior
> Sent: Mittwoch, 26. Februar 2020 11:20
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240 version
> of the ubiquiti bullet
> 
> 
> The Ubiquiti Bullet M2HP come in two flavors, based on ar7240 and
> ar7241. Both are supported by ar71xx, despite the different SoCs. The
> ath79 target, however, currently supports only the ar7241. The ar7240
> version apparently has a differently wired ethernet interface and the
> ar7241-based image comes up on the ar7240-based versions without a
> working ethernet interface.
> 
> This is an attempt to support both flavors of ubnt-bullet-m,
> separately. Some of the choices I made may be considered dubious and/or
> harmful.

Interesting. Do you have any indications whether this will also affect the Loco
M and Picostation XM devices?

What's the base for the v0/v1 distinction? Is that visible to the user somehow?
I fear that meaningful naming will be the biggest problem here...

Best

Adrian 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
