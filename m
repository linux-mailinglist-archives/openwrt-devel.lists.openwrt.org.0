Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC37C15333E
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 15:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b+FYfqgJXOS10W9mS/pxKz/6chc6FYvFovVZHanKhn0=; b=eVqVUQ5HaTMXYiCUy7bHXAvlS
	1bhb9TI7woCDFclbfdiBzYwiZlmCOcEIT/8JAAWBBwC6/Tn48kIggv4WsboQ7HSzRe8DjHmJOG7Db
	mCyMfy+vUvbmHJjbObqg9LJY0ZUsFsSYvEa/UjNZmDqiFccRHVkQRYmeOj8iMb+jyOP4rG9RQv0QZ
	iywFsJnCPXQpaZS4EHH4LLGmCec7QikSSymwgLEjy++nvyzTAEL1rjbp5071fADS07ntgslZ9w4co
	vrKlRQ/+t/nmoPRMJB8lxoLRdH7JWyO8wmrDVuxVXeQwch/CyEbDiJbRSPzv/W3RHhLJaa7pBre+S
	cFC6MPSVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLt9-0006A3-1f; Wed, 05 Feb 2020 14:42:47 +0000
Received: from mail.navigue.com ([74.117.40.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLt2-00069B-10
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 14:42:41 +0000
Received: from [192.168.7.177] (bureau.navigue.com [74.117.40.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.navigue.com (Postfix) with ESMTPSA id 66B2414308A;
 Wed,  5 Feb 2020 09:45:22 -0500 (EST)
To: Badi Varaee <badi.varaee@xpedite-africa.com>,
 openwrt-devel@lists.openwrt.org
References: <CADzLWnWSh3=c77KmHZ+qRmXEr7-4VmJqOu2bzTNcT32QXGi1-g@mail.gmail.com>
From: Jonathan Thibault <jonathan@navigue.com>
Message-ID: <8ddeb309-d974-cbdd-fd14-5389efe376dc@navigue.com>
Date: Wed, 5 Feb 2020 09:42:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CADzLWnWSh3=c77KmHZ+qRmXEr7-4VmJqOu2bzTNcT32QXGi1-g@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_064240_159946_74C17EC3 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.117.40.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 URI_NOVOWEL            URI: URI hostname has long non-vowel sequence
Subject: Re: [OpenWrt-Devel] OpenWrt on RBM33G for Bonding (Layer 2)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpJIGRvIG5vdCB0aGluayBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0byBhY2hpZXZlIHRo
aXMgcmVsaWFibHkgdmlhIEwyIGJvbmRpbmcuCgpMYXRlbmN5IGRpZmZlcmVuY2VzIGFuZCBsaW5r
IGxvc3MgZGV0ZWN0aW9uIHdvdWxkIG1ha2Ugc3VjaCBhIHNldHVwIHZlcnkgCmZpbmlja3kuwqAg
SWYgdGhlIHBvaW50IGlzIHRvIHVzZSBNdWx0aVBhdGhUQ1AsIEkgdGhpbmsgeW91ciBiZXN0IGJl
dCAKd291bGQgYmUgcnVuIGEgVlBOIG92ZXIgTXVsdGlQYXRoIFRDUCBhbmQsIHRha2UgdGhlIGVu
Y2Fwc3VsYXRpb24gCnBlbmFsdHkuwqAgSWYgeW91IHVzZSBhbiBMMiAodGFwKSB2cG4sIHRoaXMg
aW50ZXJmYWNlIHdvdWxkIG1vcmUgb3IgbGVzcyAKYmVoYXZlIGFzIHlvdSBleHBlY3QgYSAnYm9u
ZCcgaW50ZXJmYWNlIHRvLgoKSSdtIG5vdCBmYW1pbGlhciBlbm91Z2ggd2l0aCBNdWx0aVBhdGgg
VENQIHRvIGtub3cgaWYgdGhlIGVuZHBvaW50cyAKKFNheSwgT3BlblZQTiBpbiBUQVAgbW9kZSBv
dmVyIFRDUCkgbmVlZCBzcGVjaWZpYyBzdXBwb3J0IGZvciB0aGUgCnByb3RvY29sIGhvd2V2ZXIu
CgpMZXQgdXMga25vdyBpZiB5b3UgZ2V0IGl0IHRvIHdvcmsuCgoKT24gMjAyMC0wMi0wNCAzOjA1
IGEubS4sIEJhZGkgVmFyYWVlIHdyb3RlOgo+Cj4gR29vZCBkYXksCj4KPiBDb3VsZCBzb21lb25l
IGhlbHAgbWUgd2l0aCB0aGUgZm9sbG93aW5nIGlzc3VlIG9yIGp1c3QgbWFrZSBhIAo+IGZyZWVs
YW5jZXIgYWNjb3VudCBhbmQgd2UgcGF5IGhpbSB0byBkbyBpdDoKPgo+IFdlIHJlcXVpcmUgYW4g
ZXhwZXJ0IHRvIGJvbmQgaW50ZXJmYWNlcyBvZiBNaWtyb3RpayByb3V0ZXIgd2l0aCAKPiBPcGVu
V3J0IGZpcm13YXJlIEFTQVAuIFRoZSBPcGVuV3J0IGZpcm13YXJlIGlzIGFscmVhZHkgaW5zdGFs
bGVkLCBhbmQgCj4gdGhlIGludGVyZmFjZXMgYXJlIHBpY2tlZCB1cCBhbHNvIHRoZSBsb2FkIGJh
bGFuY2luZyBpcyB3b3JraW5nIAo+IHBlcmZlY3RseSBvbiBSQk0zM0cgTWlrcm90aWsod2hpY2gg
aGFzIE9wZW5XcnQgT1MpIHdpdGggdHdvIFF1ZWN0ZWwgCj4gTFRFLUEgY2FyZHMsIGFuZCB3ZSBu
ZWVkIHRvIGJvbmQgdGhlIHJvdXRlciBpbnRlcmZhY2VzIHRvZ2V0aGVyIGFuZCAKPiByb3V0ZSBh
bGwgdGhlIHRyYWZmaWMgdG8gb25lIEV0aGVybmV0LiBXZSBtYXkgYWxzbyBuZWVkIHRvIGRvIHRo
ZSBzYW1lIAo+IHRoaW5nIHdpdGggb3RoZXIgTWlrcm90aWsgcm91dGVyLWJvYXJkcyBhcyB3ZWxs
IGluIHRoZSBmdXR1cmUsIHNvIHdlIAo+IG5lZWQgdG8ga25vdyBob3cgdG8gY29uZmlndXJlIHRo
YXQgcm91dGVyIGZvciB0aGUgbGF5ZXIgMiBib25kaW5nLgo+IFRoZSBwdXJwb3NlIG9mIHRoYXQg
Ym9uZGluZyBpcyB0byBoYXZlIGEgZmFzdCBhbmQgcmVsaWFibGUgbGF5ZXIgMiAKPiBjb25uZWN0
aW9ucyBiZXR3ZWVuIHRoZSAyIHNpZGVzLiBXZSBuZWVkIGEgTGF5ZXIgMiBib25kaW5nIHdoaWNo
IGJvbmQgCj4gYWxsIGludGVyZmFjZXMgdGhyb3VnaCBhIFZQTiBjb25uZWN0aW9uIChlYWNoIGlu
dGVyZmFjZSBzcGxpdCB0aGUgVlBOIAo+IGNvbm5lY3Rpb25zKSB0byBhbm90aGVyIHNlcnZlciAo
Y291bGQgYmUgQ2VudE9zKS4KPiBJZiB0aGUgVlBOIGNvbm5lY3Rpb25zIChGb3IgZXhhbXBsZSBQ
UFRQcykgZmFpbHMgd2hpbGUgdGVzdGluZyBpdCBpcyAKPiBub3Qgd29ydGggYW55dGhpbmcuCj4K
PiBTZWUgdGhlIGxpbmtzIGJlbG93IGZvciB0aGUgdHlwZSBvZiBib25kaW5nIHdlIG5lZWQ6Cj4K
PiBodHRwczovL3d3dy5vcGVubXB0Y3Byb3V0ZXIuY29tLwo+IDxodHRwczovL3d3dy5mcmVlbGFu
Y2VyLmNvbS91c2Vycy9sLnBocD91cmw9aHR0cHM6JTJGJTJGd3d3Lm9wZW5tcHRjcHJvdXRlci5j
b20lMkYmc2lnPTcyYTMzMzZlNThmYzFlNDAyYTE0ZDBiZmFiY2Y3NjZjYjcyNjc2NmRkNDY2MWEy
M2U1MTNhMWNiNTRhMDQ0OWY+Cj4gaHR0cHM6Ly9naXRodWIuY29tL3lza2NnL29wZW53cnQtYm9u
ZGluZyAKPiA8aHR0cHM6Ly93d3cuZnJlZWxhbmNlci5jb20vdXNlcnMvbC5waHA/dXJsPWh0dHBz
OiUyRiUyRmdpdGh1Yi5jb20lMkZ5c2tjZyUyRm9wZW53cnQtYm9uZGluZyZzaWc9MDVhZDVjNmQz
NmZiMjk4MzVkYTNmZTk3NzIyNTE5ZTg4ZTM4YzhkZWZhYWQxNWFkMjU3MWQyMDFiNzBlNzUwZj4K
Pgo+Cj4gUmVnYXJkcywKPgo+Cj4KPiAvRGlzY2xhaW1lci8gPGh0dHBzOi8vbmVyb3NwZWMuY29t
L3ByaXZhY3ktcG9saWN5Lz4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwKCgotLSAKSm9uYXRoYW4gVGhpYmF1bHQKQW5hbHlzdGUvQWRt
aW5pc3RyYXRldXIgUsOpc2VhdQpOYXZpZ3VlCjk3LCByb3V0ZSAxMzIsIFNhaW50LUdvZGVmcm9p
IChRdcOpYmVjKSBHMEMgM0MwCjU4MS0zNTctMjAxNQpqb25hdGhhbkBuYXZpZ3VlLmNvbQp3d3cu
bmF2aWd1ZS5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
