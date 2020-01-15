Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7C513B67B
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 01:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lrj7orPHLDWL4ZFLJMyNknNxSx1R1A32uvwVcMsSmoQ=; b=jy3vWUnJAS4ei8oktKuJRixeji
	nMVvxTBDsFTUW1NeHJqbNr2EhZ5tsl/paHOMsb1UQH7/hH/Q9moK+6wPRnUws4P0ChAkFtli+eoWh
	o7CpwbgsGWS8BaiByaSYTY8aAzRuNKMs9qM/Yl4vLqyyMV1gbv/kPCedLHh/oxHBDqafGA18qydxQ
	e6vGSCRBZHq4FNDJFY/vEAwHkHdmheX1vdz5H7MPVu4topEiuNRZ4ZOEK869ItaEsyPrE1A0JMH4K
	qbDHNI7ulXMO9iE6cpmmRNYIt/OMSTpu40aM5yjx3S0KO9aafOULpyOkiIkAKf6rWt0aKpHwVM3ae
	kFjFqMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irWKF-0007Eh-Da; Wed, 15 Jan 2020 00:14:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irWK5-00078w-9N
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 00:14:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D57FB4CEF;
 Wed, 15 Jan 2020 01:14:07 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 158b31ae;
 Wed, 15 Jan 2020 01:13:57 +0100 (CET)
Date: Wed, 15 Jan 2020 01:13:57 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>
Message-ID: <20200115001357.GA84286@meh.true.cz>
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
 <20200112120957.GF86978@meh.true.cz> <20200114211118.GA160861@pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114211118.GA160861@pc>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_161413_475409_DB492E34 
