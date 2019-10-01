Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB8FC2CB1
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 06:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kAJVhglFq0mzaGvD7Rm4sgW3cvIyy+RyFIOUWTbB0KQ=; b=IrT3NXdG7ECrGV2UFZF2DNyV8n
	F9AhOj2T62p2gkqk8rj+kc4DMCJ3Ctd205ylz06S4jC1NiVHXF9w1bmg4ng98G1jTfv5UQ+1TF6iW
	BawT9LWnaZlyKYQOTCVSQGXOXF+JmSKL4wX5XybRw7wv6gT7rRta29A0zRHkcy2CVNnh0iXJMRZxW
	tDDZgyaM+gvhYU6xYHKTt1HfB5hV5i3Yr0EJFvccyLT3T3xBvXyyhkFogRYOXaOxk+821mr8N8KLz
	Plh0kEyHRu1mDTDrlLYNHX2OneND28TmLEV2mI64DCxHxPrQZ6xbgVF73Ge3+cofQkqE+9dRhinxu
	u4LFwYcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFA7V-0004Qf-QK; Tue, 01 Oct 2019 04:50:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFA7N-0004Q9-5L
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 04:50:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A57834569;
 Tue,  1 Oct 2019 06:50:25 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7c1c1312;
 Tue, 1 Oct 2019 06:50:15 +0200 (CEST)
Date: Tue, 1 Oct 2019 06:50:15 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: mail@adrianschmutzler.de
Message-ID: <20191001045015.GH40628@meh.true.cz>
References: <20190930195425.28617-1-ynezz@true.cz>
 <002f01d577d1$ccf77fa0$66e67ee0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002f01d577d1$ccf77fa0$66e67ee0$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_215033_370516_ACAE44DC 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79
 for wndr3700v2 and wndr3800
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

mail@adrianschmutzler.de <mail@adrianschmutzler.de> [2019-09-30 22:58:22]:

Hi,

> ar71xx has so many similar cases like this, which nobody ever cared about,

well this case was properly reported and I got simply interested because of
the proposed `sysupgrade -F` "fix" in that bug report.

> maybe it would be easier to just deal with this in ath79 by setting
> SUPPORTED_DEVICES?

I've looked at this option first, then seen different NETGEAR_KERNEL_MAGIC and
NETGEAR_HW_ID for those device and I've thought, that fixing it with
SUPPORTED_DEVICES would just make the mess worse.

> On the other hand, if you really think it's worth it, 

I think, that we should avoid promoting `sysupgrade -F` as a standard upgrade
procedure for the obvious reasons.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
