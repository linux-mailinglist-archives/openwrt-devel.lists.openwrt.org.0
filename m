Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F191D1CBEE
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 17:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVPyt/NTPSbE+9N+0O6hneQgGMplH/poKN7MbVjEu8A=; b=Ibgf4T99egz5AK
	2QMHI0CuEnaPXAiLdQneILUI+8JsBhXNWisRzPp27jSzf2kr4oOpLnYvf3GF8HpmK5xc1FOZ09n3C
	D2C/SPniFhbUTpr7Ak0u7yTG3GgwmY+DQYA9X7PQ7BSNrpe0b8DB5xPgwx86sU/9H3Uy3pWi8sR7N
	jNWAisULvRLC3gF3BVTr/RnRMIog9pa0HZNoQlgGgL+dwfghvwpHh7xxFLdceyysEKpB5k59SI3T6
	ZRh6r8h8hlnHy/Zq4rXiMwx+EwF+3ZnTTPosV/YH6jV5OMIy/wYdjufBpoG1BiNaQvmnrBTmlCC+/
	LFGzsXvExOCqOmDxa4fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZQ0-0004Us-NQ; Tue, 14 May 2019 15:32:40 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZPu-0004UO-0q
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 15:32:36 +0000
X-Originating-IP: 139.18.242.240
Received: from [172.24.187.150] (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5D19AC000E;
 Tue, 14 May 2019 15:32:21 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
 <20190514144959.GC93050@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <cf208d00-811e-24d0-c46f-e562faded42e@aparcar.org>
Date: Tue, 14 May 2019 17:32:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514144959.GC93050@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_083234_665144_E38FC87C 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] RFC: add metadata to buildroot
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
Cc: Alberto Bursi <alberto.bursi@outlook.it>,
 Moritz Warning <moritzwarning@web.de>, Daniel Golle <daniel@makrotopia.org>,
 Jo-Philipp Wich <jow@openwrt.org>, openwrt-devel@lists.openwrt.org,
 Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

