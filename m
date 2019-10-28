Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B52E770A
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 17:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkfyUS4siY6mSd8vDHtUCupqyAgAI5nbtu0obXhLWww=; b=HmU6SvLyhUg5ie
	BbHHdzyhnubFzzmpMJf+X+b7DoN9jlIH/opt4rYUgSsfeV0dHtcge0gVwnmFQF+U2uyyBOaA+Um2X
	ouFa2MZj9O6x2V/FKi6MychDfwuNXQ/hvLbJ8s8uYqNdO4o9jjV+Q/rSZ9ikWrUjhOC1skSIPhrf5
	Ccrz6PuaoyA/1XS3Hndi0tqKxnPLBbg/725OfRBy1sA1SikAbvkB75N/PFjbWmSSFr7qdxQ/2A3ut
	hICEWMLJrs8zZQT5NyTSKngLNWMEfIJoG57TMIY2U1qVdOo3t5FmcbE+HZ+DHp/tVtvuyscISPvv3
	V9HiLfD7TW9ahl4cuH3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Fl-0006U1-1d; Mon, 28 Oct 2019 16:52:25 +0000
Received: from cas081-co-10.exch081.serverdata.net ([199.193.204.191]
 helo=out.west.exch081.serverdata.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8FV-0006TL-JB
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 16:52:12 +0000
Received: from MBX081-W6-CO-2.exch081.serverpod.net (10.224.129.190) by
 MBX081-W6-CO-2.exch081.serverpod.net (10.224.129.190) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 28 Oct 2019 09:52:06 -0700
Received: from MBX081-W6-CO-2.exch081.serverpod.net ([10.224.129.190]) by
 MBX081-W6-CO-2.exch081.serverpod.net ([10.224.129.190]) with mapi id
 15.00.1497.000; Mon, 28 Oct 2019 09:52:06 -0700
From: Dustin Lundquist <D.Lundquist@temperednetworks.com>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Thread-Topic: [OpenWrt-Devel] [PATCH, v2] procd sysupgrade: close input side
 of pipe before reading
Thread-Index: AQHVjbAHS6zUbG4I0keHvMor5UFH9g==
Date: Mon, 28 Oct 2019 16:52:06 +0000
Message-ID: <FC1EE460-4235-4BC6-8F62-81B04B42D4D8@temperednetworks.com>
References: <EFB73C49-4DE9-4DF7-93FF-72318E9C4526@temperednetworks.com>
 <CACna6rz3TqbmX+7mmyfNM=VmW8DTJhyhAuPMY8+iL3+-uwpS7Q@mail.gmail.com>
In-Reply-To: <CACna6rz3TqbmX+7mmyfNM=VmW8DTJhyhAuPMY8+iL3+-uwpS7Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [216.168.34.194]
Content-ID: <C50E93025C8C6048AAB5694AB836F47D@exch081.serverpod.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_095209_663864_3559988B 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [199.193.204.191 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH,
 v2] procd sysupgrade: close input side of pipe before reading
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

DQoNCj4gT24gT2N0IDI3LCAyMDE5LCBhdCA2OjQ0IEFNLCBSYWZhxYIgTWnFgmVja2kgPHphamVj
NUBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4gWW91IGFsc28gbmVlZCB0byBkcm9wIGNsb3NlKGZk
c1sxXSk7IHRoYXQgaXMgcGxhY2VkIGluc2lkZSB0aGUgImlmDQo+ICghdG9rKSIgYmxvY2suDQoN
Cg0KV2hlbiAvdXNyL2xpYmV4ZWMvdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2UgaXMgbm90IHByZXNl
bnQgb24gdGhlIHN5c3RlbQ0KcHJvY2Qgd2lsbCBoYW5nIGluZGVmaW5pdGVseSBvbiB0aGUgcmVh
ZCgpIHNpbmNlIHRoZSBpbnB1dCBzaWRlIG9mIHRoZQ0KcGlwZSBpcyBzdGlsbCBvcGVuLg0KDQpB
bHNvIGZpeCBwaXBlIGZpbGUgZGVzY3JpcHRvciBsZWFrIHdoZW4gZm9yaygpIGZhaWxzLg0KDQpT
aWduZWQtb2ZmLWJ5OiBEdXN0aW4gTHVuZHF1aXN0IDxkLmx1bmRxdWlzdEB0ZW1wZXJlZG5ldHdv
cmtzLmNvbT4NCi0tLQ0Kc3lzdGVtLmMgfCA1ICsrKy0tDQoxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0
ZW0uYw0KaW5kZXggNzUxYTAxNi4uOThkOWY4YyAxMDA2NDQNCi0tLSBhL3N5c3RlbS5jDQorKysg
Yi9zeXN0ZW0uYw0KQEAgLTQwNSw2ICs0MDUsOCBAQCBzdGF0aWMgaW50IHZhbGlkYXRlX2Zpcm13
YXJlX2ltYWdlX2NhbGwoY29uc3QgY2hhciAqZmlsZSkNCg0KCXN3aXRjaCAoZm9yaygpKSB7DQoJ
Y2FzZSAtMToNCisJCWNsb3NlKGZkc1swXSk7DQorCQljbG9zZShmZHNbMV0pOw0KCQlyZXR1cm4g
LWVycm5vOw0KCWNhc2UgMDoNCgkJLyogU2V0IHN0ZGluICYgc3RkZXJyIHRvIC9kZXYvbnVsbCAq
Lw0KQEAgLTQyNSwxMSArNDI3LDExIEBAIHN0YXRpYyBpbnQgdmFsaWRhdGVfZmlybXdhcmVfaW1h
Z2VfY2FsbChjb25zdCBjaGFyICpmaWxlKQ0KCX0NCg0KCS8qIFBhcmVudCBwcm9jZXNzICovDQor
CWNsb3NlKGZkc1sxXSk7DQoNCgl0b2sgPSBqc29uX3Rva2VuZXJfbmV3KCk7DQoJaWYgKCF0b2sp
IHsNCgkJY2xvc2UoZmRzWzBdKTsNCi0JCWNsb3NlKGZkc1sxXSk7DQoJCXJldHVybiAtRU5PTUVN
Ow0KCX0NCg0KQEAgLTQ0Nyw3ICs0NDksNiBAQCBzdGF0aWMgaW50IHZhbGlkYXRlX2Zpcm13YXJl
X2ltYWdlX2NhbGwoY29uc3QgY2hhciAqZmlsZSkNCgl9DQoNCgljbG9zZShmZHNbMF0pOw0KLQlj
bG9zZShmZHNbMV0pOw0KDQoJZXJyID0gLUVOT0VOVDsNCglpZiAoanNvYmopIHsNCi0tDQoyLjIw
LjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
