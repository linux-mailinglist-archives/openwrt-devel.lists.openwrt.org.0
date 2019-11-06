Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B81F1563
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RuREOUocZEi4q3TROE8gs7OrVKMRnQdkJkvJl/ZDp0k=; b=Wb/GSUMrPIQdZAYmoDX+p6M5kh
	LvIKOOBzQl3eaqQp0IYhYjBu0BHppS8Ga1Z6tkgJyuuU4EnPqiSUN24qtngTxyHpazTPPAiAMmimc
	YtY73BAN0ckMU7i1D2L17nEDPqfT3Osi6+ry3ZwM+xpqn5btWw0lVqtE0o39Ewx6TlOMrbGvIp3lN
	puhhmRWEyucP6GPfelCzVqTSkmNyv2Baqv2iwXh83gIOAp78xFWlPMXI0llnhVJdaoeSxyHQ7XxqQ
	demsWub5rEqSjzmITkk5zNUKFwQI0pRno8/ICPtDF+EZZrXBa1Rm6VLjRDdlB8nV3PGBaQM+RdlTL
	Y1ojoN9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJmD-0003ii-L6; Wed, 06 Nov 2019 11:47:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJm7-0003iE-5K
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:47:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E01476DCB;
 Wed,  6 Nov 2019 12:46:55 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 7fe9eee6;
 Wed, 6 Nov 2019 12:46:45 +0100 (CET)
Date: Wed, 6 Nov 2019 12:46:45 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20191106114645.GA67608@meh.true.cz>
References: <20191106110514.20413-1-ynezz@true.cz>
 <20191106110514.20413-3-ynezz@true.cz>
 <20191106111547.GA1410@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106111547.GA1410@makrotopia.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_034659_359019_F2FE67E6 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 02/14] hostapd: Allow
 CONFIG_IEEE80211W for all but mini variant
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Golle <daniel@makrotopia.org> [2019-11-06 12:15:47]:

Hi,

> > Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> > (cherry picked from commit 1d4df52c215874a5238ddef7bccf0139f7758c24)
> 
> Looks like you forgot to `git add`, also in patch 3 and 4...

hm, thanks for spotting it, this is interesting as I've used `git
cherry-pick -x hash`, I'll fix that.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
