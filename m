Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 255B2B5377
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 18:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qavb4Jgpe7JI6SwPT479ev0l86uIj5sHUclUUysuqnc=; b=qDxCqcxSzw8FJnWDspN9p1ulT
	cAEJ5LBhHdYwM5BKxiX6SOZL7vyYvxY1vXuOh2BWeD0JpNMTC7ADGR8W87qXHNT+afwjrHyRc08H6
	LOukMA7XtuQIivFvujItvwhJfunIMgliQAaf2rrehMjfD0nD2W048MbmSe3bTtCA17BmNlGOLxJfh
	I6LEDsWj1mih+TrJrihMYtaObnNlFmhJZtuidWL3OCT4afZTzMYdfdAISCkxFvyJc4+bhN2GQ85Io
	ynav28/X/gKJswmGRL1vlmmaKkCnlFR0KOtChKBHveItZiEio9FKFg2sxyP2ByS/2F52r+82G6dID
	WaEv6luCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGnN-0000WI-Bh; Tue, 17 Sep 2019 16:57:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGn6-0000VV-Vp
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 16:57:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so3937191wrw.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 09:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=TWfHPt5wKGu4cQzIMMnucRb11k8vgOEcbWQA4sD7KHo=;
 b=Yx4t5svXx/IquI79TInvveEN+vsolt2a9tq7y+c4eBbjxuyWyrr/Tas9dwlF+/S8aD
 cwkFakxnlgSs9pqnPGB7YdrR0ffzzvgg0lZBnwrqVrd8/5ZnXwPpXi1/5iaKXo2LiWPY
 tkB3b71MIE65Ff38V17oogIMjJo7grp1yP+iYjDxcY7fNDlqyY6L2Hye4vINkkm/jVZK
 myJ5HjJJ9xBLr4pV+K14pu+kaA6O7Ef950uJy67tz+s7tiO1j1U1O1hOZyLl3Oyja0h4
 aAHEYFRLmS0BSqfpS53YEcZ5ztmKltmz7kQ0/QJ6wANb5Q4QRyOWpkWf2gZRh71EQOat
 NW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=TWfHPt5wKGu4cQzIMMnucRb11k8vgOEcbWQA4sD7KHo=;
 b=LBoRvoVO5qR7cQJbfGJfJ4jCigQgztWeqOYzoa4Fn0HhXlwe7Lk+yxRFHhDEV7v14K
 9xjwPt87lff/zLWbiOKZKhDfUvpYMcvECKUGrclPyTSUQHV4ywS+RUVV2tDL1M1CKVnp
 p8TBnSQqsq6xBqGXoBfzHywY+3VWAzAIeshMeX+rdDDICMKm1WzsRhhPOgfgYMrbKZyw
 OjEIjdALFjVG4PkPt3cl+DC3RPIIlq+UuuzxfZYpwv5u8iL1b90IPhk2Bdyi1RsWlGSI
 OhO7ukP0DJNXChfxF+LeCeqBh7uZjHhg28KcLp33gy14ZlErZ0T5FYjLRgoOTDHnuxyt
 0i5Q==
X-Gm-Message-State: APjAAAUiaOrciasnf2tYHk2X+U3tQ+3zN+Ltb/byc3khfvx7fHqbW9Yl
 hRRn7mcv+AS8biodXIlKt83eqm2C
X-Google-Smtp-Source: APXvYqzqEGr3E1Pj2yG9oVwTtpr228erkuntDnko/XFOUpbvGR26GA8n5FddOp1zvGV1RpmY/Wwgjw==
X-Received: by 2002:adf:f5cc:: with SMTP id k12mr3469878wrp.278.1568739443323; 
 Tue, 17 Sep 2019 09:57:23 -0700 (PDT)
Received: from mStation (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id z189sm4662656wmc.25.2019.09.17.09.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 09:57:22 -0700 (PDT)
Date: Tue, 17 Sep 2019 18:57:20 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Filip Moc <lede@moc6.cz>
In-Reply-To: <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_095725_031104_333932F7 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Piotr Dymacz <pepe2k@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

BTW I can see the code for setting up network interfaces in mach-tl-mr6400.c is identical to the one in mach-fritz4020.c for which we have ath79 support.
Hence, I copied the setup from there:

&eth0 {
   status = "okay";
   phy-mode = "mii";
   phy-handle = <&swphy0>;

   mtd-mac-address = <&uboot 0x1fc00>;
   mtd-mac-address-increment = <1>;

   gmac-config {
     device = <&gmac>;
     switch-phy-addr-swap = <1>;
     switch-phy-swap = <1>;
   };
};

&eth1 {
   status = "okay";
   mtd-mac-address = <&uboot 0x1fc00>;
   mtd-mac-address-increment = <(-1)>;
};

yeah, here I am using spaces but the original code has tabs. :)

Am I overlooking something?

Second question - I got the LTe module working with gpio-hog. How can now I turn off the LTE module, writing a value to the GPIO?
Thanks!!
Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
