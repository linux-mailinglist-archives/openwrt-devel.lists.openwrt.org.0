Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922901CAE0
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 16:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xy4pACyyG+jAutSTkOne8MBONgQXED/MNRvKRuDPxHg=; b=SZQYCu1KqDmePHOjieYIzA1SuR
	IPX+VXL61xCKt8t5xc/k1fG/wFJPLM/pMuv/NoAxp09jpHk8SUcwfz5B8x1H+ykOpoTHDiv6ZkV5S
	zkfZ4xg4ZDJaWLLyXrRYJFXFfDc18kUlbH4QcGX0P7qOrapdhi8a3pPVTvrTB5HfAEEfT9OZFVBmb
	cVaOXdRQGegDeb0QnXJPoJYb3zcPVh3JyTlPwaZMgY9MCWJqSFS+7TmMIDDW3EDV9ve2piIwLTfZg
	Egwc4EFSqaHbIjDrZnXKHycPK50yEOnlHykjrNSSOui0RUR25RmciS/R9uILkNKJbt5lZSjwdmSE8
	JxySknLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQYkv-0005Pa-JI; Tue, 14 May 2019 14:50:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQYkk-0004lv-Hl
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 14:50:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BE10E461B;
 Tue, 14 May 2019 16:50:00 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5de2fe06;
 Tue, 14 May 2019 16:49:59 +0200 (CEST)
Date: Tue, 14 May 2019 16:49:59 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190514144959.GC93050@meh.true.cz>
References: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_075002_743978_A0E80B7E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Alberto Bursi <alberto.bursi@outlook.it>,
 Moritz Warning <moritzwarning@web.de>, Daniel Golle <daniel@makrotopia.org>,
 Jo-Philipp Wich <jow@openwrt.org>, openwrt-devel@lists.openwrt.org,
 Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

