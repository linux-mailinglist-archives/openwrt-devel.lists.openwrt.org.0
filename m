Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFF427C8A
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 14:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gmk0LdsKH7W+9EnwB4x72FNGEOZT8KiVAAjy/T98AqE=; b=aDn2GXVxZka1ObLCZcHLzhMe+f
	9yl2pNOUTOiFid0+vjyRnvsfF7+UDxE1gAAeccyW8VO9DKfy8SykzyeSsK8UGyk5XqgmzC6s3Pyr5
	7j90jZWC+c+ZTPRAkZpv81VTDXmR+7GA2s6L419SJJJ3M55O5vzOPw4Y+TnWbFMXtAW/9eJ9FcovG
	Ns+nPdw66eGddXYiwmiqFqjrHzkMjie+6CO5220xeS9igng3QpyJ1FnCWE/2xNbLVEQPxxaGKV8Or
	eJHZA2VZdlYpGw5cqZMnqbJDWy7GDUBeRg4h2LN61bRVetm+Ubnw8GMQ8kLGPF7mXXtJWM6P4Lj2n
	PxaH3miA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTme1-0005jF-DM; Thu, 23 May 2019 12:16:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmdv-0005ix-9G
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 12:16:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1051A4D4C;
 Thu, 23 May 2019 14:16:17 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 155363b1;
 Thu, 23 May 2019 14:16:16 +0200 (CEST)
Date: Thu, 23 May 2019 14:16:15 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190523121615.GB50588@meh.true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
 <20190523103035.GD4606@meh.true.cz>
 <3e67359e-14ab-1596-2ec9-e08b38d63d9d@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e67359e-14ab-1596-2ec9-e08b38d63d9d@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_051619_477512_9985A6C2 
X-CRM114-Status: UNSURE (   6.39  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] procd: add docker support
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiBbMjAxOS0wNS0yMyAxMzozNjozN106Cgo+
IE5vLCB0aGFua3MgZm9yIHRoZSBsaW5rLiBTZWVtcyB0aGF0IERvY2tlciBub3cgdXNlcyBMWEMg
YW55d2F5IHdoaWNoCgpObyBtb3JlWzFdIDotKQoKIFJlbW92ZSBMWEMgc3VwcG9ydC4KCiBUaGUg
TFhDIGRyaXZlciB3YXMgZGVwcmVjYXRlZCBpbiBEb2NrZXIgMS44LiAgRm9sbG93aW5nIHRoZSBk
ZXByZWNhdGlvbgogcnVsZXMsIHdlIGNhbiByZW1vdmUgYSBkZXByZWNhdGVkIGZlYXR1cmUgYWZ0
ZXIgdHdvIG1ham9yIHJlbGVhc2VzLiBMWEMgd29uJ3QKIGJlIHN1cHBvcnRlZCBhbnltb3JlIHN0
YXJ0aW5nIG9uIERvY2tlciAxLjEwLgoKPiByZXN1bHRzIGluIHRoZSBhdmFpbGFiaWxpdHkgb2Yg
Y29udGFpbmVyPWx4YyBpbiAvcHJvYy8xL2Vudmlyb246Cj4gCj4gwqDCoMKgIHJvb3RAZGY5OTky
ZTRjNTE4Oi8jIGNhdCAvcHJvYy8xL2Vudmlyb24KPiDCoMKgwqAKPiBIT1NUTkFNRT1kZjk5OTJl
NGM1MThTSExWTD0xSE9NRT0vcm9vdGNvbnRhaW5lcj1seGNURVJNPXh0ZXJtUEFUSD0vdXNyL3Ni
aW46L3Vzci9iaW46L3NiaW46L2JpblBXRD0vcm9vdEBkZjk5OTJlNGM1MTg6LyMKCllvdSdyZSBw
cm9iYWJseSBqdXN0IHVzaW5nIHNvbWUgYWxyZWFkeSBvYnNvbGV0ZSB2ZXJzaW9uIG9mIGRvY2tl
ci1jZS4KCj4gVGhhbmtzLCBJJ2xsIGxvb2sgaW50byB0aGF0LiBBcyBJIHVuZGVyc3RhbmQsIHRo
ZSBjb250YWluZXJzIGRvbid0IG5lZWQKPiAqaW5pdCosIGJ1dCB0aGUgZGVhY3RpdmF0aW9uIHdv
dWxkIGJlIHJlcXVpcmVkIG9uIHJ1biB0aW1lLCBub3Q/Cgpwcm9iYWJseSBtaXggb2YgYm90aCwg
YnV0IEkgZGlkbid0IGxvb2tlZCBhdCB0aGlzIGluIG1vcmUgZGV0YWlsLCBqdXN0IHlvdXIKcHJv
cG9zZWQgY2hhbmdlIGRpZG4ndCBsb29rZWQgY29ycmVjdCB0byBtZS4KCjEuIGh0dHBzOi8vZ2l0
aHViLmNvbS9kb2NrZXIvY2xpL2NvbW1pdC9jNWVkODc1YmQ5M2YzMDdiODhjMTQ2ZWY1OTNkNjkx
MDhhYjEyNmI2CgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
