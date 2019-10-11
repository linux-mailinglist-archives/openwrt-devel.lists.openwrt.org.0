Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEEDD465D
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 19:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsBGgyhepxhIWTdz3IxueevQdr/ofFMg6l1HqNUakbE=; b=lK+iTzif1lsgsx
	UJrTjcEMIwaW80LWjR526oeBxVo9KsF6zkZTRapOH4CITP++fz58OymcGiuaaSmuwSQ+YI9/N9AFe
	6XZwMdWcX6QA06GsSkaI4gCQV1OjL90tQejt7LeOidf2QGMTpB5LnXJuJAQJG9BNhlqIX6LCGVGmn
	bP47es441djiFBkVBbFfmrCdvQxyzsl7EByn8f4/13YgCu7JWfi13PFf3fAgqOxn5xrMbqYnnd5ho
	95VLatKf8fDJOUHqFqsU5AHXL8A2QdDTXhwAmvyQYoOkv8QYg1l7TmsaqVjgdx0/x5ixGBEik5TbH
	W8Z+KNeLdaHS0jYBf9mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyVU-0007fg-Pt; Fri, 11 Oct 2019 17:15:12 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyVD-0007eP-8j
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 17:14:57 +0000
Received: (wp-smtpd smtp.wp.pl 39424 invoked from network);
 11 Oct 2019 19:14:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570814089; bh=3ERUeqQenp6Gth7QyLArrOy72b8c+3yu9PM07eq0NIc=;
 h=From:To:Cc:Subject;
 b=I9WBB93X8yjc98VYTjbeHWi2dYC+NEcOv+KhOPQeIYLFZGmjgUD7L3uIRIvWvRf0t
 Ke58dhVd9kDNXfXirehhZNk0oMkyJlP1YvHTv50LGckFHN3tDWmFSFg1rw4m33dO75
 01o5pTmYK/TC7A0BtNxyjA43RlugWCamz9/9A+sU=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 11 Oct 2019 19:14:49 +0200
Date: Fri, 11 Oct 2019 19:14:48 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Adrian Schmutzler" <mail@adrianschmutzler.de>
Message-ID: <20191011191438.4e9c2eb6@kosmio.komorska>
In-Reply-To: <004e01d58033$8492d380$8db87a80$@adrianschmutzler.de>
References: <20191011111446.77a86e7b@kosmio.komorska>
 <20191011111709.344d3667@kosmio.komorska>
 <001e01d5801d$73318610$59949230$@adrianschmutzler.de>
 <20191011145141.7a5848e6@kosmio.komorska>
 <004e01d58033$8492d380$8db87a80$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 8ac6f30e31fd001e2672b80a17279ece
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [QdOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_101455_663896_5889C561 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear
 WNDR4300
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 11 Oct 2019 14:58:03 +0200
"Adrian Schmutzler" <mail@adrianschmutzler.de> wrote:

> Hi,
> 
> > > Have you checked that there are no usable addresses in 0x1002 and
> > > 0x5006?
> > >  
> > Yes, there are wireless addresses inside calibration data at
> > offsets you provided, and they are both equal to LAN MAC.  
> 
> Okay, so for &wmac that would mean it should correctly read the
> address from calibration data even if you do not specify it. Thus,
> you should be able to remove the mtd-mac-address for wmac and still
> have the correct MAC address.
> 
> For 0x5006 this is more interesting, as it implies that the vendor
> puts a "wrong" MAC address into the calibration data. However, since
> you have verified it, it seems appropriate to overwrite the address
> in calibration with mtd-mac-address in this case.
> 
> Note that if you remove the mtd-mac-address for wmac, you will need
> to change the label-mac-device alias to &eth0 then.
> 
> Best
> 
> Adrian
> 

Hello Adrian,

IMHO the valid place for Netgear routers to get MACs from is 0x0-0xc
(beginning of art partition). This is the first Netgear model I came
across that has a real hardware address inside calibration area,
usually there are 0xff's there. I always look into vendor's u-boot
sources to find hints about configuration and all WN[D]Rs I had access
to point at 'the start of the art' :-).
Even though vendor u-boot does not put Wifi into use, it defines where
wmac address is for u-boot commands like 'wmacset' etc.
We should consider leaving it as it is now, as long as we decide to
honour u-boot as the valid option/tool for changing device
configuration.
It looks like Netgear has its own way of handling these things...
Anyway, I'll gladly read what you as a developer think about all this.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
