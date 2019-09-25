Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF0EBE119
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 17:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fvyRZ7pfhLsD1kdLCqCd47BFxMRmTxx69LuA1fjkkY0=; b=Fp1bY3W11cRrJ+cLonHb8UiIL
	8OSr4yMLxNGg7tW208KzY7EFNrD8B5+KIS9+jKfpXXgQJxAPd1MdfdCTRxf6T32+Q5QlkZ3N3S3zr
	JEA3VHvC+XjwfSeEfQiuLRbR2np3Kx+CR3IBG/yGtLTdHy1H1dlEgooX23kuy5w3eabfq5n+0f98c
	TB5ySp4EAK/0q6dXDqW4UZSmiIyrJjS8SCR7pkfMBmt5UPTXkzkJzHKyse9gAldpnS24iHVB/1aEe
	HjSheH05LgeTzbnzwGTSgEFVCibw936+GQQH3GLmZkGHDngTkVBWu4x9eMxQXd1sHjuZ4g4pUyxbi
	uv0gbU1lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD965-0003ig-Uk; Wed, 25 Sep 2019 15:20:54 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD95t-0003iJ-7t
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 15:20:42 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9684213C283;
 Wed, 25 Sep 2019 08:20:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9684213C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1569424840;
 bh=kgBj1dyKkFdMc7V/iLi98AXsAiF7gs9QVI0ROG6ngoQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ZJILj6PdV95ybZDuYmZXEf3359J6BtaYII08X5N1q4piD9/o8Ma3eroJFmY2ja2rN
 8wFIomAuzxx7WOCOnFt6jgTemNRH/yqYWQcKsqcNNg+hm4w647aZAHMMKD4F5ceTeX
 kxmf7/p8t7rxzAG4ZwZLUIewfAi4RUnV/Z43NoAU=
To: support@maxnet.al
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
 <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
 <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
 <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <5b32d91d-6287-32aa-7213-c86b4261ec3e@candelatech.com>
