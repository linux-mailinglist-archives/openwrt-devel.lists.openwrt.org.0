Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F217A4D3
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 11:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6z39mEgUqmXxublYLGMDkJOyFOakfz4W1RyxI7e/TfM=; b=q5m486CrPreiVdoVI6DPky+axE
	cQEkFAnEWloy7Ndb6gyUaeJkUTdwZyEkJgLBT3omKNj57lEiu/Lvl0pdMVStvWcRw7tSoGMsYwZ8h
	p0GW7SdS8iQ+W/z/H3XKOJF69gVqb0L5T06WpB1fBLDn7lrtUn7K7BGqrHALuNehA/YMBMnv81ZUg
	zUFr8N/Vvyriv2Wrk6N3kj8cnqu/H5YwCCCiUQxo3kL626rkmItJQq63k+Cd57pN4STzgXybOAtuC
	pfeRbzEDaDNRv1sGnBGtsi+nWGJ28FkS85EdWG90pFCs/qN4wdrMy18wxK6vMFQ9x8FodNzHjkLGi
	L6axVADg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOdl-0004d3-33; Tue, 30 Jul 2019 09:41:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOZT-0008FV-Q1
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 09:37:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E321B3F14;
 Tue, 30 Jul 2019 11:37:12 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id dc120565;
 Tue, 30 Jul 2019 11:37:05 +0200 (CEST)
Date: Tue, 30 Jul 2019 11:37:05 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dmitry Tunin <hanipouspilot@gmail.com>
Message-ID: <20190730093705.GF74752@meh.true.cz>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023728_103389_F0DB224E 
X-CRM114-Status: UNSURE (   5.31  )
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
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dmitry Tunin <hanipouspilot@gmail.com> [2019-07-29 19:28:11]:

Hi,

> What is the point of excluding ath79?

a) we've simply forget to make ath79 source-only right after the 19.07 branch,
   sorry for the confusion or false expectations it might have introduced

b) it was decided some time ago, that 19.07 is last release with ar71xx,
   nothing about ath79 in 19.07

c) it would demand twice the automated builds and the space they take up, as
   well as twice the confusion

d) nobody is going to support both ar71xx and ath79 in 19.07, it's not just
   about images, you need to take support into the account, like bug reports,
   backporting of fixes etc.

e) if you want to use ath79, you should use snapshot images (and expect support) or 
   build 19.07 for ath79 yourself (but don't expect much support)

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
