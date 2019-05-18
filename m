Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44408224BE
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 22:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3nuLmaLSnMDG9H1zPsyzvizmgy119PdSM2vVV18kFbE=; b=uyBEyhOn4rrNsLthItcqST74v
	FsWQcCISkAaU2AvQIop1ShGyAQ3GC7XTSykzsxS/yEqrQ0GySCzUF6S4pSuW3rhpNq9e/wdWTEKcP
	Ofxlwc0mLaifwHGQsWmTVTTZ+FzyifNGv2OYTcsu5mMTpLIDRcvVWKW90G1nif5Gu9E2n5kKd/x00
	skNQgcSUS+bDvPOEzqT/kfsoKWYfM0oCpSmuTsx8cxcL0Ktu7CPhaGvq7W2vhvKbfaez9GD/Ws7Mx
	15DrnvTxI3XOkf2h48mggDunKnoZS/xOqhZd7aO19DOXRtrzvqwhpTTtp6TlyXvRL3JzDhgTkd91Y
	GcFngg1gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS5ZF-000183-87; Sat, 18 May 2019 20:04:29 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS5Z6-000176-NJ
 for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 20:04:24 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,485,1549954800"; d="scan'208";a="35232875"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES128-SHA;
 18 May 2019 13:04:16 -0700
Received: from [10.14.52.191] (10.10.76.4) by CHN-SV-EXCH01.mchp-main.com
 (10.10.76.37) with Microsoft SMTP Server id 14.3.352.0; Sat, 18 May 2019
 13:04:16 -0700