Date: Wed, 25 Sep 2019 08:20:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_082041_333100_E9270DDF 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gOS8yNS8xOSA4OjE0IEFNLCBzdXBwb3J0QG1heG5ldC5hbCB3cm90ZToKPiBUaGlzIGlzIGxv
bmcgZGlzdGFuY2UsIDVrbSB3aXRoIDQgZGlzaGVzIG9uIGVhY2ggc2lkZS4gVGhleSBhcmUgYWxs
IHZlcnRpY2FsIGFuZCBhbGwgY2hhaW5zIGhhdmUgc2lnbmFsIHJhbmdlIC02MCB0byAtNjUuCj4g
Cj4gSSBkb24ndCBoYXZlIG9tbmkgYW50ZW5uYXMuIElzIHRoZXJlIGEgcHJvYmxlbSB0aGF0IGkg
YW0gdXNpbmcgZGlzaGVzPwoKSSBoYXZlIG5vIGlkZWEsIGJ1dCBhdCB0aGUgdmVyeSBsZWFzdCwg
eW91IHNob3VsZCBkb2N1bWVudCB5b3VyIHNldHVwIHdoZW4KY29tcGxhaW5pbmcgb2YgYmFkIHRo
cm91Z2hwdXQgb3IgYW55IG90aGVyIHByb2JsZW0uICBDb21wYXJlIGdvb2QgdnMgYmFkIHNpdHVh
dGlvbnMgdG8gc2VlIHdoYXQKaXMgdGhlIGRpZmZlcmVuY2UuCgpUaGF0IHdheSBzb21lb25lIHdo
byBoYXMgYWN0dWFsbHkgdHJpZWQgdGhpcyBzb3J0IG9mIHRoaW5nIG1pZ2h0IGJlIGFibGUgdG8K
b2ZmZXIgc3VnZ2VzdGlvbnMuCgpUaGFua3MsCkJlbgoKPiAKPiAKPiAKPiBPbiBXZWQsIFNlcCAy
NSwgMjAxOSBhdCA1OjExIFBNICswMjAwLCAiQmVuIEdyZWVhciIgPGdyZWVhcmJAY2FuZGVsYXRl
Y2guY29tIDxtYWlsdG86Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+PiB3cm90ZToKPiAKPiAgICAg
SXMgdGhpcyBzaG9ydCBkaXN0YW5jZSBvciBsb25nPwo+IAo+ICAgICBQbGVhc2UgdHJ5IHNob3J0
IGRpc3RhbmNlIHdpdGggb21uaSBhbnRlbm5hIGZpcnN0IHRvIG1ha2Ugc3VyZSB5b3UgYXJlIG5v
dCBoaXR0aW5nIHRoZSBkZWxheWVkLWFjayBpc3N1ZQo+ICAgICBvciBwcm9ibGVtcyB3aXRoIHlv
dXIgYW50ZW5uYS4KPiAKPiAgICAgQ2hhbmdlIHlvdXIgYW50ZW5uYSBvcmllbnRhdGlvbiBzbyB0
aGF0IHRoZXkgcG9pbnQgaW4gZGlmZmVyZW50IGRpcmVjdGlvbnMuCj4gCj4gICAgIFRoYW5rcywK
PiAgICAgQmVuCj4gCj4gICAgIE9uIDkvMjUvMTkgNjo0OSBBTSwgc3VwcG9ydEBtYXhuZXQuYWwg
d3JvdGU6Cj4gICAgID4gSGVsbG8sCj4gICAgID4gCj4gICAgID4gVG9kYXkgaSBtYW5hZ2VkIHRv
IGNvbm5lY3QgdGhlIHN0YXRpb24gd2RzIGF0IDgwTUh6IGNoYW5uZWwuIFNpZ25hbCBpcyAtNTYg
YW5kIGkgaGF2ZSB2ZXJ5IGxvdyBkYXRhcmF0ZXMuIEkgaGF2ZSBhdHRhY2hlZCBhIHBob3RvLgo+
ICAgICA+IAo+ICAgICA+ICDCoFdoZW4gc3RhdGlvbiB3YXMgZGR3cnQgYW5kIEFQIG9wZW53cnQg
dGhlIGRhdGFyYXRlcyB3ZXJlIDg2Ni80MzMuIFRYIHdvbid0IGRvIG1vcmUgdGhhbiBWSFQtTlNT
IDEgYWx0aG91Z2ggUlggaXQncyBub3QgZ29vZCBlaXRoZXIgYmVjYXVzZSBpdCdzIGEgNCBjaGFp
biAKPiAgICAgPiByYWRpbyBhbmQgaXQgc2hvdWxkIGRvIFZIVC1OU1M0Lgo+ICAgICA+IAo+ICAg
ICA+IFRoYW5rIHlvdSwKPiAgICAgPiBLbGV2aXMKPiAgICAgPiAKPiAgICAgPiAKPiAgICAgPiAK
PiAgICAgPiAKPiAgICAgPiBPbiBNb24sIFNlcCAyMywgMjAxOSBhdCA2OjM2IFBNICswMjAwLCAi
QmVuIEdyZWVhciIgID4gd3JvdGU6ID4gPiBXZWVrcyBvciBtb250aHMgb3Igd2hlbmV2ZXIgSSBo
YXZlIHRpbWUsIGFuZCBtYXliZSBzb29uZXIgaWYgc29tZW9uZSA+IHdhbnRzIHRvIHNwb25zb3Ig
aXQuIFBsZWFzZSB1bmRlcnN0YW5kIEksIGFuZCBwcm9iYWJseSBldmVyeW9uZSBlbHNlCj4gICAg
IHdvcmtpbmcgPiBvbiBPcGVuV1JULCBhbSBidXN5IHdpdGggbG90cyBvZiBvdGhlciBwcm9qZWN0
cyBhbmQgY29tbXVuaXR5IHdvcmsgb2Z0ZW4gPiBnZXRzIHB1c2hlZCB0byB0aGUgYmFjayBidXJu
ZXIuID4gPiBUaGFua3MsID4gQmVuID4gPiBPbiA5LzIzLzE5IDg6MTgKPiAgICAgQU0sIHN1cHBv
cnRAbWF4bmV0LmFsIHdyb3RlOiA+ID4gSGkgQmVuLCA+ID4gPiA+IFdoZW4gZG8geW91IHRoaW5r
IHlvdSBtaWdodCBiZSBhYmxlIHRvIG1ha2UgdGhvc2UgY2hhbmdlcyB0byB5b3VyIGRyaXZlcj8g
PiA+ID4gPiBUaGFua3MsID4gPiBLbGV2aXMuID4gPiA+Cj4gICAgICA+ID4gPiA+ID4gT24gMjAx
OS0wOS0yMCAxMzowMCwgQmVuIEdyZWVhciB3cm90ZTogPiA+PiBPbiA5LzIwLzE5IDEyOjU1IFBN
LCBWaW5jZW50IFdpZW1hbm4gd3JvdGU6ID4gPj4+IEhpIEtsZXZpcywgPiA+Pj4gPiA+Pj4gaGF2
ZSB5b3UgdHJpZWQgaXQgd2l0aCBhCj4gICAgIHNob3J0IGRpc3RhbmNlPyA+ID4+PiBJZiB5b3Ug
ZGlkIHlvdSBzaG91bGQgYmV0dGVyIGFzayBCZW4gR3JlZWFyIGRpcmVjdGx5LiA+ID4+ID4gPj4g
SSBhc2tlZCBoaW0gdG8gcG9zdCBwdWJsaWNseSBzbyB0aGF0IG90aGVycyBjYW4gaGVscCBhbnN3
ZXIgYW5kIHRoYXQgPgo+ICAgICAgPj4gbXkgb3duIGFuc3dlcnMgbWlnaHQgPiA+PiBoZWxwIHNv
bWVvbmUgZWxzZS4gPiA+PiA+ID4+IEkgaGF2ZSBzb21lIHBhdGNoZXMgdGhhdCBzaG91bGQgZW5h
YmxlIGNvdmVyYWdlIGNsYXNzIHNldHRpbmdzIGZvciA+ID4+IHdhdmUtMiwgYnV0IEkgYW0gdG9v
IGJ1c3kKPiAgICAgID4gPj4gd2l0aCBvdGhlciB0aGluZ3MgcmlnaHQgbm93IHRvIHBvcnQgdGhl
bSB0byBteSBhdGgxMGstY3QgZHJpdmVyL2Zpcm13YXJlLiA+ID4+ID4gPj4gVGhhbmtzLCA+ID4+
IEJlbiA+ID4+ID4gPj4+ID4gPj4+IEJ5IHRoZSB3YXkgYXRoMTBrIGdlbiAyIGNoaXBzZXRzCj4g
ICAgIGRvbid0IHdvcmsgdmVyeSB3ZWxsIHdpdGggbG9uZyBkaXN0YW5jZSBsaW5rcyB3aXRob3V0
IGEgPiA+Pj4gc3BlY2lhbCBmZWF0dXJlIHdoaWNoIGltcGxlbWVudGF0aW9uIGlzIG9ubHkgYXZh
aWxhYmxlIHRvIGNvbXBhbmllcyBsaWtlIFViaXF1aXRpIGFuZCB2ZXJ5IGZldwo+ICAgICAgPiA+
Pj4gcGVvcGxlIHdobyBoYXZlIGFuIG93biByZXZlcnNlLWVuZ2luZWVyZWQgaW1wbGVtZW50YXRp
b24uID4gPj4+IEl0IHdvcmtzIG9uIElQUTQwMVgsIFFDQTk4ODYgYW5kIFFDQTk4ODggYmFzZWQg
Y2hpcHMgb25seS4gPiA+Pj4gPiA+Pj4gQW5kIGl0IGlzIG5vdAo+ICAgICBwb3NzaWJsZSB0byBz
ZXQgYSBjb3ZlcmFnZSBjbGFzcyBmb3IgZ2VuIDIgZGV2aWNlcywgeWV0IGFzIGZhciBhcyBJIGtu
b3cgZHVlIHRvIG1pc3NpbmcgPiA+Pj4gZG9jdW1lbnRhdGlvbiBhbmQgaW1wbGVtZW50YXRpb24g
KGNvcnJlY3QgbWUgaWYgdGhhdAo+ICAgICBpbmZvcm1hdGlvbiBpcyBvdXRkYXRlZCkuID4gPj4+
IEZ1cnRoZXJtb3JlIGEgaGlnaCBjaGFubmVsIHdpZHRoIG9mdGVuIHJlc3VsdHMgaW4gcHJvYmxl
bXMgPiA+Pj4gZHVlIHRvIGxvd2VyIHJlY2VpdmVyIHNlbnNpYmlsaXR5LiA+ID4+PiBXZSBoYXZl
IGJldHRlcgo+ICAgICBleHBlcmllbmNlcyB3aXRoIGxvd2VyIGNoYW5uZWwgd2lkdGhzIGFuZCBz
b21ldGltZXMgZ2V0IG1vcmUgdGhyb3VnaHB1dCB3aXRoIHRoYXQuID4gPj4+ID4gPj4+IEFjdHVh
bGx5IEkgdGhpbmsgdGhpcyBkb2VzIG5vdCBleHBsYWluIHlvdXIgY29ubmVjdGlvbiBpc3N1ZXMK
PiAgICAgYXMgMTMga20gaXMgbm90IHRoYXQgbXVjaC4gPiA+Pj4gPiA+Pj4gUmVnYXJkcywgPiA+
Pj4gPiA+Pj4gVmluY2VudCBXaWVtYW5uID4gPj4+ID4gPj4+IE9uIDIwLjA5LjE5IDE4OjMwLCBz
dXBwb3J0QG1heG5ldC5hbCB3cm90ZTogPiA+Pj4+IEhlbGxvIGV2ZXJ5b25lLCA+Cj4gICAgICA+
Pj4+ID4gPj4+PiBJIGFtIHRyeWluZyB0byBzZXR1cCBhIGN1c3RvbSBtYWRlIG91dGRvb3IgbGlu
ayB3aXRoIEFwdTJkMiBib2FyZCBkZXZpY2VzIGFuZCBRQ0E5OTk0IGNhcmRzIGZyb20gY29tcGV4
LiBBZnRlciBpIGluc3RhbGxlZCBvcGVud3J0IGFuZCBhdGgxMGsKPiAgICAgY3QgZHJpdmVyLCA+
ID4+Pj4ga21vZCBhdGgxMGsgYW5kIGJvYXJkLTIuYmluIHRoZSBkZXZpY2UgY2FuIHJ1biBhIDgw
TUh6IGNoYW5uZWwgaW4gV0RTIEFQLiBUaGUgcHJvYmxlbSBpcyB0aGF0IGl0IHdvbid0IHJ1biBh
cyBzdGF0aW9uIG9yIHN0YXRpb24gd2RzLiBJdAo+ICAgICBjYW4gc2NhbiA+ID4+Pj4gdGhlIFNT
SURzIGJ1dCB3b24ndCBjb25uZWN0IHRoZW0uID4gPj4+PiA+ID4+Pj4gQW55IHN1Z2dlc3Rpb24/
ID4gPj4+PiA+ID4+Pj4gVGhhbmsgeW91ISA+ID4+Pj4gS2xldmlzID4gPj4+PiA+ID4+PiA+ID4+
Pgo+ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXyA+
ID4+PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdCA+ID4+PiBvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnID4gPj4+Cj4gICAgIGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsID4gPj4+ID4gPiA+ID4gPiAtLSA+IEJlbiBHcmVlYXJD
YW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgaHR0cDovL3d3dy5jYW5kZWxhdGVjaC5jb20gPiAtLSBC
ZW4gR3JlZWFyCj4gICAgIENhbmRlbGEgVGVjaG5vbG9naWVzIEluYyBodHRwOi8vd3d3LmNhbmRl
bGF0ZWNoLmNvbQo+IAoKCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4K
Q2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
