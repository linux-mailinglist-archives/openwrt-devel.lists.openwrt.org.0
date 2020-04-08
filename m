Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728DC1A1F2C
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 12:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6sQZz6Q1f4I9vflaFs9dT1YAb/48CbyOsC80EGRZTw=; b=WHmXuisc0ZbcPK
	Gje69MKW42ghIkYRXjkdWvnRDwzs9neIaWJLV22uZwAVJFw4w9KGzBMF+8qK/NNrcO9gnFc659HMc
	/mcyvKuEm/YAvkHMB5GhJPhT+qqrI8PXjKYq92O11q5I8JoX784Rw53bTSSPplYRuDjCK3QFR2Y2+
	Dxnvi2KOVchnKzDtxtwP7jsSER3cj/1VD9KXSzo3FdF8ewmyiWi0buOEF583DbafTGM8KIGDztOh8
	J/tqe3Ey7s9Gr7A6OIFRE9WMArdfCpFc9TOedaHoan0WFjHAWp7Y+Bl8fUy0rjeUg9sWqSpKyAjFO
	vE0ML3VoEcvdW7JkN6zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8GN-0006fz-SC; Wed, 08 Apr 2020 10:48:55 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8Fz-0006Xs-Gj
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 10:48:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id A5A483A049B1;
 Wed,  8 Apr 2020 12:48:27 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v479kom8yf6J; Wed,  8 Apr 2020 12:48:25 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Wed,  8 Apr 2020 12:47:12 +0200
Message-Id: <20200408104716.3644779-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_034831_695020_6B7AF746 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 0/3] Clean up and reenable Mikrotik rbm11g
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
Cc: Thibaut <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org,
 Tobias Schramm <t.schramm@manjaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patchset reenables building of images for the Mikrotik rbm11g.

The Mikrotik rbm11g was disabled in
838f1fbb50e9 ("ramips: mt7621: disable image for mikrotik_rbm11g") due
to confusion on which switch port is the LAN port.

I own a rbm11g and can confirm that switch port 0 is the LAN port.

Additionally the first two patches remove some differences between
the rbm33g and rbm11g.

Feel free to apply partially if you don't agree with one or both
of the first two patches.

Tobias


Tobias Schramm (3):
  ramips: mt7621: add LAN port mac address to rbm11g dts
  ramips: mt7621: add label mac address to rbm11g
  ramips: mt7621: reenable rbm11g

 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts           | 3 ++-
 target/linux/ramips/image/mt7621.mk                          | 1 -
 target/linux/ramips/mt7621/base-files/etc/board.d/02_network | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
