Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A39412D4E4
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 23:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jgj9OWkkroGDplOQu1rFpI8NPZ3735mARsk31g5ybqU=; b=rY1t+5MN+PEidVDItUbrNFLSEd
	N2HuXrpmSYdAuLwzX20nEimZDYYyVJck5JXoD0ivoORc525nQX/tcG2hKwCblMkatznxs6XrYc5fU
	GBCKTSF4k5dG2THxTV/pn5993mNTpT0C1bstg3QP7jFDTx9IQJp4gLvZxRUmOk98yGLYRAdLoLuzP
	/cxOSuf6TjPaQnDoaYlM0yBoc9xoS7i/tdL6A1WkdVHgjXRG9HKuchs3cUB5JtDs+AGX03pXEdwoQ
	qbkJBjcr/fuudLeUeOMKy1XP9JAMM1yRpkFB3VZsLPDRXeaCW7EGIZVHG+0Vr/haAZbsOb/FmmUVW
	CGw2L3sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im3y3-0006Yu-Kn; Mon, 30 Dec 2019 22:56:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im3xw-0006YK-E9
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 22:56:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1E591424E;
 Mon, 30 Dec 2019 23:56:43 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8aff4d52;
 Mon, 30 Dec 2019 23:56:31 +0100 (CET)
Date: Mon, 30 Dec 2019 23:56:31 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20191230225631.GJ70184@meh.true.cz>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz>
 <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_145648_622739_23BD8CA7 
X-CRM114-Status: UNSURE (   3.70  )
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

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMTktMTItMzAgMjA6NDM6MzZdOgoKSGksCgo+
IEkgd2lsbCBkbyBteSBiZXN0IHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUgZ2l2aW5nIG1vcmUgZGV0
YWlscywgSSB3aWxsIHBvc3QKPiBhbnkgbW9yZSBkZXRhaWxzIGhlcmUgdG9tb3Jyb3cuCgppZiBJ
IG1heSwgY2FuIHlvdSBkbyBmb2xsb3dpbmcgZm9yIHRoZSBzdGFydDoKCjEuIGFkZCBmb2xsb3dp
bmcgY2hhbmdlIChjaGFuZ2luZyBpdCBkaXJlY3RseSBvbiBkZXZpY2UgcmlnaHQgYmVmb3JlIHN0
ZXAgMi4KICAgc2hvdWxkIGJlIGVub3VnaCk6CgogZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy91c3IvbGliZXhlYy92YWxpZGF0ZV9maXJtd2FyZV9pbWFnZQogYi9wYWNrYWdl
L2Jhc2UtZmlsZXMvZmlsZXMvdXNyL2xpYmV4ZWMvdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2UKIGlu
ZGV4IGY4NWZiOWU0YjQzNS4uYWVkOWNkZmQ2NGI1IDEwMDc1NQogLS0tIGEvcGFja2FnZS9iYXNl
LWZpbGVzL2ZpbGVzL3Vzci9saWJleGVjL3ZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlCiArKysgYi9w
YWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvdXNyL2xpYmV4ZWMvdmFsaWRhdGVfZmlybXdhcmVfaW1h
Z2UKIEBAIC02Miw1ICs2Miw2IEBAIGpzb25faW5pdAogICAgICAgICBqc29uX2FkZF9ib29sZWFu
IHZhbGlkICIkVkFMSUQiCiAgICAgICAgIGpzb25fYWRkX2Jvb2xlYW4gZm9yY2VhYmxlICIkRk9S
Q0VBQkxFIgogICAgICAgICBqc29uX2FkZF9ib29sZWFuIGFsbG93X2JhY2t1cCAiJEFMTE9XX0JB
Q0tVUCIKICtqc29uX2R1bXAgLWkgPiYyCiAganNvbl9kdW1wIC1pCiAganNvbl9zZXRfbmFtZXNw
YWNlICRvbGRfbnMKCjIuIHJ1bjoKCiAkIHVidXMgbW9uaXRvciAmCiAkIHN5c3VwZ3JhZGUgLXYg
b3BlbndydC1icmNtMjcwOC1iY20yNzExLXJwaS00LXNxdWFzaGZzLXN5c3VwZ3JhZGUuaW1nLmd6
CgphbmQgc2VuZCB0aGUgb3V0cHV0LCB0aGFua3MhCgotLSB5bmV6egoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
