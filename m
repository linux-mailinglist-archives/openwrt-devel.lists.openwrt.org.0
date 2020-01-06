Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79C11315F1
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 17:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xF2NlArgTE79S596M1kJFGGE/0HtSmYOkgfLUvZd7tA=; b=Q9oZhrVL7fFijJtI9eZ+bLJuTC
	2NUcu01hYMX+2ac4EPB2LqPSy6yAQXESBdcFOOUu66k3hnZVdFey7TZAJIwIfHjlc5R9O1bFFS/zX
	AQRNaikDVBbMrvNEL0qLerWGwfXaPoJgw1OZTagQkg7cTTkLILqIfEZDYkBFCOVIsMUsjrPtHJfnv
	X3IYayBN2WzD7HV3ARtmKNyoQdnSUCRXrbKcsvQfL6Vk4erfh6qfqMmppqT5SpoEn5xQJOiD7yAF+
	rk4rPI3bf3wZRECNsCxr979RXouXG6uNoOrNSdj/DSrH3tujBxKPUlYRXVBaNR0mfEkmgz8jowq5x
	Tsx6CA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioV87-0004MK-S9; Mon, 06 Jan 2020 16:21:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioV7w-0004Lu-Vz
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 16:21:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 267F240E1;
 Mon,  6 Jan 2020 17:21:09 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a10d4ade;
 Mon, 6 Jan 2020 17:20:58 +0100 (CET)
Date: Mon, 6 Jan 2020 17:20:58 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: e9hack <e9hack@gmail.com>
Message-ID: <20200106162058.GA86978@meh.true.cz>
References: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_082113_178070_EA108777 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

e9hack <e9hack@gmail.com> [2020-01-06 16:59:47]:

Hi,

> it looks like that uhttpd/luci/rpcd is broken again. The call 'ubus call
> luci-rpc getWirelessDevices' does fail 'Command failed: Request timed out'.

can you provide little bit more details?  I don't see any problems with
`OpenWrt 19.07-SNAPSHOT, r10857-abb0665bec` running on TP-Link Archer C7 v5.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
