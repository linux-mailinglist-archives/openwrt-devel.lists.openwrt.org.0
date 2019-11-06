Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B6BF21BB
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 23:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPJCvO27USKIgTcGCRpv/G7OKn23r0BwQqYu4H8xBN8=; b=mFR6v8xis73381
	0xlUwo/BeHLDfagKkTN1sbh1B9pcqX7m/ldyXUoO4kCkxN+pJN0ADiDxf0VaBGzUe4/+DBKmv0N9v
	sOBaNEz/ujI+3xH6RMc0eZGzYu7zYqYXD4G5IgDfIpcAkcsonjC/IkTDyj0tCUM3vc1v4wPQR8/9Z
	UfXZUW8HWFaXMKLr+szd6IwhPFxdnkROs9FxgmyxYI66Mq+yApN1AHtW4IAz0xj61JiRTFRKInXwN
	Eb1+ewcTIFriUow8Umvk98AUWujNrmJ01Fi9TjGE+oFdw1+Fw2iiBxirmTXnPQopPGIn27BoCQYDp
	ED4V4f8GmMAc0EE1h0Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTpx-0007Ha-RI; Wed, 06 Nov 2019 22:31:37 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTpr-0007HI-AA
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 22:31:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573079485;
 bh=RodHg4s20U25PbolSPrgsm1CVXI+SfvaS5RbvZ+eg2E=;
 h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date;
 b=far3S31FI/XZXnBngD+Xu4TunRh5thVWaUrJAAc96aUZaWSAktZjN6V1CgZkNYsXm
 4/0uprVb+qw/MgOqdIL0yB/tzqxC4IJIMR07byxckCPaUSym9v1gwvhP2t9pWK5hAk
 4nB16vx2gVKV6wQirD3jLLejMRjmiPm/XjnT8nfo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.89]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mlw7f-1i1Qfm2lKV-00j3RO; Wed, 06
 Nov 2019 23:31:25 +0100
From: <tmo26@gmx.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191103113247.9782-1-fercerpav@gmail.com>
In-Reply-To: <20191103113247.9782-1-fercerpav@gmail.com>
Date: Wed, 6 Nov 2019 23:31:23 +0100
Message-ID: <002b01d594f1$ebb56320$c3202960$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMKhfWw0w
X-Provags-ID: V03:K1:yADiVBZokK0JCl53iWXAEfPFpRxwloQ14k3kSJVZueqEd5yOAmh
 nqKw17cjCGvXbB/VSkHxeTxuvjZcSRXEtZiaVucNlgWwvdEik0lleju/UR8t4On/pTC8gkr
 Sp7WPQZhzM/Czfq416JUQyN/ZML3/4i4sha0QHC2GS0qz+mx8rS2Gs1yB5rPH/SU981yBs2
 MC4ClIP93+kxeps/XabNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+3K6ooiyFP8=:crSGbWRX1FCMrNo6ElYDaD
 cxwO4/3fvuowmYtCGndgl3V8fs7GxS/KZw3x+v9PWrTjyaxdnB+you0onLt9S8Ba7Bcs4m95P
 UTIg19Bh4595+MvHqRDCnr2c/QVfcJApe96yxRD2zmLpCQNUsdVbfacmpmRRgnXjeVU+aFgDw
 0Fe1OQ2NuE9w5n9tkjiNy/EvOV0YMRp7cYqiEPxbkGoDEWTBmqtCmWJWrzB4xkO0eL5Ru2kKs
 3WR/25UsS4kqrGZh9fXEOIxIjyw5JLMvU4mowewCwdProP39itMJOBGlV36NeDi/732ZREi2Z
 rO6BE3KIkuO46vQ69Xsr26MsvmuKfYBW2XSdPV/+VaJTygWCE0foFzPEACFfxaqYZE/SP9Bcf
 ijPbW+mnePhEpf/COYEZ7Ippc/sfDby6/hwuflsQXjD1RS3WBfl50Ny8cMLV6dW1V7Iyusir5
 msn/0qwk1Hpu8/ZHq4bl+aZyFqJosHTvz+36OLBLCI33HTBeGlGWca6UErnSX5hsG/1lLnqZB
 jUDvDLCxeOaJrhD27mnjK9wYGrQiNkF/aSrkgMyg4rlZytm1P0u0n68HM0mOUsR0hidL4Nre3
 /5HrgZNetHWy7brLFAg9C7NeSLNGyl/4vDG1rn7r6MVmE4wYO8l526gDb0NimHgOQM5v33YBu
 d+VsNOeUSmvCfe3YKfQvoxFfhB4nKl0K+cU4kQOes6/Kdj2h90yKz5aj/Bx1pVR0Zl/iY/eDg
 jqbSB2wREVWxfZ5VutLyY9kXRZVE7lP8hsuPCvLwGmR/ab7iTG8eiE8/ofoaQPTVp5uoJ54gY
 E4aZv02Kd6F0aL6hxAtCLaEvTkENqi5T4f4nwgCilwMOM2X7EOxmDvsXRUViNS9pOF3Lx/lvv
 eSo7H7BUpAe7C3wYn9HUYsfAq18YzkC9nwhcMm63URHYQculLhtiib8/9RWEcBBcA1C9zdl+S
 8GESvBf2/GpiPm530rxR93mjW1835sF53dRS1rUgQCg5vtlGKVFhA4gL/B4CpIUVPKW95WgG5
 LwjjoAniNPn57lhuQ179le8DpXYHwLNEz1qCYyisdU5Bi+DVv26cqxLMXHX9EERSoo3PVnMXW
 zZpqjAu1ePs8uLm36+dvw0YCQVFtWX4elU68FxfjA9bXq2cve+TXSfAj7MfEZv73jUWjVkywE
 VNLo768JIqJszv+5XQcWilEziMJThGtRUijhIYReeYhRNCxWxjr1zCX8afGGAyqMCbYXZ9py4
 4+TM/B1yNEn8rt+unrfMSjUrB8TjBj8Nnske/zA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_143131_641968_47FE5FAE 
X-CRM114-Status: UNSURE (   3.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Cc: 'Adrian Schmutzler' <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Paul,

> Support ported from ar71xx.
>
> Signed-off-by: Paul Fertser <fercerpav@gmail.com>

[...]

Can you please add installation instructions?

Thanks!

Thomas


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
