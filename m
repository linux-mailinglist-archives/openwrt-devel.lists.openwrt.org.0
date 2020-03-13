Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4491846E1
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 13:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N9BzvTgHOXtI/Jq8xNqI0UDHqPtu5ZwSQPSTKgDoKpw=; b=t78MX70lMZnbISNN8rA+k8AsZo
	qdMr0wMrx4cdYkcDfkeU1SoY2veMQqLKfxflwDriaB+Nv6ukknJnfv23O76uhu7lJHfLXhSG9y+Ya
	moRXksoc+FtuN6GZTaBtbidoVBFItdyY6MTRo+O/1bs4Z0uOSepbnx6/o0z9q2tHAwM0MlbTgzWn+
	hp1UV/4yNK4KX48YoS5mCJF9FCUH7qfRR+YGg9+1fTS5j7EfHeXD6GKmIR6A+ihNosRJWjSKWyNKZ
	iqfYU2RyM1GuSuMu3qruPxHhmSF7sNq4flgm8mYgL17PA1BfL2fgpFWwm4Rlv0eadlwLgMkl2h151
	jxdCnhTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjRo-0004vI-NK; Fri, 13 Mar 2020 12:29:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjRe-0004ur-Fa
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 12:29:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A5B9536F9;
 Fri, 13 Mar 2020 13:29:39 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4337259d;
 Fri, 13 Mar 2020 13:29:26 +0100 (CET)
Date: Fri, 13 Mar 2020 13:29:26 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Message-ID: <20200313122926.GB56199@meh.true.cz>
References: <20200313000739.62880-1-mail@david-bauer.net>
 <87o8t0bqte.fsf@miraculix.mork.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8t0bqte.fsf@miraculix.mork.no>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_052942_671911_2DF1FBAE 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use downstream ag71xx for Kernel
 5.4
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+IFsyMDIwLTAzLTEzIDA5OjI5OjQ5XToKCj4gRGF2
aWQgQmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiB3cml0ZXM6Cj4gCj4gPiAtLS0gYS90YXJn
ZXQvbGludXgvYXRoNzkvZmlsZXMtNC4xOS9kcml2ZXJzL25ldC9ldGhlcm5ldC9hdGhlcm9zL2Fn
NzF4eC9hZzcxeHhfbWFpbi5jCj4gPiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvZmlsZXMvZHJp
dmVycy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X21haW4uYwo+ID4gQEAgLTE1
ODEsNyArMTU4MSw3IEBAIHN0YXRpYyBpbnQgYWc3MXh4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiAgCWFnLT5zdG9wX2Rlc2MtPm5leHQgPSAodTMyKSBhZy0+c3RvcF9k
ZXNjX2RtYTsKPiA+ICAKPiA+ICAJbWFjX2FkZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3MobnApOwo+
ID4gLQlpZiAobWFjX2FkZHIpCj4gPiArCWlmIChtYWNfYWRkciAmJiAhSVNfRVJSKG1hY19hZGRy
KSkKPiAKPiBiaWtlc2hlZGRpbmcuLi4KCk5vdCBiaWtlc2hlZGRpbmcgYXQgYWxsLCBnb29kIGNh
dGNoLiBJdCdzIGFuIGlzc3VlIHdoaWNoIHNob3VsZCBiZSBmaXhlZC4KCkl0IHNob3VsZCBiZSBq
dXN0IGBpZiAoIUlTX0VSUihtYWNfYWRkcikpYCBiZWNhdXNlIGl0J3MgZWl0aGVyIHZhbGlkIHBv
aW50ZXIKb3IgRVJSX1BUUiBzaW5jZSA1LjIgdmlhIGNvbW1pdCBkMDFmNDQ5YzAwOGEgKCJvZl9u
ZXQ6IGFkZCBOVk1FTSBzdXBwb3J0IHRvCm9mX2dldF9tYWNfYWRkcmVzcyIpLiBJIHdvdWxkIHNp
bXBseSBjb3B5JnBhc3RlIHRoZSBmcmFnbWVudCBmcm9tIHVwc3RyZWFtCmFnNzF4eC5jLgoKNjgx
LU5FVC1hZGQtb2ZfZ2V0X21hY19hZGRyZXNzX210ZC5wYXRjaCBuZWVkcyB0byBiZSB1cGRhdGVk
IGZvciA1LjQsIHRoYXQKb2ZfZ2V0X21hY19hZGRyZXNzX210ZCgpIHNob3VsZG4ndCByZXR1cm4g
TlVMTCwgYnV0IEVSUl9QVFIgaW5zdGVhZC4KCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
