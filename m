Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B1B177215
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 10:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZMiESLCwuHpsLVXnQySI6zpY9QD6gcwLbt/WxHFoqOI=; b=dMqrRON6gFCIFXF7bI7Z9pfrJJ
	fcV/fI2vUQg6VaTvvwgHE0HSmfANX6JdCw0siLujx7A6b/SXuLXWb+tnP/IdvUAhLtk/PABKuyc07
	WMDyHjK2Z6flYTZuaS0Wlnbq6jeVLCSDwzIeN/wG7fm4fEnFcxV2rr1eaW49AOeIheHADVpaUMzR/
	cwjY+UcdGMnJAOQ5qenammh+IWM1zCgKDcixy68YBZm5+f0S3KrydlVIgyu3IkLWV2gwoqZA8A6xg
	ZE2mscubWJ69ShZ9ud/eAYOCI51m29ZpO5UwcrEuIaoMRHMTKo7hJeElUuJ+pyIPNS0saBR/YWgGr
	O7JOh8bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93bN-0003Z3-5t; Tue, 03 Mar 2020 09:12:33 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93bG-0003YT-7G
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 09:12:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4E6DB38AC;
 Tue,  3 Mar 2020 10:12:23 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6746b871;
 Tue, 3 Mar 2020 10:12:09 +0100 (CET)
