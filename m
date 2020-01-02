Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBFB12E33D
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 08:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1IN22CU/3a00beQbMJGr2svcoRnrvU5ZSQ+fS98PTVI=; b=uMw9lwGcPdVC2jzrputD9gNe2K
	NVZ5Iw5ptpo158hDyOUxqP0z3zdGKrgSamZ+sLHbE0JE1MWU0eaBRoaYeqlicJO5HuyUWh1sDUNbt
	cyLEMMuYHjQa56iw+r/eO3qjOP4VIvcUank4M9Ep0E1U1m90HXWdBHb5rUrebVcGHWJ6ZGGM7Yt3B
	LTchzCHQRh59O4TRm+HOZvl2cTO4NO+Tnje5NOCwBaKnWHNAHoB5+w0WE8WB3+FJZkLM4CpG2/m0g
	x+XOOtuykB9Ab9EDrcWZfJDCg+8gR5Io011d4lTNAbajKioinRY8BF0GXzEDajZSDoInN1r/9r/D0
	olB98R2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imudJ-0003vG-MW; Thu, 02 Jan 2020 07:11:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imudB-0003uY-VC
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 07:10:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 688EC3C61;
 Thu,  2 Jan 2020 08:10:49 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d1a879de;
 Thu, 2 Jan 2020 08:10:38 +0100 (CET)
Date: Thu, 2 Jan 2020 08:10:38 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20200102071038.GT70184@meh.true.cz>
References: <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <93DDE8E1-7766-41E2-B469-F147637128A6@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93DDE8E1-7766-41E2-B469-F147637128A6@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_231054_159251_3719F54A 
X-CRM114-Status: UNSURE (   3.00  )
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
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMjAtMDEtMDIgMDg6MDE6NTRdOgoKPiBvciBw
ZXJoYXBzIHdlIGNhbiBzaGlwIHlvdSBhIFJQaTQgYW5kIHlvdSBjYW4gcmV0dXJuIGl0IG9uY2Ug
eW91IGFyZSBkb25lIHdpdGggaXQ/CgpUaGFua3MgZm9yIHRoZSBvZmZlciwgYnV0IEkndmUgYWxy
ZWFkeSBzcGVudCBtb3JlIHRpbWUgb24gdGhpcyB0aGFuIHBsYW5lZCBhbmQKaXQncyBub3QgbWUg
d2hvIHdhbnQgdG8ga25vdyB0aGUgYW5zd2VyIDotKQoKLS0geW5lenoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
