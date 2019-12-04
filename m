Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1629D112CBE
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 14:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVjfEO/FNR4a0Ga5AD/Uk0Kiruzr0QcBx3vE496/Rkw=; b=KHC+aBvojHOANE
	EuiWh1vu+lrPQm7Hvg4VKjaq6+930M+v5/98vcGANRZbLKBhFCY0sEJAti00Wb9rAXcfRIoE8FmS0
	z78R2sqbOZ10+TMRfVxORwln9mIWxdfcl5KTG8JbXoX+Ff2aieLVPV5GNmG9/i1TkuXZPWd5+Q1T6
	EHGK96yniz8asijjQH7iSh0aZR6PLculKPoYAmHJqe2RgNWxMB8p4x6Vn98Jw7iVLMUxZztgZfcLX
	L+FDLM6k6VeeI8ZBA1Keye3Qcikt+XGDIaopeuDMt+rCRFoa3UI6U9p3kwa7GyCPfiDzBBFQ1ibha
	H7LOE5nnLbIuVAEF0T6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUqM-0002Fs-F5; Wed, 04 Dec 2019 13:37:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUqA-0002Ej-3p
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 13:37:17 +0000
Received: by mail-oi1-x244.google.com with SMTP id l136so6882521oig.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Dec 2019 05:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=f3O0yM5cLY5tnTtTHfF1m9uFrYii9n5kvQBKs59mVv4=;
 b=H8QdWewBjm1EeLSHWrWwWBUAGNIb8lgUzYC08L5SGMs93TgcPm8RxcxLevjD2FocCD
 vCk/VIoDi0LwEDZx0B9LmdEIikdQbOS55fvZIgPGn249ntSz2cnHmZiqJX4W3d9DNcez
 aEvxourV933zQ9+1zF+zLpE0ZHKt7ReMqWcjGCOg9lzyWIVyru2ZFHi29HXheSsft1bf
 xU8Hif++BMrrzi4xGxH898/WELd9uvTWZTMNRLtasBr8w39+xpslzAjbTo4Xs7WA8JCs
 4A97G5V+c0ZCpDbJzGsloXPJDjDIvhGMMHGxAr4MbeAe+wsunL1ABGF2CrSDHPdxIhtB
 poSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=f3O0yM5cLY5tnTtTHfF1m9uFrYii9n5kvQBKs59mVv4=;
 b=jv6rankCMf4sIMuKGw+qS3Wc3JmxvS/xBvOiOrD5iiOMTn1pm8PaDVUUEeolA9BQBt
 kZX5SfOvfYH3nIPx4ZLw2SNxFGgralqmwHR1W6lWWjC7CtjISfNP62zsQFBZh7JhElWw
 bigQJL58+g3pLRmqsll1id6s3ns/nr7hDpk/b3GiABFTQLlfaY+K1qfL1iYUD8BPaDNA
 azPIcg7hApjMOMaubRreuN1/9OiIltxzLA+8ol/M03Ch1tZ8xM3zw7TryhwxDnFD2FlA
 65IiS1re+EQ6JnYn7oU5YSDmocgIi0ro6O2QUDPKI77LZtnSziqi2f48Djtbk1HC55gd
 Sgmg==
X-Gm-Message-State: APjAAAXQE5kRyfo7zELUbLO2KdkYWWsGPvHB7MsvBZqD+zfnPZVKbvCz
 3mWwmdKu9xhZjJKjqDHMb4mU1Z5aylQQ2QoVFmE=
X-Google-Smtp-Source: APXvYqyXQOw1p+/JgwWgW1en1kT3kclxVThSYS12/4n4rq/x/NfIj85zVWEjPipFBut36e/OFiq03EmKsYeTU3WC9xw=
X-Received: by 2002:aca:3b54:: with SMTP id i81mr2654351oia.155.1575466632694; 
 Wed, 04 Dec 2019 05:37:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Wed, 4 Dec 2019 05:37:12 -0800 (PST)
In-Reply-To: <012e01d5a9d6$c03434c0$409c9e40$@adrianschmutzler.de>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <20191203120930.GC8181@meh.true.cz>
 <010701d5a9d3$92f3c320$b8db4960$@adrianschmutzler.de>
 <20191203123144.GE8181@meh.true.cz>
 <12d89195-b1b7-5f9e-52a8-5411ad142733@linux-ipv6.be>
 <012e01d5a9d6$c03434c0$409c9e40$@adrianschmutzler.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 4 Dec 2019 14:37:12 +0100
