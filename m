Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A161ED039
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 14:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xWnH0Hem/a3cigYMCjgxDKTYbt46wmKVcBs6z2aeAOg=; b=DoJoEyWpajBOUY3DvdNXPKfr6N
	mss9nfhV5nXLDTxem+lpU3qD2kMRJpo4C8LrJoBb1JTLAVFunS4mP67d31/H8ofn8pB/q2FP0opYl
	2CcmKMOG5MIao98VD3/yRq3Lq3xujMtEpkgUbuf/sQugXNJpdEFkzkeKyrVjEVJeqp6jbKkdrhGGH
	HKF2Bri2k4960cjV17w9ZHZAUr2UeUYSxhAtFW+XaPHKJEY4kBkkgZIFHozOsIeWwn6GvwzEcf8Ix
	fwI8+i7wrUqhlal9lkSQoq5WmyhxXbUIp8gzxboDcvsAEjPjpirwHiyzSRBDZMp2LPVMa3l2VBSfv
	TWhbvu1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSto-00046A-6p; Wed, 03 Jun 2020 12:53:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgStg-00045j-KK
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 12:53:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 441B54A87;
 Wed,  3 Jun 2020 14:53:30 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 87b675b3;
 Wed, 3 Jun 2020 14:53:14 +0200 (CEST)
Date: Wed, 3 Jun 2020 14:53:14 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20200603125314.GD36571@meh.true.cz>
References: <20200520123305.30994-1-pali@kernel.org>
 <20200603113001.GA9798@meh.true.cz>
 <20200603124823.5zgu4nncgzmeembn@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603124823.5zgu4nncgzmeembn@pali>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_055332_813920_BCFEFBF9 
X-CRM114-Status: UNSURE (   4.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for
 Marvell 88W8997 SDIO wifi card
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gWzIwMjAtMDYtMDMgMTQ6NDg6MjNdOgoKPiBX
aGF0IGRvIHlvdSBzdWdnZXN0IHRvIHB1dCBpbnRvIGNvbW1pdCBkZXNjcmlwdGlvbiBvZiBzdWNo
IHNtYWxsIGNoYW5nZQo+IHdoZXJlIGNvbW1pdCB0aXRsZSBhbHJlYWR5IGNvbnRhaW5zIGRlc2Ny
aXB0aW9uIG9mIHRoZSB3aG9sZSBjaGFuZ2U/Cgpsc3BjaSBvdXRwdXQgYXMgaW4geW91ciBvdGhl
ciBwYXRjaCwgc2ltcGx5IHNvbWV0aGluZywgb3RoZXJ3aXNlIGl0IG1lYW5zCmFkZGl0aW9uYWwg
d29yayBmb3IgbWUKCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
