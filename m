Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2C11A2A4A
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 22:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hk6IAVhnl+UO0IWCJlqlSds4ivJkfgrwgl4OsIAR8LU=; b=ReggXlZu3t0Abh
	v4JF5Fc1crcZHjpwVgZqXcOQVczHpxtfWWI7X4HKrgnTzWj7vUm7ImVeZQayRlGVwIiyhyHAaAdfC
	1sp9rgp3GbRyhyLiBW+RNhkBaHTh8cZZfCqYXnKaIKSpuxq1EnhtqiCJqEEiZNnXfLWs2i9TjbeKG
	jX7e6P6PeNO/UCqg70gL/bTM/Zt0VZEvhzhY8JTya/T2BGMSkwVHHd/+j5kN7m/iABBpWm0Wc3z59
	bLxd0eEQSt1M2ZS5h7mOdRLydjP8+cSiwHwLQLKEt7+pGZOYnSIZHEEfVfY8JsJUCVTajQPLv6oAj
	jgPv8EjNwV2//ZC9YOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMHGx-0006YX-NQ; Wed, 08 Apr 2020 20:26:07 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMHGq-0006Xy-Vn
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 20:26:02 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id ED186240004;
 Wed,  8 Apr 2020 20:25:56 +0000 (UTC)
Message-ID: <ae714cfd442aae07a66565381df9df8e263979cb.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: Petr =?UTF-8?Q?=C5=A0tetiar?= <ynezz@true.cz>, 
 20200405015929.736414-1-mail@aparcar.org
Date: Wed, 08 Apr 2020 10:25:52 -1000
In-Reply-To: <20200408190936.GA32039@meh.true.cz>
References: <20200408185713.6931-1-mail@aparcar.org>
 <20200408190936.GA32039@meh.true.cz>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_132601_156700_016FE3C4 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v2] phase1: Add JSON merging step
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAyMDIwLTA0LTA4IGF0IDIxOjA5ICswMjAwLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+
IFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9yZz4gWzIwMjAtMDQtMDggMDg6NTc6MTNdOgo+
IAo+ID4gdjI6Cj4gPiAgICogUmVtb3ZlZCB0aGUgYGhhbHRPbkZhaWx1cmVgIG9wdGlvbnMgYXMg
dGhpcyBtYXkgYnJlYWsgdGhlCj4gPiBjdXJyZW50Cj4gPiAgICAgYnVpbGRzIGlmIHRoZSBtZXJn
ZSBzY3JpcHQgc2hvdyBhbnkgdW5leHBlY3RlZCBlcnJvcnMgaW4gdGhlCj4gPiBidWlsZGJvdAo+
ID4gICAgIGVudmlyb25tZW50LiBUaGlzIG9wdGlvbiBzaG91bGQgYmUgYWRkZWQgYWdhaW4gb25j
ZSB0aGUgc2NyaXB0Cj4gPiBwcm9vZnMKPiA+ICAgICB3b3JraW5nLgo+IAo+IENyYXNoIGVhcmx5
LCBjcmFzaCBvZnRlbi4gV2UndmUgc3BlbnQgYWRkaXRpb25hbCB0aW1lIHRvIG1ha2UgdGhlCj4g
cGlwZWxpbmUKPiBmYWlsIGF0IGV2ZXJ5IHNpbmdsZSBzdGVwLCBub3cgeW91J3JlIGdvaW5nIHRv
IGRpc2FibGUgaXQ/IFdoeT8gRGlkCj4geW91Cj4gd2l0bmVzc2VkIHNvbWUgYnJlYWthZ2U/CgpJ
IG5vdyBmb3VuZCBhbm90aGVyIGlzc3VlIGZvciAibGVnYWN5IiBpbWFnZXMgd2hpY2ggaXMgZml4
ZWQgdmlhCgoJW1BBVENIXSBzY3JpcHRzOiBKU09OIG1lcmdlIGRvbid0IGNyYXNoIGlmIG5vIEpT
T04gZm91bmQKCj4gCj4gRnJvbSBteSBwb2ludCBvZiB2aWV3IGl0IGRvZXNudCBtYWtlIHNlbnNl
IGFuZCBpdHMgd2FzdGUgb2YgdGltZS4KClRydWUKPiAKPiAtLSB5bmV6ego+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
