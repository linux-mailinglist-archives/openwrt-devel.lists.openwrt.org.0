Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDF71FA63
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 21:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9qVF4zLAqVb0slZc4ScMS/v8+oPw3kN3j6fBVTqiMcE=; b=MEmPDK4FA9RvWLOogAztAvIXF3
	hfolzKMa0nHVO9ib/BJ8SjrRleBCrmIYlJ20PL4/zK1KBU/kcuzIw2HYdrUzJpXpWgaal4P7gh/So
	iUCmX3oVuVBWnE01pRRBEb7laznf9QZL9dSxizxLx1tnD6oiKp/ZK1HVcNd6I1IYPYsZAgvwjJifh
	Rsf0/w8Z5hO5ro/I6G+XhxMPL+UHwV5vEPVSY1lM56c5pDqZvJfjeOkBsS93t4Wwk4tfkmjJsc18h
	eEsaAWwSdKW2Jne346BRnsXaL6ZFXVeCrcF/BD/AM09NYhJJAhKJ7twVbhDlCEK2wRPD9yB6WDjrE
	2psyX1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzT1-0000xG-JT; Wed, 15 May 2019 19:21:31 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzSu-0000ww-3m
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 19:21:25 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FJLHms052316
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 21:21:17 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3E5C93B11;
 Wed, 15 May 2019 21:21:15 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 086cbfb0;
 Wed, 15 May 2019 21:21:13 +0200 (CEST)
Date: Wed, 15 May 2019 21:21:13 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Kristian Evensen <kristian.evensen@gmail.com>
Message-ID: <20190515192113.GC63920@meh.true.cz>
References: <20190515185045.22878-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515185045.22878-1-kristian.evensen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_122124_491840_2A05ABF8 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v4] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Kristian Evensen <kristian.evensen@gmail.com> [2019-05-15 20:50:45]:

> Head Weblink HDRM200 is a dual-sim router based on MT7620A. The detailed
> specifications are:

Thanks, I've merged it into my staging tree[1], but I had to fix one merge
conflict in target.mk so please check it if I did it properly.

1. https://git.openwrt.org/?p=openwrt/staging/ynezz.git;a=commit;h=9fe227e69dea69b4d16859e15d21ca3f66d6b7a3

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