Date: Tue, 3 Mar 2020 10:12:09 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200303091209.GA94262@meh.true.cz>
References: <20200301024850.1528027-1-mail@aparcar.org>
 <20200301123433.GD33354@meh.true.cz>
 <ccac7a1c-7d58-c206-3402-b233d5309a1a@aparcar.org>
 <20200302110544.GD70913@meh.true.cz>
 <4d9299e0-f28e-aaf8-9b07-06325826b311@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d9299e0-f28e-aaf8-9b07-06325826b311@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_011226_412725_2E07B848 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
 `profiles.json`
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

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiBbMjAyMC0wMy0wMiAxNjoxOTowNV06Cgo+
IC3CoCAuSUdOT1JFOiAkKEJJTl9ESVIpLyQoY2FsbCBJTUFHRV9OQU1FLCQoMSksJCgyKSkKPiAK
PiBbLi4uXQo+IAo+IMKgwqAgJChCSU5fRElSKS8kKGNhbGwgSU1BR0VfTkFNRSwkKDEpLCQoMikp
OiAkKEtESVIpL3RtcC8kKGNhbGwKPiBJTUFHRV9OQU1FLCQoMSksJCgyKSkKPiAtwqDCoMKgwqDC
oMKgIGNwICQkXiAkJEAKPiArwqDCoMKgwqDCoMKgIC1jcCAkJF4gJCRACj4gCj4gVGhlIHByZWZp
eGVkIGRhc2ggaWdub3JlcyBhIGZhaWx1cmUuCgpUaGlzIGNoYW5nZSBzZWVtcyBsaWtlIGEgYmFu
ZC1haWQgYXMgSSByZWFsbHkgZG9uJ3Qgc2VlIGEgcmVhc29uIHRvIHRvdWNoIHRoZQpleGlzdGlu
ZyBjb2RlIGp1c3QgYmVjYXVzZSB5b3UndmUgcHV0IHRoZSBKU09OIGdlbmVyYXRpb24gaW4gdGhh
dCBwbGFjZQppbml0aWFsbHkuCgpJIHdvdWxkIHByb2JhYmx5IHRyeSB0byBtYWtlIHRoYXQgSlNP
TiBmaWxlIE1ha2UgdGFyZ2V0LCBzb21ldGhpbmcgbGlrZToKCiAkKEpKU09OX0ZJTEVOQU1FKTog
d2hhdGV2ZXItcHJlcmVxdWlzaXRlcy10aGF0LWpzb24tbmVlZHMKIAlqc29uLWdlbmVyYXRvci5w
eSA+ICQkQAoKVGhlbiBhZGQgdGhpcyB0YXJnZXQgYXMgcHJlcmVxdWlzaXRlIHRvIGFub3RoZXIg
TWFrZSB0YXJnZXQsIGlkZWFsbHkgb25lIHdoaWNoCnNob3VsZCBwcm9kdWNlIHNvbWUgb3V0cHV0
LCBub3QgaWdub3JpbmcgdGhlIGVycm9ycy4gSWYgdGhhdHMgbm90IHBvc3NpYmxlIEkKd291bGQg
cHJvYmFibHkgY2hhbmdlIHRoZSB0YXJnZXQvcHJlcmVxdWlzaXRlcyBkZXBlbmRlbmN5IHNvbWVo
b3cgZXRjLgoJCj4gSW4gc2NyaXB0cy9qc29uX2FkZF9pbWFnZV9pbmZvLnB5Cj4gCj4gK2ltYWdl
X2ZpbGUgPSBiaW5fZGlyIC8gZ2V0ZW52KCJJTUFHRV9OQU1FIikKPiAraWYgbm90IGltYWdlX2Zp
bGUuaXNfZmlsZSgpOgo+ICvCoMKgwqAgcHJpbnQoIlNraXAgSlNPTiBjcmVhdGlvbiBmb3Igbm9u
IGV4aXN0aW5nIGltYWdlICIsIGltYWdlX2ZpbGUpCj4gK8KgwqDCoCBxdWl0KCkKPgo+IFRoaXMg
d2F5IHRoZSBQeXRob24gc2NyaXB0cyBkZXRlY3RzIGFuIGltYWdlIHdhc24ndCBjb3BpZWQgYW5k
IHF1aXRzLiAKCkFub3RoZXIgYmFuZC1haWQsIGJ1dCBJIHVuZGVyc3RhbmQsIHRoYXQgZml4aW5n
IHRoYXQgcHJvcGVybHkgd291bGQgYmUgYSBodWdlCnRhc2suIEkgdGhpbmssIHRoYXQgdGhlIC5J
R05PUkUgaXMgdGhlcmUgdG8gd29ya2Fyb3VuZCB0aGUgYWJ1c2VkIGltYWdlCmdlbmVyYXRpb24g
Y29kZSBmb3Igc3R1ZmYgbGlrZSBEVEJzIGV0Yy4gYW5kIHByb2JhYmx5IGZldyBtb3JlIGNvcm5l
ciBjYXNlcwpJJ20gbm90IGF3YXJlIGFib3V0IGFuZCB0aGF0IGNvbW1pdCBhMWI3MjViYmE1MzQg
KCJidWlsZDogaWdub3JlIGVycm9ycyBvbgpjb3B5aW5nIGZpcm13YXJlIGJpbmFyaWVzIGZyb20g
JChLRElSKSB0byAkKEJJTl9ESVIpIikgaXMgbWlzc2luZyBjb21taXQKZGVzY3JpcHRpb24gc28g
d2hvIGtub3dzIDopCgo+IElzIHRoYXQgd2hhdCB5b3UncmUgbG9va2luZyBmb3I/CgpJdCBkb2Vz
bid0IGh1cnQgKGFuZCBpcyBwcm9iYWJseSBuZWNlc3NhcnkpLCBidXQgSSB3YXMgcHJvdmlkaW5n
IHlvdSB3aXRoIHRoZQplcnJvciB3aGljaCB3YXMgcmVsYXRlZCB0byB0aGUgcHJldmlvdXMgY29k
ZS9KU09OIHBhcnNpbmcgd2hpY2ggeW91J3JlIHNheWluZwpzaG91bGQgYmUgZml4ZWQgbm93OgoK
IGpzb24uZGVjb2Rlci5KU09ORGVjb2RlRXJyb3I6IEV4dHJhIGRhdGE6IGxpbmUgMzUgY29sdW1u
IDIgKGNoYXIgODIzKQoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
