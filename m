Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC541B71A5
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 12:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cRKq+w/yAOgY36aupbK9xsEyE2kiuqwP46dfIS7swzk=; b=eGVD2YbYlkIYWxk3+ra9C2JUP
	6iTdRF47NS5iYe9L2t9GOnYSBu9eyrynVayw4VwqF6G9htpMxt6RT+k+I9KPSao7ZLlIgR1yFrOuv
	FuhTkOaGns4UhpEsEZJiJj8ik511giIsW39Jyrel+bjmRTYKNKzDTXE8e9sqMDp+j375iIYxwGVzl
	DdIn41kEz4pUCxh/hkWbFumT3/5w1P5cYxJ/ckuvjLjMEvB4GoQlhMOIyTfc969paJSjBCdDRAzHe
	xKct9VjG4ye/PhjgBPvaPmfOwX4Y8bdISaV/rU3RntM3caDEGmq9jqmrotvlBnOQUW5FUWHj/Ybkx
	XIDl/kwjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRvJG-000468-4N; Fri, 24 Apr 2020 10:11:50 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRvIw-00044L-QM
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 10:11:36 +0000
Received: from catv-178-48-146-20.catv.broadband.hu ([178.48.146.20]:59334
 helo=[10.1.1.1])
 by trabant.uid0.hu with esmtpsa (Exim 4.89 #1 (Debian))
 id 1jRvIp-0003Di-0c
 from <wigyori@uid0.hu>; Fri, 24 Apr 2020 12:11:26 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20200420142932.12056-1-ynezz@true.cz>
 <7581c5c4-1db9-e3c9-e971-d799fde8417a@uid0.hu>
 <20200424092500.GC76955@meh.true.cz>
From: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <de825b7a-fbae-8b21-eab7-37284b607163@uid0.hu>
Date: Fri, 24 Apr 2020 12:11:19 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424092500.GC76955@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_031131_006736_B12D4F27 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] arm-trusted-firmware-sunxi: bump to
 v2.3-rc1 and use atf-builds binaries
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 atf.builds@tbspace.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SEkgUGV0ciwKCk9uIDQvMjQvMjAyMCAxMToyNSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiAoYWRk
aW5nIGF0Zi1idWlsZCdzIGVtYWlsIHRvIENjOiBsb29wKQo+Cj4gWm9sdGFuIEhFUlBBSSA8d2ln
eW9yaUB1aWQwLmh1PiBbMjAyMC0wNC0yMyAxNzoyNDowNF06Cj4KPiBIaSwKPgo+PiBPbiA0LzIw
LzIwMjAgMTY6MjksIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4+PiBVcGRhdGUgQVRGIHRvIGxhdGVz
dCB2Mi4zLXJjMSB2ZXJzaW9uIGFuZCB1c2UgcmVwcm9kdWNpYmxlIGJsMzEgYmluYXJpZXMKPj4+
IGZyb20gYXRmLWJ1aWxkcyBwcm9qZWN0Lgo+Pj4KPj4+IGF0Zi1idWlsZHMgcHJvamVjdCBzdGFy
dGVkIHJlY2VudGx5IG9mZmVyaW5nIHJlcHJvZHVjaWJsZSBBVEYgYmluYXJpZXMKPj4+IHdoaWNo
IGlzIG1vcmUgY29udmVuaWVudCB0aGVuIGJ1aWxkaW5nIHZlcnkgdGlueSBBVEYgYXJ0aWZhY3Rz
IGZyb20KPj4+IHNjcmF0Y2ggZHVyaW5nIGVhY2ggYnVpbGQsIHRodXMgc2F2aW5nIGNvbnNpZGVy
YWJsZSBidWlsZCByZXNvdXJjZXMuICBJdAo+Pj4gaGFzIHJlZHVjZWQgYnVpbGQgZnJvbSBzY3Jh
dGNoIHRpbWUgb24gbXkgQ0kgYnVpbGRlciBmb3Igc3VueGkvY29ydGV4YTUzCj4+PiB0YXJnZXQg
ZnJvbSA1N21pbiBkb3duIHRvIDI5bWluLgo+Pj4KPj4+IFJ1biB0ZXN0ZWQgb24gYTY0LW9saW51
eGluby1lbW1jLgo+Pj4KPj4gTkFLIGZvciBub3csIHNvcnJ5IC0gdGhleSBkb24ndCBwcm92aWRl
IEg2IGJ1aWxkcyB3aGljaCBoYXMgYSBzZXBhcmF0ZSBwbGF0LAo+PiBhbmQgdGhlIEE2NCBidWls
ZHMgY2FuJ3QgYmUgdXNlZCBvbiBpdC4KPiBJJ20gcHJvYmFibHkgbWlzc2luZyBzb21ldGhpbmcg
aGVyZSwgd2hlcmUgaXMgdGhpcyBINiB1c2VkIHJpZ2h0IG5vdz8gT3IgeW91Cj4gcGxhbiB0byBh
ZGQgdGhpcyBzb29uPyBJJ20gcXVpdGUgbG9zdCBoZXJlIGFzIEkgZGlkIGJ1aWxkL3J1biB0ZXN0
IHRoaXMKPiBjaGFuZ2UsIGRpZG4ndCBub3RpY2VkIGFueSBicmVha2FnZS4gSSdtIHF1aXRlIGxv
c3QgaGVyZS4KWWVzLCBINiBpcyBpbiB0aGUgd29ya3MgZm9yIHNvbWUgdGltZSAtIG5vIGJyZWFr
YWdlIGZvciBub3cgb24gdGhpcyAKY2hhbmdlLCBidXQgd291bGQgYnJlYWsgdXBjb21pbmcgd29y
ay4KCj4+ICAgSWYgeW91IGNhbiBwaW5nIHRoZW0gdG8gcmVsZWFzZSBINiBidWlsZHMgYXMgd2Vs
bCwgdGhlbiBsZXQncyByZS1kaXNjdXNzLgo+IFlvdSBvciBhbnlvbmUgZWxzZSBjYW4gcGluZyB0
aGVtWzFdIHdpdGggYSBzaW1wbGUgUFIgd2hpY2ggd291bGQgYWRkIG90aGVyCj4gYmluYXJpZXMu
IEkgZGlkIHRoZSBzYW1lIHdpdGggIkFkZCBzdW41MGlfYTY0IHRhcmdldCJbMl0gZm9yIGE2NC4K
VGhhdCBzb3VuZHMgZ3JlYXQsIGlmIGl0J3MgdGhhdCBlYXN5IHRvIGFzayBmb3IgbmV3IHRhcmdl
dHMgLyBiaW5hcmllcyAKdG8gYmUgYnVpbHQsIEknbGwgcHJlcCBhIFBSIGZvciB0aGVtIHRvIGFk
ZCBzdW41MGlfaDYuCgo+IGF0Zi1idWlsZHMgc3RhcnRlZCBpbiAicm9ja2NoaXA6IGFkZCBzdXBw
b3J0IGZvciBQaW5lNjQgUm9ja1BybzY0IlszXSwKPiBvdGhlcndpc2Ugd2Ugd291bGQgbmVlZCB0
byBidWlsZCBhbm90aGVyIHRvb2xjaGFpbiAoYnVpbGQgdGltZSBleHBlbnNpdmUpIGp1c3QKPiB0
byBnZXQgc21hbGwgQVRGIGJpbmFyeS4gVXNpbmcgcmVwcm9kdWNpYmxlIEFURiBiaW5hcmllcyBz
ZWVtZWQgYmV0dGVyCj4gc29sdXRpb24gdG8gbWUsIHRoZW4gZm9yIGV4YW1wbGUgaGF2aW5nIExp
bnV4IG9ubHkgc29sdXRpb24gKGR1ZSB0byBkb3dubG9hZGVkCj4gTGludXggdG9vbGNoYWluKSBp
biBhcm0tdHJ1c3RlZC1maXJtd2FyZS1tdmVidS4KPj4gQWxzbywgaWYgeW91IGNvdWxkIHNoYXJl
IGhvdyB0aGUgc3BlZWQtdXAgd2FzIG1lYXN1cmVkIG9ubHkgd2l0aCB0aGlzCj4+IGNoYW5nZSwg
dGhhdCdkIGJlIGdyZWF0Lgo+IEknbSBidWlsZGluZyBteSBzdGFnaW5nIHRyZWUgZm9yIHNvbWUg
dGltZSBvbiBHaXRMYWIgQ0ksIHVzaW5nIHNhbWUKPiBzdGVwcy9jb25maWcgYXMgdXNlZCBvbiB0
aGUgcHJvamVjdCdzIGJ1aWxkYm90cy4gTW9zdCBvZiB0aGUgYnVpbGRzIGFyZSBhcm91bmQKPiAz
MG1pbiwgc28gdGhvc2UgYWxtb3N0IGRvdWJsZSBidWlsZCB0aW1lcyBmb3IgYTUzIGFyZSBlYXNp
bHkgbm90aWNlYWJsZS4KVGhhbmtzIGZvciB0aGUgZGV0YWlscy4gSSBkb24ndCBzZWUgdGhhdCB0
aGlzIGhlbHBzIGlmIHlvdSdyZSBidWlsZGluZyAKaW1hZ2VzIHlvdXJzZWxmIGZvciB0aGUgQWxs
d2lubmVyIEE1MyBib2FyZHMgYXMgeW91IG5lZWQgdG8gY29tcGlsZSB0aGUgCnRvb2xjaGFpbiBh
bnl3YXksIGJ1dCBpZiB0aGlzIGhlbHBzIG9uIHRoZSBidWlsZGJvdHMsIGlmIHdlIGNhbiBhc2sg
SDYgCmltYWdlcyB0byBiZSBidWlsdCwgYW5kIGV2ZXJ5b25lIGFncmVlcyB0aGF0IHVzaW5nIHBy
ZS1idWlsdCBBVEYgaW1hZ2VzIAppcyB0aGUgc2FmZSB3YXkgZm9yd2FyZCwgdGhlbiBJIHdvbid0
IHN0b3AgYW55b25lIGZyb20gZG9pbmcgc28uCgo+IGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9v
cGVud3J0Ly0vam9icy81MTgxODY0MzYgKDI5bWluLCBzdW54aS9jb3J0ZXhhNTMgd2l0aCBhdGYt
YnVpbGRzKQo+Cj4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQvLS9qb2JzLzUwMjYy
ODkyMSAoNTdtaW4sIHN1bnhpL2NvcnRleGE1MykKPiBodHRwczovL2dpdGxhYi5jb20veW5lenov
b3BlbndydC8tL2pvYnMvNDk3NDg2NzkyICg1Nm1pbiwgc3VueGkvY29ydGV4YTUzKQo+IGh0dHBz
Oi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0Ly0vam9icy80OTYyMTI2NDAgKDU3bWluLCBzdW54
aS9jb3J0ZXhhNTMpCj4KPiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC8tL2pvYnMv
NDg1MDE0Nzk4ICgyN21pbiwgc3VueGkvY29ydGV4YTgpCj4gaHR0cHM6Ly9naXRsYWIuY29tL3lu
ZXp6L29wZW53cnQvLS9qb2JzLzQ4NTAxNDc5NyAoMzJtaW4sIHN1bnhpL2NvcnRleGE3KQo+Cj4g
MS4gaHR0cHM6Ly9naXRodWIuY29tL2F0Zi1idWlsZHMvYXRmI2FkZGluZy1uZXctYnVpbGQtdGFy
Z2V0cwo+IDIuIGh0dHBzOi8vZ2l0aHViLmNvbS9hdGYtYnVpbGRzL2F0Zi9wdWxsLzEKPiAzLiBo
dHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjkxNyNpc3N1ZWNvbW1lbnQt
NjE0MzI5MjI3CgpUaGFua3MsClpvbHRhbiBICgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
