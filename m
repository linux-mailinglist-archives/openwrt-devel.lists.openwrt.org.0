Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C941CC4E
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 17:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ys85LYeff2/NYstCgRx0OzJ0mUKuzaTQpFQshbmUIF8=; b=mGf1lrln+eiAEJ
	tCJWFqxc5o3JVoFWpJggyDENbB2jPrV9okZk/4CA1aq1+pcKckEq5r5gLrBA49lE/+1KnOGkH48AK
	w3X60sdqlMOyZX/07Hf9GjrS0DV9peGT6h6yC/Zuf+OUTvLw3Y7xVlEoHUkbXjmAAN8PaD5CJ91T8
	GRfkRQs85o03kMvI3FRA+LwSJaop3PoZe2gv3Imh0r6LYZ2j94JsKvX7wCO9sUI0LXDTyJdwQdhvE
	IXgyO+lmo0od4CsX1obUzM3v6NfXIbf5kyiCrtrehtH1IzfBI0hwUwMj4E8Gd1CWR2qa96CkfaJdt
	sz4fwnSQVYUTMyB3V0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZmT-00069m-1m; Tue, 14 May 2019 15:55:53 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZmM-00069K-7S
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 15:55:47 +0000
X-Originating-IP: 139.18.242.240
Received: from [172.24.187.150] (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0DC02E0005;
 Tue, 14 May 2019 15:55:35 +0000 (UTC)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190510153621.30933-1-mail@aparcar.org>
 <20190510153621.30933-2-mail@aparcar.org>
 <20190514140834.GA93050@meh.true.cz>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <f06f0eac-5cd9-efc6-86ed-27c2021fe1ba@aparcar.org>
Date: Tue, 14 May 2019 17:55:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514140834.GA93050@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_085546_568554_1C8BB31E 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] procd: apply official kernel
 clang-format style
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
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gNS8xNC8xOSA0OjA4IFBNLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IFBhdWwgU3Bvb3JlbiA8
bWFpbEBhcGFyY2FyLm9yZz4gWzIwMTktMDUtMTAgMTc6MzY6MjFdOgo+Cj4gSGksCj4KPj4gQ3Vy
cmVudGx5IHNvbWUgZmlsZXMgdXNlIGEgbWl4dHVyZSBvZiBzcGFjZXMgYW5kIHRhYnMgd2l0aGlu
IGEgc2luZ2xlCj4+IGZpbGUsIGluc3RlYWQgb2YgZml4aW5nIHN0eWxlIG1hbnVhbGx5LCBhIHRv
b2wgY291bGQgZG8gdGhlIGpvYi4KPiBJIGZpbmQgY29uc2lzdGVudCBjb2Rpbmcgc3R5bGUgaW1w
b3J0YW50LCBidXQgSSBhbHNvIGtub3csIGhvdyBoYXJkIGlzIGl0IHRvCj4gYWNoaWV2ZSBpdC4g
SXQncyBzb21lIHRpbWUgYWxyZWFkeSwgc28gSSBkb24ndCByZW1lbWJlciBhbGwgdGhlIGdsb3J5
IGRldGFpbHMsCj4gYnV0IGRpZmZlcmVudCBjbGFuZy1mb3JtYXQgdmVyc2lvbnMgcHJvZHVjZSBk
aWZmZXJlbnQgcmVzdWx0cywgZG9lc24ndCBzdXBwb3J0Cj4gY2VydGFpbiBvcHRpb25zIGV0Yy4s
IHNvIGl0J3MgcHJldHR5IGNvbmZ1c2luZyBhbmQgaW50cm9kdWNpbmcgYW5vdGhlcgo+IG92ZXJo
ZWFkLgpUcnVlLCB0aGF0J3Mgd2h5IEkgbGlrZWQgdGhlIGlkZWEgb2YgdXNpbmcgdGhlIGtlcm5l
bHMgc3R5bGUuCj4gVGhlbiB5b3Ugc2hvdWxkIGVuZm9yY2UgaXQgc29tZWhvdyAoY29tbWl0IGhv
b2tzLCBtYWtlIHRhcmdldCksCj4gb3RoZXJ3aXNlIGl0J3MgZ29pbmcgdG8gYml0cm90IGFmdGVy
IHNvbWV0aW1lIGFnYWluIGV0Yy4KSSdkIHN0YXJ0IHdvcmtpbmcgb24gc29tZSBDSSB0byB0ZXN0
IGZvciBmdW5jdGlvbmFsaXR5IGFuZCBhbHNvIGNvZGUgc3R5bGUuCj4KPj4gK3N0YXRpYyBzdHJ1
Y3QgaW5pdF9oYW5kbGVyIGhhbmRsZXJzW10gPSB7IHsKPj4gKwkJCQkJCSAgLm5hbWUgPSAic3lz
aW5pdCIsCj4+ICsJCQkJCQkgIC5jYiA9IHJ1bnJjLAo+PiArCQkJCQkgIH0sCj4+ICsJCQkJCSAg
ewo+PiArCQkJCQkJICAubmFtZSA9ICJzaHV0ZG93biIsCj4+ICsJCQkJCQkgIC5jYiA9IHJ1bnJj
LAo+PiArCQkJCQkgIH0sCj4+ICsJCQkJCSAgewo+PiArCQkJCQkJICAubmFtZSA9ICJhc2tmaXJz
dCIsCj4+ICsJCQkJCQkgIC5jYiA9IGFza2ZpcnN0LAo+PiArCQkJCQkJICAubXVsdGkgPSAxLAo+
PiArCQkJCQkgIH0sCj4+ICsJCQkJCSAgewo+PiArCQkJCQkJICAubmFtZSA9ICJhc2tjb25zb2xl
IiwKPj4gKwkJCQkJCSAgLmNiID0gYXNrY29uc29sZSwKPj4gKwkJCQkJCSAgLm11bHRpID0gMSwK
Pj4gKwkJCQkJICB9LAo+PiArCQkJCQkgIHsKPj4gKwkJCQkJCSAgLm5hbWUgPSAicmVzcGF3biIs
Cj4+ICsJCQkJCQkgIC5jYiA9IHJjcmVzcGF3biwKPj4gKwkJCQkJCSAgLm11bHRpID0gMSwKPj4g
KwkJCQkJICB9LAo+PiArCQkJCQkgIHsKPj4gKwkJCQkJCSAgLm5hbWUgPSAiYXNrY29uc29sZWxh
dGUiLAo+PiArCQkJCQkJICAuY2IgPSBhc2tjb25zb2xlLAo+PiArCQkJCQkJICAubXVsdGkgPSAx
LAo+PiArCQkJCQkgIH0sCj4+ICsJCQkJCSAgewo+PiArCQkJCQkJICAubmFtZSA9ICJyZXNwYXdu
bGF0ZSIsCj4+ICsJCQkJCQkgIC5jYiA9IHJjcmVzcGF3biwKPj4gKwkJCQkJCSAgLm11bHRpID0g
MSwKPj4gKwkJCQkJICB9IH07Cj4gaXQncyBqdXN0IG1lIG9yIGlzIHRoaXMgdmVyeSB1Z2x5PwoK
VmVyeSB0cnVlLCBJIHRoaW5rLiBGb3Igc29tZSBjYXNlcyBpdCBjb3VsZCBtYWtlIHNlbnNlIHRv
IGRpc2FibGUKY2xhbmctZm9ybWF0OgoKaW50IGZvcm1hdHRlZF9jb2RlOwovLyBjbGFuZy1mb3Jt
YXQgb2ZmCsKgwqDCoCB2b2lkwqDCoMKgIHVuZm9ybWF0dGVkX2NvZGXCoCA7Ci8vIGNsYW5nLWZv
cm1hdCBvbgp2b2lkIGZvcm1hdHRlZF9jb2RlX2FnYWluOwoKPj4gLQlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGEsICZhY3Rpb25zLCBsaXN0KQo+PiAtCQlpZiAoIXN0cmNtcChhLT5oYW5kbGVyLT5uYW1l
LCBoYW5kbGVyKSkgewo+PiAtCQkJaWYgKGEtPmhhbmRsZXItPm11bHRpKSB7Cj4+IC0JCQkJYS0+
aGFuZGxlci0+Y2IoYSk7Cj4+IC0JCQkJY29udGludWU7Cj4+IC0JCQl9Cj4+ICsJbGlzdF9mb3Jf
ZWFjaF9lbnRyeShhLCAmYWN0aW9ucywKPj4gKwkJCSAgICBsaXN0KSBpZiAoIXN0cmNtcChhLT5o
YW5kbGVyLT5uYW1lLCBoYW5kbGVyKSkKPj4gKwl7Cj4+ICsJCWlmIChhLT5oYW5kbGVyLT5tdWx0
aSkgewo+IGVoPyAoSSd2ZSBzdG9wcGVkIHJlYWRpbmcgdGhlIGNoYW5nZXMgYW55IGZ1cnRoZXIp
CgpJIHRoaW5rIGl0J3MgYmVjYXVzZSBJIHJlbW92ZWQgdGhlIEZvckVhY2hNYWNybyBkZWZpbml0
aW9uLCBJJ2xsIHNlbmQgYSB2Mi4KCkJlc3QsClBhdWwKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