Message-ID: <CAKR_QVJJGjHrwj=vE_UkAi4YkKQYLarJgT250jCJ2zTQTxfRsA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_053715_667225_3F426B5D 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q3VycmVudCBjaGFuZ2VzIGZyb20gU3Rpam4ncyBicmFuY2ggbG9vayBmaW5lLCBJJ3ZlIGFwcGxp
ZWQgdGhlbSB0bwp0aGUgbWFzdGVyIGNsb25lIGZyb20gRGVjIDJuZCwgYnVpbHQgYW5kIGZsYXNo
ZWQ7IG1hYyBhZGRyZXNzZXMgYXJlCmNvcnJlY3QsIGV0aGVybmV0IGlzIHdvcmtpbmcgYXMgd2Vs
bCBhcyBib3RoIHdpZmkgaW50ZXJmYWNlcy4KCk9uIDAzLzEyLzIwMTksIEFkcmlhbiBTY2htdXR6
bGVyIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+IHdyb3RlOgo+IExHVE0uIChIYXZlbid0IGNo
ZWNrZWQgdGhlIG5ldHdvcmsgc2V0dXAuKSA6LSkKPgo+IEFkcmlhbgo+Cj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IFN0aWpuIFRpbnRlbCBbbWFpbHRvOnN0aWpuQGxpbnV4
LWlwdjYuYmVdCj4+IFNlbnQ6IERpZW5zdGFnLCAzLiBEZXplbWJlciAyMDE5IDEzOjMzCj4+IFRv
OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PjsgQWRyaWFuIFNjaG11dHpsZXIKPj4gPG1h
aWxAYWRyaWFuc2NobXV0emxlci5kZT4KPj4gQ2M6IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmc7IHBvemVnYS50b21pc2xhdkBnbWFpbC5jb20KPj4gU3ViamVjdDogUmU6IFtPcGVuV3J0
LURldmVsXSBbUEFUQ0hdIGF0aDc5OiBhZGQgc3VwcG9ydCBmb3IgVWJpcXVpdGkKPj4gTGl0ZUJl
YW0KPj4gQUMgR2VuMgo+Pgo+PiBPbiAzLzEyLzIwMTkgMTQ6MzEsIFBldHIgxaB0ZXRpYXIgd3Jv
dGU6Cj4+ID4gQWRyaWFuIFNjaG11dHpsZXIgPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gWzIw
MTktMTItMDMgMTM6MTc6MDRdOgo+PiA+Cj4+ID4+IE90aGVyIHVibnQtd2EgZG8gdGhpcywgdG9v
LCB0aGV5IGp1c3QgZG8gbm90IGRlZmluZSBpdCBpbiBwYXJlbnQgbm9kZToKPj4gPiBPaywgSSd2
ZSBjaGVja2VkIG9ubHkgdGhlIHBhcmVudCBub2RlLgo+PiA+Cj4+ID4+IFNvLCB0aGUgcXVlc3Rp
b24gaXMgd2hldGhlciBpdCB3b3VsZCBtYWtlIHNlbnNlIHRvIHJlbW92ZSB0aGUgbGluZSBmb3IK
Pj4gPj4gYWxsIHRoZQo+PiBvdGhlciB1Ym50LXdhIGRldmljZXMsIHRvbywgdGhlbi4KPj4gPiBJ
IHdvdWxkIHJlbW92ZSBpdCwgaXQgZG9lc24ndCBtYWtlIHNlbnNlIGFuZCBpcyBtaXNsZWFkaW5n
Lgo+PiA+Cj4+ID4gLS0geW5lenoKPj4KPj4gVXBkYXRlZCBteSBzdGFnaW5nIHRyZWUgYWdhaW46
Cj4+IGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvc3RhZ2luZy9zdGludGVsLmdp
dDthPXNob3J0bG9nO2g9cmVmcy9oZWFkcwo+PiAvbGJlLTVhYy1nZW4yCj4+Cj4+IFRoYW5rcywK
Pj4gU3Rpam4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