R2xhZCB5b3UgbGlrZSBpdCwgbXkgbWFpbiBnb2FsIHdvdWxkIGJlIHRvIG1vdGl2YXRlIGRldmlj
ZSBwb3J0ZXJzIHRvCmRlbGl2ZXIgYSB1bmlmb3JtIHlhbWwgZmlsZSB3aGVuIHJlcXVlc3Rpbmcg
dG8gYWRkIGEgbmV3IGRldmljZS4gRG8geW91CnNlZSB0aGlzIGFzIGEgcG9zc2liaWxpdHkgb25j
ZSBhIHJlYXNvbmFibGUgeWFtbCB0ZW1wbGF0ZSBpcyBjcmVhdGVkPwoKQmVzdCwKUGF1bAoKT24g
NS8xNC8xOSA0OjQ5IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IFthZGRpbmcgVGhvbWFzIGFu
ZCBBbGJlcnRvIHRvIHRoZSBDYyBsb29wXQo+Cj4gUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIu
b3JnPiBbMjAxOS0wNS0wNCAxNzo0ODowM106Cj4KPiBIaSwKPgo+PiBmcm9tIG15IHBvaW50IG9m
IHZpZXcgdGhlIGN1cnJlbnQgT3BlbldydCBkZXZpY2UgZG9jdW1lbnRhdGlvbiBsYWNrcwo+PiBz
b21lIHVuaXR5LCBtZWFuaW5nIHRoZSB0YWJsZSBvZiBoYXJkd2FyZSBpcyBwYXJ0bHkgaW5jb21w
bGV0ZSBvcgo+PiBpbmNvbnNpc3RlbnQuIEFsc28gZG9jdW1lbnRhdGlvbnMgYXJlIG9mdGVuIHJl
d3JpdHRlbiB3aXRoIGRpZmZlcmVudAo+PiBwcmVjaXNpb24gYW5kICJ0b25ndWUiLgo+Pgo+PiBU
byB1bmlmeSB0aGluZ3MgSSBjcmVhdGVkIGEgKlBvQypbMF0sIG1vc3RseSBiYXNlZCBvbiB0aGUg
b2ZmaWNpYWwKPj4gTGluZWFnZU9TIFdpa2lbMV0sIGFzIHRoZXkgaGF2ZSBhIHNpbWlsYXIgc2l0
dWF0aW9uIHJlZ2FyZGluZyBkZXZpY2VzLgo+Pgo+PiBUaGUgaWRlYSBpcyB0byBkZWZpbmUgdGVt
cGxhdGVzIGRlc2NyaWJpbmcgY29tbW9uIGluZm9ybWF0aW9uIGFuZCBmaWxsCj4+IHRoZW0gd2l0
aCBkZXZpY2UgbWV0YWRhdGEuCj4+Cj4+IFRoZSAqUG9DKiBhYm92ZSBpcyBiYXNlZCBvbiB0aGUg
Zm9sbG93aW5nIG1ldGFkYXRhIGhlcmVbMl0uIE1vc3QgcGFydHMKPj4gb2YgdGhlIG1ldGFkYXRh
IGFyZSBzY3JhcGVkIGZyb20gdGhlIGN1cnJlbnQgVG9IWzNdLCBob3dldmVyIHNvbWUgc21hbGwK
Pj4gcGllY2VzIGFyZSBhZGRlZCBhbmQgbGF0ZXIgcmVuZGVyZWQgaW4gc29tZXRoaW5nIHVzZWZ1
bDoKPj4KPj4gwqDCoMKgIHRmdHBfaW1hZ2U6IEFyY2hlckM1djFfdHBfcmVjb3ZlcnkuYmluCj4+
IMKgwqDCoCB0ZnRwX2lwOiAxOTIuMTY4LjAuNjYKPj4KPj4gUmVzdWx0IGluIGEgc21hbGwgdGV4
dCB0byBleHBsYWluIGhvdyB0byB1c2UgdGhlIFRGVFAgcmVjb3ZlcnkuCj4+Cj4+IMKgwqDCoCBz
d2l0Y2hfcG9ydHM6Cj4+IMKgIMKgwqDCoCAwOiBFVEgxCj4+IMKgIMKgwqDCoCAxOiBXQU4KPj4g
wqAgwqDCoMKgIDI6IExBTjEKPj4gwqAgwqDCoMKgIDM6IExBTjIKPj4gwqAgwqDCoMKgIDQ6IExB
TjMKPj4gwqAgwqDCoMKgIDU6IExBTjQKPj4gwqDCoMKgIMKgIDY6IEVUSDAKPj4KPj4gQ3JlYXRl
cyBhIHRhYmxlIHdpdGggdGhlIHN3aXRjaCBwb3J0IG1lc3NpbmcuCj4+Cj4+IFNhbWUgY291bGQg
YmUgZG9uZSB3aXRoIHRoZSBmbGFzaCBsYXlvdXQsIExFRHMsIGV0Yy4KPj4KPj4gQWxsIHRoZXNl
IGluZm9ybWF0aW9uIGFyZSAoaG9wZWZ1bGx5KSBhdmFpbGFibGUgdG8gdGhlIGRldmVsb3BlciBh
ZGRpbmcKPj4gYSBuZXcgZGV2aWNlLCB0aGVyZWZvcmUgZWFzeSB0byBzdXBwbHkgc3VjaCBhIGB5
YW1sYCBtZXRhZGF0YSBmaWxlIGFzCj4+IHdlbGwuIE9mdGVuIHRoZXNlIGluZm9ybWF0aW9uIGFy
ZSAocmUtZm9ybXVsYXRlZCkgaW4gY29tbWl0IG1lc3NhZ2VzCj4+IGFueXdheVs0XS4gTWVhbmlu
Zywgc29tZXdoZXJlIGluIHRoZSBidWlsZHJvb3QgY291bGQgYmUgYSBzdG9yZSBvZgo+PiBgeWFt
bGAgZmlsZXMsIHdoaWNoIGNvdWxkIGV2ZW4gYmUgcmV1c2VkIGZvciBidWlsZGluZyBpdHNlbGYu
Cj4+Cj4+IEEgc2Vjb25kIHJlcG9zaXRvcnkgbGlrZSBvcGVud3J0LWRldmljZS5naXRbNV0gY291
bGQgYmUgYWRkZWQgdG8gcmVuZGVyCj4+IHRoZSB3aWtpIHBhZ2VzIGFuZCBvcmdhbml6ZSB0aGUg
dGVtcGxhdGVzLgo+Pgo+PiBJJ2QgYmUgaGFwcHkgdG8gaGVhciB5b3VyIG9waW5pb25zLgo+IEkg
cmVhbGx5IGxpa2UsIGl0J3MgbmljZSBhbmQgSSBhcHBsYXVkIHlvdXIgZWZmb3J0LiBUaGFua3Mh
Cj4KPj4gQmVzdCwKPj4gUGF1bAo+Pgo+PiBQUzogSSdtIGFmcmFpZCBJIGRvbid0IGtub3cgdGhl
IG1haWwgYWRkcmVzcyBvZiB0bW9tYXMuLi4KPj4KPj4gWzBdOiBodHRwczovL2FwYXJjYXIuZ2l0
aHViLmlvL29wZW53cnQtZGV2aWNlcy9kZXZpY2VzL3RwLWxpbmtfYXJjaGVyX2M1X2FjMTIwMF92
MS8KPj4gWzFdOiBodHRwOi8vd2lraS5saW5lYWdlb3Mub3JnL2RldmljZXMvCj4+IFsyXTogaHR0
cHM6Ly9naXRodWIuY29tL2FwYXJjYXIvb3BlbndydC1kZXZpY2VzL2Jsb2IvbWFzdGVyL19kYXRh
L2RldmljZXMvdHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxLnltbAo+PiBbM106IGh0dHBzOi8v
b3BlbndydC5vcmcvdG9oL2h3ZGF0YS90cC1saW5rL3RwLWxpbmtfYXJjaGVyX2M1X2FjMTIwMF92
MQo+PiBbNF06IGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7
YT1jb21taXQ7aD00M2U4YzM3Y2I0ZGE2NGExMmEzY2I4OGE4NGIxOWRiN2YyZmM2NDBjCj4+IFs1
XTogaHR0cHM6Ly9naXRodWIuY29tL2FwYXJjYXIvb3BlbndydC1kZXZpY2VzCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
