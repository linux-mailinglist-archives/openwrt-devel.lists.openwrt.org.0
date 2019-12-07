Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13ED3115EB0
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 21:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NlmloTn6f2xZ9D0GQi4Iol0UMA6xzw/VJESSDA5M4lY=; b=up+jd+58ph4fFZJpzK2+S5cZI/
	wR+oVYWhivnmjwocHTv/O72A+rAUtoKZgtTHqtiCFrg5QRlZj6hJXDfec9w8OyAhKCaNVKajgDMTm
	7OyJ2I5LSMymkkBwFikYAdni2LD/qbJHfIHBO/A4i0np+PvGcYhXUI82cxd+R+NTTazS/yCN6YzNC
	bxgPBanr8E9A2MpdnnZifn4g7zEe8Ee/YrGFuPbLTX2rhyW4li+Gs1q23+fqzFW2s0ZMN84V269Ee
	Pi025HkmdUqdZZsla/PiIbirmsvi6135kbTMF4EMxqChi3N4UG2Kk4Ig85KPLKoSnk+ixRU3CWFka
	NYFvmJwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idhAA-0006Ub-L4; Sat, 07 Dec 2019 20:58:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idhA0-0006UF-3c
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 20:58:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A470A3FE9;
 Sat,  7 Dec 2019 21:58:36 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 3ba7e3d5;
 Sat, 7 Dec 2019 21:58:26 +0100 (CET)
Date: Sat, 7 Dec 2019 21:58:26 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Fertser <fercerpav@gmail.com>
Message-ID: <20191207205826.GG71465@meh.true.cz>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <20191207140405.GE11070@home.paul.comp>
 <20191207150413.GF71465@meh.true.cz>
 <20191207201011.GF11070@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207201011.GF11070@home.paul.comp>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_125840_304521_37AC349B 
X-CRM114-Status: UNSURE (   5.54  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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

Paul Fertser <fercerpav@gmail.com> [2019-12-07 23:10:11]:

> Regarding this specific patch, I'd really like to hear the opinion of
> a maintainer (it seems like ath79 doesn't have an official maintainer

To me it seems like its maintained by a community, by developers like you,
with the little help of team members like Adrian having necessary commit
rights.

> I'll be happy to change the patch in any way that will get it accepted.

Then just do the requested changes in v3, solved.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
