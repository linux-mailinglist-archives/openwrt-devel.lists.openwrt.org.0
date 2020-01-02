Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CF312E9EA
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 19:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6E71D9uqWD/MRa8xg0fTBicN6aXM4geuzbXLVvmwOqc=; b=ivTFLUmoLBm8NE08WUTt5EiPhH
	TYMVnbW/BpjCNB7anekFaT+PfkqmQSgwhHz828HiTzBlk9PrIW1ERRxxFkX/tr7VtNkbyVVlMaGDe
	hXX4mY8GRSz2f51FDvXp9zrUAWMqjjJL0pIgD2/1JRpQQrSGSIkJTzqfd7jgsxqinaME2gSYGTcUB
	kD5Adgq/r0emrSFiDJoLxBrWUWRjjdSwFGf6IYqZSRJmwi3tmWvKBZ/vcvNN+0MdRAiPAq9aDjiG0
	FXotrXMk2mzBmYwLJqBRyWOulbwaPVyTe2Ma5ArJDC+TD4Yg7ODWfRY8w2EvfL54gW4bpx2VV0C5c
	VDmq/XUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in5BZ-0008B3-T2; Thu, 02 Jan 2020 18:27:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in5BS-00089e-Bz
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 18:27:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EF8064E5F;
 Thu,  2 Jan 2020 19:26:53 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 48d2acd0;
 Thu, 2 Jan 2020 19:26:43 +0100 (CET)
Date: Thu, 2 Jan 2020 19:26:43 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20200102182643.GU70184@meh.true.cz>
References: <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
 <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
 <5B5E9BA4-0BE8-4FDD-B089-35658B983306@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5B5E9BA4-0BE8-4FDD-B089-35658B983306@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_102658_562073_43F0D265 
X-CRM114-Status: UNSURE (   2.66  )
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
Cc: Hannu Nyman <hannu.nyman@iki.fi>, openwrt-devel@lists.openwrt.org,
 Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMjAtMDEtMDIgMTg6NDA6MThdOgoKPiBXYXMg
dGhlIFFlbXUgdGVzdCBQZXRyIFMuIGhhcyBkb25lIGJlZW4gcnVubmluZyBhIG11bHRpLWNvcmUg
b3Igc2luZ2xlIGNvcmUgZW11bGF0aW9uPwoKSSB1c2UgNCBjb3JlcywgNTEyTSBSQU0gYXMgZGVm
YXVsdCBmb3IgdGhlIFFFTVUgbWFjaGluZXMuICBJJ20gYWxzbyB0ZXN0aW5nIG9uCmlwcTQwMTgs
IG10NzYyMSBhbmQgaS5NWDYgd2hpY2ggYXJlIG11bHRpY29yZS4KCi0tIHluZXp6CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
