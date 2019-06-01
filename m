Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275C431FB0
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 16:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzCO3R8NTwi4ZSv7ITRHwoyRvgT8OVfjSftghqdP2WI=; b=dLzBHrRyJoQ7yn
	stGEJ1GUQGdU2NaR0m0WqycokTxieQ2Tf9wIGHOzalT+s9ZajstgBxXiOJnKusAdt6/4okxsOeQhH
	VHGA76Vj0ZdbtwPsG8Ue4fT4HtubfEYdJuszdnFz8i66M3MhfH7F2otSRj2r3QPE4mqXIMS70CktM
	ZYfgGkX+2KZMtjQPiRWx3YN9NsRbW3f3ItpjXi1ebHasvu84Qe69TuXatH622Dp4OYjDZiU9823mn
	cIRl9ddj3E7V5u+CEEeIRKspF2vsExIY0oUBxcx7AOIjvVUA4e7R6QqChCqQgeUBLmDISTxaJIkTL
	7wSr1X9csLScRqWMiicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX4yl-0002ir-Ur; Sat, 01 Jun 2019 14:27:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX4yf-0002ig-7S
 for openwrt-devel@bombadil.infradead.org; Sat, 01 Jun 2019 14:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=97xl0nNXuEJcHu0NOIPBFIEQqEFL1hitFCoX77Gnepo=; b=gL7HwQzUXaLrYEUvMZlCtTcV1Q
 neoMoJjvM+j3lFFCeRWGeE7ZoliBRpLso2l+QkhF0fAgCjgKra09hT9vO10cfo2Z6UkGz94vDF31X
 7XGkOg6VqGb0wylxE5S8dkRBaKOkBZNT/a5wZvCrMAnfIhYYoP0w7ddWJ2Ou7mSpnSmWdeHmZVqtm
 FO3cmP6Wb4ZBWwTgwjU3s6EC0Oj0JI73UXGp08nGlhrBtyHq2hNrjyyKWQkpWhtysDW3Dej7NgoAe
 Csx0eS5dyx/5x9Ft5cwt3psYj3qEeLS5Ruz3AL5SlHtFPEu8NhLoii5+xyIrlTEGdXqwnwuzRtKJi
 iWCkrMug==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX4ya-0006AP-Ov
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 14:27:18 +0000
X-Originating-IP: 91.64.86.201
Received: from [172.31.79.93] (ip5b4056c9.dynamic.kabel-deutschland.de
 [91.64.86.201]) (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 9D64260009;
 Sat,  1 Jun 2019 14:26:36 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
To: openwrt-devel@lists.openwrt.org
Message-ID: <836bcdbe-2217-e9e4-5926-5bea19db02d7@aparcar.org>
Date: Sat, 1 Jun 2019 16:26:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_102717_024630_7CAB878C 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [RFC] additional Docker images and CI testing
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 Ted Hess <thess@kitschensync.net>, Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgYWxsLAoKY3VycmVudGx5IE9wZW5XcnQgb25seSBvZmZlcnMgYSB2ZXJ5IGJhc2ljIERvY2tl
ciBpbWFnZVswXSBmb3IgdGVzdGluZwpvZiB0aGUgcGFja2FnZXMuZ2l0IHJlcG8uIFRoZSBpbWFn
ZSBpcyBub3QgZGlyZWN0bHkgdXNhYmxlIGFzIHRoZSBDSQpkb2VzIG1vc3Qgb2YgdGhlIHdvcmss
IGxpa2Ugc2V0dGluZyB1cCB0aGUgU0RLIGFuZCBhZGRpbmcgZmVlZHNbMV0uIEknZApsaWtlIHRv
IHByb3Bvc2UgdHdvIGFkZGl0aW9uYWwgaW1hZ2VzIGFuZCBhZGRlZCBDSSB0ZXN0IGV4YW1wbGVz
IGZvcgppbGx1c3RyYXRpb24sIGBvcGVud3J0YCBhbmQgYG9wZW53cnQtc2RrYAoKIyMgb3Blbndy
dDp4ODYtNjQKCk5vdyB0aGF0IE9wZW5XcnQgY2FuIHJ1biB3aXRoaW4gRG9ja2VyIGNvbnRhaW5l
cnNbMl0gKHRoYW5rcyBAbWlrbWEsCkBkYW5nb3dydCBhbmQgQHluZXp6KSBpdCdzIHBvc3NpYmxl
IGZvciBsb2NhbCBvciBDSSB0ZXN0czoKCiogUnVubmluZyB0aGUgaW1hZ2UgbG9jYWxseToKCsKg
wqDCoCBkb2NrZXIgcnVuIC0tcm0gLWl0IGFwYXJjYXIvb3BlbndydDp4ODYtNjQKCiogVGVzdCBl
eGFtcGxlIHZpYSBDaXJjbGVDSQoKQ2hlY2tzIGlmIHByb2NkIHN0YXJ0cyBiYXNpYyBzZXJ2aWNl
c1szXS4KClRoZSBjb250YWluZXIgaW1hZ2UgaXMgY3JlYXRlZCB2aWEgYSBjb25maWcueW1sIHNp
bWlsYXIgdG8gdGhlIG9uZSBmcm9tCnBhY2thZ2VzLmdpdFs0XS4KCiMjIG9wZW53cnQtc2RrOng4
Ni02NAoKVGhlIE9wZW5XcnQgU0RLIGluIGEgRG9ja2VyIGNvbnRhaW5lciwgYWxzbyB1c2FibGUg
Zm9yIGxvY2FsIGJ1aWxkaW5nIG9yIENJOgoKKiBVc2luZyB0aGUgU0RLIGxvY2FsbHkKCsKgwqDC
oCBkb2NrZXIgcnVuIC0tcm0gLXYgLi9iaW4vOi9zZGsvYmluIC1pdCBhcGFyY2FyL29wZW53cnQt
c2RrOng4Ni02NArCoMKgwqAgIyB3aXRoaW4gdGhlIERvY2tlciBjb250YWluZXIKwqDCoMKgIC4v
c2NyaXB0cy9mZWVkcyB1cGRhdGUgYmFzZQrCoMKgwqAgbWFrZSBkZWZjb25maWcKwqDCoMKgIC4v
c2NyaXB0cy9mZWVkcyBpbnN0YWxsIGZpcmV3YWxsCsKgwqDCoCBtYWtlIHBhY2thZ2UvZmlyZXdh
bGwve2NsZWFuLGNvbXBpbGV9IC1qJChucHJvYykKClRoZSBjb21waWxlZCBvdXRwdXQgaXMgZm91
bmQgaW4gLi9iaW4vCgoqIFRlc3QgZXhhbXBsZSB2aWEgQ2lyY2xlQ0kKCkNvbXBpbGVzIGZpcmV3
YWxsIHBhY2thZ2VbNV0uCgpUaGUgb3BlbndydC1zZGsgY29udGFpbmVyIGltYWdlIGlzIGFsc28g
Y3JlYXRlZCB2aWEgQ0lbNl0uCgpBbGwgZXhhbXBsZXMgYXJlIGJhc2VkIG9uIHRoaXNbN10gcmVw
byBhbmQgdGhlICppbnRlcmVzdGluZyogYnJhbmNoZXMgYXJlOgoKKiBvcGVud3J0Ciogb3Blbndy
dC10ZXN0Ciogb3BlbndydC1zZGsKKiBvcGVud3J0LXNkay10ZXN0CgpJJ2QgYmUgaGFwcHkgaWYg
T3BlbldydCBvZmZlcnMgT1MsIFNESyBhbmQgSW1hZ2VCdWlsZGVyIGNvbnRhaW5lciBpbWFnZXMK
aW4gdGhlIGZ1dHVyZS4gQ3VycmVudGx5IG9ubHkgdGhlIHg4Ni82NCB0YXJnZXQgaXMgc3VwcG9y
dGVkLCBob3dldmVyCml0J2QgYmUgZWFzeSB0byBzdXBwb3J0IGFsbCAocG9wdWxhcikgdGFyZ2V0
cyB2aWEgdGFncy4KCkV2ZW50dWFsbHkgd2UgY291bGQgdXNlIHRoaXMgdG8gZGV2ZWxvcCB0ZXN0
IGNhc2VzIGZvciBPcGVuV3J0IHNwZWNpZmljCnRvb2xzIGxpa2UgbmV0aWZkLCBwcm9jZCwgdWJ1
cywgZmlyZXdhbGwzLCBldGMuLi4KCkJlc3QsClBhdWwKClswXTogaHR0cHM6Ly9odWIuZG9ja2Vy
LmNvbS9yL29wZW53cnRvcmcvcGFja2FnZXMtY2NpClsxXToKaHR0cHM6Ly9naXQub3BlbndydC5v
cmcvP3A9ZmVlZC9wYWNrYWdlcy5naXQ7YT1ibG9iO2Y9LmNpcmNsZWNpL2NvbmZpZy55bWw7aD0w
MmE4NzE0NmQ5MWYxOTYzOGJmYmZjMWZiYzQ2OTEzMjU2Y2YzNThkO2hiPXJlZnMvaGVhZHMvbWFz
dGVyClsyXToKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9vcGVud3J0LmdpdDth
PWNvbW1pdDtoPTZhOTJlYjViMzgyODYwMDE3ZmQwMGNkMDUzNTBhNjQ4YzRhNGFjNTYKWzNdOiBo
dHRwczovL2NpcmNsZWNpLmNvbS9naC9hcGFyY2FyL29wZW53cnQtY2ktdGVzdC81MyNjb25maWcv
Y29udGFpbmVycy8wCls0XTogaHR0cHM6Ly9jaXJjbGVjaS5jb20vZ2gvYXBhcmNhci9vcGVud3J0
LWNpLXRlc3QvNDEjY29uZmlnL2NvbnRhaW5lcnMvMApbNV06IGh0dHBzOi8vY2lyY2xlY2kuY29t
L2doL2FwYXJjYXIvb3BlbndydC1jaS10ZXN0LzQ1I2NvbmZpZy9jb250YWluZXJzLzAKWzZdOiBo
dHRwczovL2NpcmNsZWNpLmNvbS9naC9hcGFyY2FyL29wZW53cnQtY2ktdGVzdC80NiNjb25maWcv
Y29udGFpbmVycy8wCls3XTogaHR0cHM6Ly9naXRodWIuY29tL2FwYXJjYXIvb3BlbndydC1jaS10
ZXN0CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