W2FkZGluZyBUaG9tYXMgYW5kIEFsYmVydG8gdG8gdGhlIENjIGxvb3BdCgpQYXVsIFNwb29yZW4g
PG1haWxAYXBhcmNhci5vcmc+IFsyMDE5LTA1LTA0IDE3OjQ4OjAzXToKCkhpLAoKPiBmcm9tIG15
IHBvaW50IG9mIHZpZXcgdGhlIGN1cnJlbnQgT3BlbldydCBkZXZpY2UgZG9jdW1lbnRhdGlvbiBs
YWNrcwo+IHNvbWUgdW5pdHksIG1lYW5pbmcgdGhlIHRhYmxlIG9mIGhhcmR3YXJlIGlzIHBhcnRs
eSBpbmNvbXBsZXRlIG9yCj4gaW5jb25zaXN0ZW50LiBBbHNvIGRvY3VtZW50YXRpb25zIGFyZSBv
ZnRlbiByZXdyaXR0ZW4gd2l0aCBkaWZmZXJlbnQKPiBwcmVjaXNpb24gYW5kICJ0b25ndWUiLgo+
IAo+IFRvIHVuaWZ5IHRoaW5ncyBJIGNyZWF0ZWQgYSAqUG9DKlswXSwgbW9zdGx5IGJhc2VkIG9u
IHRoZSBvZmZpY2lhbAo+IExpbmVhZ2VPUyBXaWtpWzFdLCBhcyB0aGV5IGhhdmUgYSBzaW1pbGFy
IHNpdHVhdGlvbiByZWdhcmRpbmcgZGV2aWNlcy4KPiAKPiBUaGUgaWRlYSBpcyB0byBkZWZpbmUg
dGVtcGxhdGVzIGRlc2NyaWJpbmcgY29tbW9uIGluZm9ybWF0aW9uIGFuZCBmaWxsCj4gdGhlbSB3
aXRoIGRldmljZSBtZXRhZGF0YS4KPiAKPiBUaGUgKlBvQyogYWJvdmUgaXMgYmFzZWQgb24gdGhl
IGZvbGxvd2luZyBtZXRhZGF0YSBoZXJlWzJdLiBNb3N0IHBhcnRzCj4gb2YgdGhlIG1ldGFkYXRh
IGFyZSBzY3JhcGVkIGZyb20gdGhlIGN1cnJlbnQgVG9IWzNdLCBob3dldmVyIHNvbWUgc21hbGwK
PiBwaWVjZXMgYXJlIGFkZGVkIGFuZCBsYXRlciByZW5kZXJlZCBpbiBzb21ldGhpbmcgdXNlZnVs
Ogo+IAo+IMKgwqDCoCB0ZnRwX2ltYWdlOiBBcmNoZXJDNXYxX3RwX3JlY292ZXJ5LmJpbgo+IMKg
wqDCoCB0ZnRwX2lwOiAxOTIuMTY4LjAuNjYKPiAKPiBSZXN1bHQgaW4gYSBzbWFsbCB0ZXh0IHRv
IGV4cGxhaW4gaG93IHRvIHVzZSB0aGUgVEZUUCByZWNvdmVyeS4KPiAKPiDCoMKgwqAgc3dpdGNo
X3BvcnRzOgo+IMKgIMKgwqDCoCAwOiBFVEgxCj4gwqAgwqDCoMKgIDE6IFdBTgo+IMKgIMKgwqDC
oCAyOiBMQU4xCj4gwqAgwqDCoMKgIDM6IExBTjIKPiDCoCDCoMKgwqAgNDogTEFOMwo+IMKgIMKg
wqDCoCA1OiBMQU40Cj4gwqDCoMKgIMKgIDY6IEVUSDAKPiAKPiBDcmVhdGVzIGEgdGFibGUgd2l0
aCB0aGUgc3dpdGNoIHBvcnQgbWVzc2luZy4KPiAKPiBTYW1lIGNvdWxkIGJlIGRvbmUgd2l0aCB0
aGUgZmxhc2ggbGF5b3V0LCBMRURzLCBldGMuCj4gCj4gQWxsIHRoZXNlIGluZm9ybWF0aW9uIGFy
ZSAoaG9wZWZ1bGx5KSBhdmFpbGFibGUgdG8gdGhlIGRldmVsb3BlciBhZGRpbmcKPiBhIG5ldyBk
ZXZpY2UsIHRoZXJlZm9yZSBlYXN5IHRvIHN1cHBseSBzdWNoIGEgYHlhbWxgIG1ldGFkYXRhIGZp
bGUgYXMKPiB3ZWxsLiBPZnRlbiB0aGVzZSBpbmZvcm1hdGlvbiBhcmUgKHJlLWZvcm11bGF0ZWQp
IGluIGNvbW1pdCBtZXNzYWdlcwo+IGFueXdheVs0XS4gTWVhbmluZywgc29tZXdoZXJlIGluIHRo
ZSBidWlsZHJvb3QgY291bGQgYmUgYSBzdG9yZSBvZgo+IGB5YW1sYCBmaWxlcywgd2hpY2ggY291
bGQgZXZlbiBiZSByZXVzZWQgZm9yIGJ1aWxkaW5nIGl0c2VsZi4KPiAKPiBBIHNlY29uZCByZXBv
c2l0b3J5IGxpa2Ugb3BlbndydC1kZXZpY2UuZ2l0WzVdIGNvdWxkIGJlIGFkZGVkIHRvIHJlbmRl
cgo+IHRoZSB3aWtpIHBhZ2VzIGFuZCBvcmdhbml6ZSB0aGUgdGVtcGxhdGVzLgo+IAo+IEknZCBi
ZSBoYXBweSB0byBoZWFyIHlvdXIgb3BpbmlvbnMuCgpJIHJlYWxseSBsaWtlLCBpdCdzIG5pY2Ug
YW5kIEkgYXBwbGF1ZCB5b3VyIGVmZm9ydC4gVGhhbmtzIQoKPiBCZXN0LAo+IFBhdWwKPiAKPiBQ
UzogSSdtIGFmcmFpZCBJIGRvbid0IGtub3cgdGhlIG1haWwgYWRkcmVzcyBvZiB0bW9tYXMuLi4K
PiAKPiBbMF06IGh0dHBzOi8vYXBhcmNhci5naXRodWIuaW8vb3BlbndydC1kZXZpY2VzL2Rldmlj
ZXMvdHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxLwo+IFsxXTogaHR0cDovL3dpa2kubGluZWFn
ZW9zLm9yZy9kZXZpY2VzLwo+IFsyXTogaHR0cHM6Ly9naXRodWIuY29tL2FwYXJjYXIvb3Blbndy
dC1kZXZpY2VzL2Jsb2IvbWFzdGVyL19kYXRhL2RldmljZXMvdHAtbGlua19hcmNoZXJfYzVfYWMx
MjAwX3YxLnltbAo+IFszXTogaHR0cHM6Ly9vcGVud3J0Lm9yZy90b2gvaHdkYXRhL3RwLWxpbmsv
dHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxCj4gWzRdOiBodHRwczovL2dpdC5vcGVud3J0Lm9y
Zy8/cD1vcGVud3J0L29wZW53cnQuZ2l0O2E9Y29tbWl0O2g9NDNlOGMzN2NiNGRhNjRhMTJhM2Ni
ODhhODRiMTlkYjdmMmZjNjQwYwo+IFs1XTogaHR0cHM6Ly9naXRodWIuY29tL2FwYXJjYXIvb3Bl
bndydC1kZXZpY2VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
