Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66AE1665B2
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 19:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOHYjRY+VFyKi0XUZDvMeTwhDA6uY5pq2XVmP57BQ8U=; b=d3MttSx2LrZN45
	wScpYd8uKVBWMwSjoCB35UDAG89/93csB5dc3gG3JUDqvBKfYmredFEa9CUrVl0yb0qAbjVz3HEou
	YrsUqzZhY7jy3IJTbRGcrsBT3dCAQX/U6+9VxXjbbN3Mz8LIWHevoXpBLmBeMBLw1Jjt18VpAuV8O
	B6PuQjcb1tayDd6Xd6TlEPRF/Cd0GStCpYWg/4CtpErDRbYyiowDNT40r7SWQVy2wAei23o+hSgbY
	vtKm3HS2eVK38aP7STAhWbB8ZgDjOhyJTN6rFhwwVf0WnI3AI9M944NyQrP+qPflDja/rzpyc1Vr1
	SrVYgK3tUzgsT+65am2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q83-000292-SI; Thu, 20 Feb 2020 18:00:51 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q7Z-0001qq-Bw
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 18:00:23 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MX0TX-1iyUL90ZKL-00XHA8; Thu, 20
 Feb 2020 19:00:14 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200220175218.33593-1-freifunk@adrianschmutzler.de>
 <20200220175218.33593-2-freifunk@adrianschmutzler.de>
 <02dacc16-3bf9-26d5-e1c7-48ed1a57ff63@gmail.com>
In-Reply-To: <02dacc16-3bf9-26d5-e1c7-48ed1a57ff63@gmail.com>
Date: Thu, 20 Feb 2020 19:00:13 +0100
Message-ID: <010501d5e817$99e940b0$cdbbc210$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQLXiGzX3PbFlg851MffUwvoKUS/PQKINvohAfFgliCl/VEQcA==
Content-Language: de
X-Provags-ID: V03:K1:6HldIgeIdwvp/PZAADq7gdBV3nTqBOV3DlCqdkU6CRlKj41nnWl
 Tz5Guftcs6TVLJDGTjq8w0PZst3PQ9Z652Bp6hgMxoL7a9dnh8yMayRiaGmYk9X6X4eeVtf
 6ARPfAA78nWPg8oqX/nzi2DQXz/rp3Ph1zvZNFE2/+ySbSi1gFgJDysNDl4LYz/CYDlbVUp
 XoRSddqop4BrgKDb1Y5Zg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T2pfOfQTVSI=:gdFDt0MwCosGkik1b9gAHW
 WCBFmp3BYErqOh3to+9ZGdnaahxKfXDwRW0T5GSr52pCS4dlIoaPrSgXui0jP+T3rRO4gAleI
 TD1FAv00p2JeQ8874cUF40PmtGQ1ldoI9W+qpg/VnnTq/5dBu4iwv+RPi48A2d1izSlPz+IHk
 uBcF7IWJgYh9mmIIxEHAPPmemAGzQ/1q7FW7ooF2nzpUrfSQTLzD5wEy2ACEk8s1r6zXg6IeN
 z0TN3CU5SgQWA95Nkh/pBKJKyLrhLHTklguDb96G9J15JiHTW2WqlXd0QuIlkX1feOBLdkmHq
 On4Cb+vZIjQfnjadzHGbv5D7WxEQqUuV3XBvIKQPPTKhQ8pBwMirx9xHgQjGdYNyf/YbuNBf/
 BWZ5VQHtsm0/ErQ8j1UUWI9OZQ15N+oWRBl2V5lgoVg5iBOqFRojCC5l+dO1pOOfulQfhpy04
 aGV+fsh2m745+6VF03/0/9KY7/WA54wwmmnDeo0gJdS1urobR6QwtWMXm3OuYF9qYyaZYcTsn
 eVXn9k+ewrvkt/ECgrwk+OXJSSnR5xBQAABiR7FDf38yvwQiRzijzrGzBLyQHRoavE0p6hMRr
 4CbP6xvupq/jGLrSReewQ/qOmgcUmX640pe0gT/7xQXatcqmH6ZNibCg4IqQGc3sN7IxTcWVm
 sXQpiN69WjnTbxtKojPoqMV6KsEoWAeKHEFWMfB18j1TeN3EmwWK0IQwMh4rjyGzvlE3wBBMJ
 ie4L38A1cLgfxz4zWHtbvCyG6ww7n0bVR9sMYPM/pk48UNbA3UaVk7XwP91Rqjot8luVNGdQT
 pdjdTs0lSaPxAxdfeW3w3FLomsM0UKfv1Gk3PlBfOUYK7/06rDftMIp9cEEUdG5xwSNyQ/w
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_100021_725002_6B022EF5 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] rssileds: restrict package to
 targets where it is used
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

> -----Original Message-----
> From: Piotr Dymacz [mailto:pepe2k@gmail.com]
> Sent: Donnerstag, 20. Februar 2020 18:58
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] rssileds: restrict package to targets
> where it is used
> 
> Hi Adrian,
> 
> On 20.02.2020 18:52, Adrian Schmutzler wrote:
> > It does not seem very sensible to provide the rssileds package
> > on targets without corresponding LEDs, so restrict it to the
> > targets where it is used at the moment.
> 
> This package isn't hardware related and shouldn't be limited to targets
> where only officially supported devices make use of it.
> 
> Thus, NAK from me for this one.

I assume that's only for 2/2?

> 
> --
> Cheers,
> Piotr
> 
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >   package/network/utils/rssileds/Makefile | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/package/network/utils/rssileds/Makefile
> b/package/network/utils/rssileds/Makefile
> > index 7a59314693..c8e8f39de9 100644
> > --- a/package/network/utils/rssileds/Makefile
> > +++ b/package/network/utils/rssileds/Makefile
> > @@ -18,7 +18,7 @@ define Package/rssileds
> >     SECTION:=net
> >     CATEGORY:=Network
> >     TITLE:=RSSI real-time LED indicator
> > -  DEPENDS:=+libiwinfo +libnl-tiny +libubox +libuci
> > +  DEPENDS:=@(TARGET_ar71xx||TARGET_ath79||TARGET_ramips) +libiwinfo
> +libnl-tiny +libubox +libuci
> >     MAINTAINER:=Daniel Golle <dgolle@allnet.de>
> >   endef
> >
> >



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