X-CRM114-Status: GOOD (  14.58  )
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
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, luka.perkov@sartura.hr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SnVyYWogVmlqdGl1ayA8anVyYWoudmlqdGl1a0BzYXJ0dXJhLmhyPiBbMjAyMC0wMS0xNCAyMjox
MToxOF06Cgo+IEhlcmUgaXMgdGhlIHh4ZCBvdXRwdXQgZm9yIHRoZSBjcmFzaCBmaWxlIHRoYXQg
Y2F1c2VzIHRoZSBpbnZhbGlkIHJlYWQgd2hlbgo+IHBhc3NlZCBhcyBkYXRhIHRvIGJsb2Jtc2df
cGFyc2VfYXJyYXkgd2l0aCBhIGxlbiBvZiA0Ogo+Cj4geHhkIGNyYXNoLWEzNTg1YjcwZjFjN2Zm
YmRlYzEwZjZkYWRjOTY0MzM2MTE4NDg1YzQKPiAwMDAwMDAwMDogMDMwMCAwMDA0IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLi4uLgoKVGhhbmtzIGZvciBz
aGFyaW5nLgoKPiBIZXJlIGlzIHRoZSByZWxldmFudCB2YWxncmluZCBvdXRwdXQsIHRoZSBtYWlu
IGZ1bmN0aW9uIGhlcmUgc2ltcGx5IHJlYWRzCj4gdGhlIGlucHV0IGFuZCBwYXNzZXMgaXQgdG8g
YmxvYm1zZ19wYXJzZV9hcnJheToKPgo+ID09MTA4Mjk9PSBJbnZhbGlkIHJlYWQgb2Ygc2l6ZSAy
Cj4gPT0xMDgyOT09IMKgIMKgYXQgMHgxMDlERkM6IGJsb2Jtc2dfbmFtZWxlbiAoYmxvYm1zZy5o
Ojc0KQo+ID09MTA4Mjk9PSDCoCDCoGJ5IDB4MTA5NDQ2OiBibG9ibXNnX2NoZWNrX25hbWUgKGJs
b2Jtc2cuYzo0MikKPiA9PTEwODI5PT0gwqAgwqBieSAweDEwOTJERDogYmxvYm1zZ19jaGVja19h
dHRyX2xlbiAoYmxvYm1zZy5jOjc5KQo+ID09MTA4Mjk9PSDCoCDCoGJ5IDB4MTA5QTYzOiBibG9i
bXNnX3BhcnNlX2FycmF5IChibG9ibXNnLmM6MTU5KQo+ID09MTA4Mjk9PSDCoCDCoGJ5IDB4MTBB
N0JBOiBtYWluIChibG9ibXNnLmM6NDEyKQo+ID09MTA4Mjk9PSDCoEFkZHJlc3MgMHg0YTJlMmI0
IGlzIDAgYnl0ZXMgYWZ0ZXIgYSBibG9jayBvZiBzaXplIDQgYWxsb2MnZAo+ID09MTA4Mjk9PSDC
oCDCoGF0IDB4NDgzODc3RjogbWFsbG9jICh2Z19yZXBsYWNlX21hbGxvYy5jOjMwOSkKPiA9PTEw
ODI5PT0gwqAgwqBieSAweDEwQTc3MzogbWFpbiAoYmxvYm1zZy5jOjQwOCkKClRoYXQgbWFsbG9j
IGlzIGltcG9ydGFudCBoZXJlLCBvbmUgaGFzIHRvIHVzZSBkeW5hbWljYWxseSBhbGxvY2F0ZWQg
YnVmZmVyIGFuZApWYWxncmluZCBpbiBvcmRlciB0byBzZWUgdGhpcyBPT0IgcmVhZCBhY2Nlc3Mu
IFRoZXJlJ3MgYWxyZWFkeSBzaW1pbGFyIGNyYXNoCmZyb20gdGhlIHByZXZpb3VzIHJ1bnMsIGJ1
dCB3aXRob3V0IG1hbGxvYydlZCBidWZmZXIgVmFsZ3JpbmQgZG9lc24ndCBzcG90CnRoYXQsIGxl
c3NvbiBsZWFybmVkLgoKIHh4ZCB0ZXN0cy9mdXp6L2NvcnB1cy9jcmFzaC03NWIxNDZjNGU2ZmFj
NjRkM2U2MjIzNmIyN2M2NGI1MDY1N2JhYjJhIAogMDAwMDAwMDA6IDAzMDAgMDAwMiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLi4uLgoKPiBJIGFzc3VtZSB0aGF0IHRoaXMgY2hlY2tz
IHdoZXRoZXIgaGRyLT5uYW1lIGlzIGEgbnVsbCB0ZXJtaW5hdGVkCj4gc3RyaW5nLiBIb3dldmVy
LCBuYW1lbGVuIHNlZW1zIHRvIHN0b3JlIHRoZSByZXN1bHQgcmV0dXJuZWQgYXMgaWYgaXQgd2Fz
IHJldHVybmVkIGJ5IHN0cmxlbiwKPiBhbmQgdGhlIGxpbWl0IGNoZWNrIGRvZXNuJ3Qgc2VlbSB0
byBpbmNsdWRlIHRoZSB0ZXJtaW5hdGluZyBudWxsIGJ5dGUsCj4gYWx0aG91Z2ggSSBzdXBwb3Nl
IG1vZGlmeWluZyB0aGF0IGNoZWNrIHdvdWxkIGRlZmluaXRlbHkgYmUgYmV0dGVyIHRoYW4KPiBo
YXZpbmcgdHdvIGNoZWNrcy4gVGhlIGNoZWNrIHdvdWxkIHRoZW4gbG9vayBsaWtlIHRoaXM6Cj4g
Cj4gwqAgaWYgKChjaGFyICopIGhkci0+bmFtZSArIGJsb2Jtc2dfbmFtZWxlbihoZHIpICsgMSA+
IGxpbWl0KQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiBmYWxzZTsKCk9rLCBtYWtl
cyBzZW5zZSwgSSdsbCBjaGVjayB0aGF0LgoKPiA+ID4gwqAgwqAgX19ibG9iX2Zvcl9lYWNoX2F0
dHIoYXR0ciwgZGF0YSwgbGVuKSB7Cj4gPiA+ICsgwqAgwqAgwqAgwqAgwqAgaWYgKGxlbiA8IHNp
emVvZihzdHJ1Y3QgYmxvYl9hdHRyKSArIHNpemVvZihzdHJ1Y3QgYmxvYm1zZ19oZHIpKQo+ID4g
PiArIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiAtMTsKPiA+Cj4gPiBJZiB0aGVy
ZSBpcyBzdWNoIHByb2JsZW0sIHRoZW4gdGhpcyBzaG91bGQgYmUgcHJvYmFibHkgZml4ZWQgZGly
ZWN0bHkgaW4KPiA+IF9fYmxvYl9mb3JfZWFjaF9hdHRyIHNvIHdlIHBvc3NpYmx5IHByb3RlY3Qg
b3RoZXIgX19ibG9iX2Zvcl9lYWNoX2F0dHIKPiA+IHVzZXJzWzFdLgo+IAo+IENhbiB5b3UgbWF5
YmUgcHJvdmlkZSBhIHBhdGNoPyBJJ2QgYmUgaGFwcHkgdG8gdGVzdCBpdCBhbmQgbGV0IHlvdQo+
IGtub3cgd2hhdCB0aGUgcmVzdWx0cyBhcmUuCgpPay4KCi0tIHluZXp6CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
