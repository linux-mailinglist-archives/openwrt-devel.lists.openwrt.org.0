Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E25BB9D1F
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Sep 2019 11:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xotWPoDO22g6wxJdgZ+tuQClCPzoDi83dN4m8/9BsCc=; b=aGWC1KjqELmO8no+Vic4Tg073m
	Q2buuOF9Y2KvtmxXHouIurwsYUxUJpmhTThRAGUdGMeA6BaatiAglfPUNMSRpf3WecvQQRDl6lc/c
	tZPJ+bF58HbKFP1sil1+fys1WQ7Ze4aEhAdpYEM708byypLl7h/W02rjawcbafhb8FF2A1ahY+dFp
	JDqNujlUovsuUURj7Sdrrop9kZX8wdgnueRWMprGKeySD1OjKwkW/AO2jXTPn2DKOy3EWranL6hkj
	TY9lAGTvPQ5+By88Hy74WQuPSwJ+FSutEq3j+ckDMUJ08CeuCYHpEXWGzo0fVP5NYjFc+vWB9DMgu
	wiTDG68Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBbOi-0007x2-CF; Sat, 21 Sep 2019 09:09:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBbOO-0007wM-5v
 for openwrt-devel@lists.openwrt.org; Sat, 21 Sep 2019 09:09:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 647C75674;
 Sat, 21 Sep 2019 11:09:20 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6185f153;
 Sat, 21 Sep 2019 11:09:12 +0200 (CEST)
Date: Sat, 21 Sep 2019 11:09:12 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dirk Brenken <dev@brenken.org>
Message-ID: <20190921090912.GB40628@meh.true.cz>
References: <33816ee341ddf7d59aea750de63a57d5dc7ee355.camel@brenken.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33816ee341ddf7d59aea750de63a57d5dc7ee355.camel@brenken.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_020924_367934_DAF467A0 
X-CRM114-Status: UNSURE (   3.57  )
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
Subject: Re: [OpenWrt-Devel] the change 'base-files,
 procd: add generic service status' breaks several packages
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

Dirk Brenken <dev@brenken.org> [2019-09-21 09:15:56]:

Hi,

> How to proceed?

can you please try following fix[1]? Thanks!

1.  https://gitlab.com/ynezz/openwrt-packages/commit/79270c139f166550c8fcf89cc8f18135e3173ce5

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