To: Hauke Mehrtens <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
References: <20190511115320.12285-1-hauke@hauke-m.de>
From: Sandeep Sheriker <sandeepsheriker.mallikarjun@microchip.com>
Organization: Microchip Technology
Message-ID: <7bbb3a45-ef57-9412-f59e-e7be4cb55ff9@microchip.com>
Date: Sat, 18 May 2019 13:03:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511115320.12285-1-hauke@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_130420_873714_67A8BAAC 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 0/4] at91: Update kernel to version 4.14
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
Cc: c.mignanti@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMsCiDCoMKgwqAgSSBhbSBhYmxlIHRvIHRlc3QgdGhpcyBwYXRjaCBzZXJp
ZXMgc3VjY2Vzc2Z1bGx5IGFuZCBib290IExpbnV4IAo0LjE0IHZlcnNpb24gb24gc2FtYTVkNCwg
c2FtYTVkMyBhbmQgc2FtYTVkMiB0YXJnZXQgZGV2aWNlcy4KClJlZ2FyZHMsClNhbmRlZXAgU2hl
cmlrZXIgTQoKCk9uIDUvMTEvMTkgNDo1MyBBTSwgSGF1a2UgTWVocnRlbnMgd3JvdGU6Cj4gRXh0
ZXJuYWwgRS1NYWlsCj4KPgo+IFRoZSBuZXh0IE9wZW5XcnQgcmVsZWFzZSB3aWxsIG9ubHkgY29u
dGFpbiBzdXBwb3J0IGZvciBrZXJuZWwgNC4xNCwgdG8KPiBzdGlsbCBzdXBwb3J0IHRoZSBhdDkx
IHRhcmdldCB1cGRhdGUgaXQgdG8ga2VybmVsIDQuMTQuCj4KPiBUaGlzIHdhcyBvbmx5IGJ1aWxk
IHRlc3RlZCwgSSBkbyBub3QgaGF2ZSB0aGlzIGRldmljZSwgY291bGQgc29tZW9uZQo+IHBsZWFz
ZSBydW4gdGVzdCBpdCBvbiBzb21lIGRldmljZSBhbmQgcmVwb3J0IHRoZSByZXN1bHRzIGJhY2su
Cj4KPiBUaGUgcGF0Y2hlcyBhcmUgYWxzbyBhdmFpbGFibGUgaW4gdGhpcyBicmFuY2g6Cj4gaHR0
cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9zdGFnaW5nL2hhdWtlLmdpdDthPXNob3J0
bG9nO2g9cmVmcy9oZWFkcy9rZXJuZWwtNC4xNAo+Cj4gSGF1a2UgTWVocnRlbnMgKDQpOgo+ICAg
IGF0OTE6IFJlZnJlc2gga2VybmVsIGNvbmZpZ3VyYXRpb24KPiAgICBhdDkxOiBDbGVhbiB1cCBr
ZXJuZWwgY29uZmlndXJhdGlvbgo+ICAgIGF0OTE6IE1lcmdlIFNBTUE1IHN1YnRhcmdldHMKPiAg
ICBhdDkxOiBVcGRhdGUga2VybmVsIHRvIHZlcnNpb24gNC4xNAo+Cj4gICBwYWNrYWdlL2Jvb3Qv
YXQ5MWJvb3RzdHJhcC9NYWtlZmlsZSAgICAgICAgICAgfCAgMjYgKy0KPiAgIHBhY2thZ2UvYm9v
dC91Ym9vdC1hdDkxL01ha2VmaWxlICAgICAgICAgICAgICB8ICAyMiArLQo+ICAgdGFyZ2V0L2xp
bnV4L2F0OTEvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCj4gICB0YXJnZXQv
bGludXgvYXQ5MS97Y29uZmlnLTQuOSA9PiBjb25maWctNC4xNH0gfCAxNTAgKy0tCj4gICB0YXJn
ZXQvbGludXgvYXQ5MS9pbWFnZS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgMTAgKy0KPiAgIHRh
cmdldC9saW51eC9hdDkxL2ltYWdlL3NhbWE1Lm1rICAgICAgICAgICAgICB8ICA3MSArKwo+ICAg
dGFyZ2V0L2xpbnV4L2F0OTEvaW1hZ2Uvc2FtYTVkMi5tayAgICAgICAgICAgIHwgIDMxIC0KPiAg
IHRhcmdldC9saW51eC9hdDkxL2ltYWdlL3NhbWE1ZDMubWsgICAgICAgICAgICB8ICAzMyAtCj4g
ICB0YXJnZXQvbGludXgvYXQ5MS9pbWFnZS9zYW1hNWQ0Lm1rICAgICAgICAgICAgfCAgMTkgLQo+
ICAgdGFyZ2V0L2xpbnV4L2F0OTEvbGVnYWN5L2NvbmZpZy1kZWZhdWx0ICAgICAgIHwgIDI4ICst
Cj4gICAuLi4vMTAwLUFSTS1hdDkxLWJ1aWxkLWR0Yi1mb3ItTE1VNTAwMC5wYXRjaCAgfCAgIDIg
Ky0KPiAgIC4uLi8xMDEtQVJNLWF0OTEtYnVpbGQtZHRiLWZvci1xNXhyNS5wYXRjaCAgICB8ICAg
MiArLQo+ICAgLi4uLzEwMi1BUk0tYXQ5MS1idWlsZC1kdGItZm9yLXdiNDVuLnBhdGNoICAgIHwg
ICA0ICstCj4gICAuLi4vMTAzLUFSTS1hdDkxLWJ1aWxkLWR0Yi1mb3Itd2I1MG4ucGF0Y2ggICAg
fCAgIDIgKy0KPiAgIC4uLlJNLWF0OTEtYnVpbGQtZHRiLWZvci1zYW1hNWQyLXB0Yy1Fay5wYXRj
aCB8ICAgNSArLQo+ICAgLi4uLWF0OTEtYnVpbGQtZHRiLWZvci1zYW1hNWQyNy1TT00xLUVrLnBh
dGNoIHwgODkzIC0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgdGFyZ2V0L2xpbnV4L2F0OTEvc2FtYTUv
Y29uZmlnLWRlZmF1bHQgICAgICAgIHwgICAwCj4gICB0YXJnZXQvbGludXgvYXQ5MS9zYW1hNS90
YXJnZXQubWsgICAgICAgICAgICAgfCAgMTAgKwo+ICAgdGFyZ2V0L2xpbnV4L2F0OTEvc2FtYTVk
Mi9jb25maWctZGVmYXVsdCAgICAgIHwgIDQ0IC0KPiAgIHRhcmdldC9saW51eC9hdDkxL3NhbWE1
ZDIvdGFyZ2V0Lm1rICAgICAgICAgICB8ICAxMCAtCj4gICB0YXJnZXQvbGludXgvYXQ5MS9zYW1h
NWQzL2NvbmZpZy1kZWZhdWx0ICAgICAgfCAgMzkgLQo+ICAgdGFyZ2V0L2xpbnV4L2F0OTEvc2Ft
YTVkMy90YXJnZXQubWsgICAgICAgICAgIHwgIDEwIC0KPiAgIHRhcmdldC9saW51eC9hdDkxL3Nh
bWE1ZDQvY29uZmlnLWRlZmF1bHQgICAgICB8ICAzOSAtCj4gICB0YXJnZXQvbGludXgvYXQ5MS9z
YW1hNWQ0L3RhcmdldC5tayAgICAgICAgICAgfCAgMTAgLQo+ICAgdGFyZ2V0L2xpbnV4L2dlbmVy
aWMvY29uZmlnLTQuMTQgICAgICAgICAgICAgIHwgICAyICsKPiAgIHRhcmdldC9saW51eC9nZW5l
cmljL2NvbmZpZy00LjE5ICAgICAgICAgICAgICB8ICAgMiArCj4gICAyNiBmaWxlcyBjaGFuZ2Vk
LCAyMTQgaW5zZXJ0aW9ucygrKSwgMTI1NCBkZWxldGlvbnMoLSkKPiAgIHJlbmFtZSB0YXJnZXQv
bGludXgvYXQ5MS97Y29uZmlnLTQuOSA9PiBjb25maWctNC4xNH0gKDg1JSkKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5MS9pbWFnZS9zYW1hNS5tawo+ICAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IHRhcmdldC9saW51eC9hdDkxL2ltYWdlL3NhbWE1ZDIubWsKPiAgIHJlbmFtZSB0
YXJnZXQvbGludXgvYXQ5MS97cGF0Y2hlcy00LjkgPT4gcGF0Y2hlcy00LjE0fS8xMDAtQVJNLWF0
OTEtYnVpbGQtZHRiLWZvci1MTVU1MDAwLnBhdGNoICg4MCUpCj4gICByZW5hbWUgdGFyZ2V0L2xp
bnV4L2F0OTEve3BhdGNoZXMtNC45ID0+IHBhdGNoZXMtNC4xNH0vMTAxLUFSTS1hdDkxLWJ1aWxk
LWR0Yi1mb3ItcTV4cjUucGF0Y2ggKDgyJSkKPiAgIHJlbmFtZSB0YXJnZXQvbGludXgvYXQ5MS97
cGF0Y2hlcy00LjkgPT4gcGF0Y2hlcy00LjE0fS8xMDItQVJNLWF0OTEtYnVpbGQtZHRiLWZvci13
YjQ1bi5wYXRjaCAoNzQlKQo+ICAgcmVuYW1lIHRhcmdldC9saW51eC9hdDkxL3twYXRjaGVzLTQu
OSA9PiBwYXRjaGVzLTQuMTR9LzEwMy1BUk0tYXQ5MS1idWlsZC1kdGItZm9yLXdiNTBuLnBhdGNo
ICg4NSUpCj4gICByZW5hbWUgdGFyZ2V0L2xpbnV4L2F0OTEve3BhdGNoZXMtNC45ID0+IHBhdGNo
ZXMtNC4xNH0vMTA1LUFSTS1hdDkxLWJ1aWxkLWR0Yi1mb3Itc2FtYTVkMi1wdGMtRWsucGF0Y2gg
KDk4JSkKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5MS9wYXRjaGVzLTQu
OS8xMDQtQVJNLWF0OTEtYnVpbGQtZHRiLWZvci1zYW1hNWQyNy1TT00xLUVrLnBhdGNoCj4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2F0OTEvc2FtYTUvY29uZmlnLWRlZmF1bHQK
PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5MS9zYW1hNS90YXJnZXQubWsK
PiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5MS9zYW1hNWQyL2NvbmZpZy1k
ZWZhdWx0Cj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2F0OTEvc2FtYTVkMi90
YXJnZXQubWsKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5MS9zYW1hNWQz
L2NvbmZpZy1kZWZhdWx0Cj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L2F0OTEv
c2FtYTVkMy90YXJnZXQubWsKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvYXQ5
MS9zYW1hNWQ0L2NvbmZpZy1kZWZhdWx0Cj4gICBkZWxldGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xp
bnV4L2F0OTEvc2FtYTVkNC90YXJnZXQubWsKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
