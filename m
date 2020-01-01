Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9332812DEE5
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 13:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YwHPmhD0P1fam576o7Outfzhh5rdshyS36ImqR35JZc=; b=MbvaNw03lT2BX0AVLPxqmt610R
	+jQRcFhIMFw4Z4K3uMj9uvF29JStE1FEff3PlbxcdRXTnZFz45S4+VNFhOKHwk5I4YaUFR1Al06pM
	gTe4C2OM+p1FzKKqRNo+M84Qz2eYWSa5O/Xb2YUXa6VszOmGSZ4XSEueKqaTOCDRpyk7++RkBK/z4
	Y/HRUXOQspe/4zquUgat+ThmK04WJQhFCBi11Fsh9Q/873zCl6OTvyDXuvDMG/LimlHW90HZSvddf
	Remx3z+lfObInzVwX/HnmqhLWBXJuVKNZoPSWMsyC75QWktLDW7XRWbGMgJnXMx7q18ZCoJWBLAI8
	q3PCzfBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imdNI-00067l-Le; Wed, 01 Jan 2020 12:45:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imdNB-0005Zt-De
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 12:45:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 71C84482B;
 Wed,  1 Jan 2020 13:45:04 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 92a642de;
 Wed, 1 Jan 2020 13:44:53 +0100 (CET)
Date: Wed, 1 Jan 2020 13:44:53 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20200101124453.GM70184@meh.true.cz>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz>
 <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_044513_612398_A14FA6AA 
X-CRM114-Status: UNSURE (   4.09  )
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

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMTktMTItMzEgMTQ6NTY6MTNdOgoKSSB3YXMg
c3VzcGVjdGluZyBzb21lIGlzc3VlIGluIGpzaG4sIHdoaWNoIGVtcG93ZXJzIHRoZSBqc29uX2R1
bXAgY29tbWFuZCwgYnV0Cml0IHNlZW1zLCB0aGF0IHRoZSBKU09OIHBhc3NlZCBmcm9tIC91c3Iv
bGliZXhlYy92YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSBiYWNrCnRvIHZhbGlkYXRlX2Zpcm13YXJl
X2ltYWdlX2NhbGwoKSBsb29rcyBjb3JyZWN0OgoKPiB7Cj4gCSJ0ZXN0cyI6IHsKPiAJCSJmd3Rv
b2xfc2lnbmF0dXJlIjogdHJ1ZSwKPiAJCSJmd3Rvb2xfZGV2aWNlX21hdGNoIjogdHJ1ZQo+IAl9
LAo+IAkidmFsaWQiOiB0cnVlLAo+IAkiZm9yY2VhYmxlIjogdHJ1ZSwKPiAJImFsbG93X2JhY2t1
cCI6IHRydWUKPiB9CgpidXQgdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbCgpIHNvbWVob3cg
ZG9lc24ndCBnZXQvcGFyc2UgaXQgYW5kIHlpZWxkczoKCj4gewo+IAkiZXJyb3IiOiB7Cj4gCQki
bWVzc2FnZSI6ICJGaXJtd2FyZSBpbWFnZSBjb3VsZG4ndCBiZSB2YWxpZGF0ZWQiCj4gCX0KPiB9
Cgpsb29raW5nIGF0IHRoZSB2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZV9jYWxsKCkgSSByZWFsbHkg
ZG9uJ3Qgc2VlIGFueXRoaW5nIHJlbGF0ZWQgdG8KbGlidWJveCB3aGljaCB3b3VsZCBsZWFkIHRv
IHRoaXMgZXJyb3IsIHNvIGNhbiB5b3UgcGxlYXNlIHRyeSBhZ2FpbiB3aXRoIG1vcmUKdmVyYm9z
ZSB2ZXJzaW9uIG9mIHByb2NkWzFdPyBUaGFua3MhCgoxLiAgaHR0cHM6Ly9naXRsYWIuY29tL3lu
ZXp6L29wZW53cnQvY29tbWl0L2E4ZGI5NzNjYzJiY2Y4ZDg3N2I5Mzk4MDFlYmE1MjlmMjlhYjdk
M2EKCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
