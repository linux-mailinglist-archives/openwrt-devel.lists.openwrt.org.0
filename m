Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975533A2A4
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 02:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBPVXaQ/fQhRKthzvauZl+zb5weVwaA8+bECtMLcK1w=; b=pCrfSvh5vHwtwY
	LQ9ILSknF7an5FFWJClE7Ntpot6lr2ZSgqcE4YHLvggFi5qW67wEIv7s8QymYUH4BGL3bd5BBMkO8
	dn6IL6d14i5jNEOhkwCPUGza/+FET1RmplVHHL8I2Vi8klNHDNt51wObvnbp+2Un/5x/t1m2pOLFV
	VAyDrYoEu0+eaf6jCz4tPt4z3V+cmrNN2aIuI5BQBr6u/9YdoelNuX7aMv5awAeOpgD9Km/G1tWXE
	oISpk8diIA2+veyBHZk20iJcRkbB9xsOlwbotqmIeK19g6zS96Zfz+DZVWYFNFaxBPWRyIQMuFdtt
	Uq6nxODTR1CbhR9V9wVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlTj-0004DO-0J; Sun, 09 Jun 2019 00:14:31 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlTa-0004Cu-Ck
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 00:14:24 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 779597BD70;
 Sat,  8 Jun 2019 20:14:18 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=sasl; bh=+hCIgWf2gGnv
 N1U5hkkWGBSChbE=; b=aeYHrYvdTdR1C/CiYJpgXMe/sBBO4cYk+Xom48ybbj4m
 m1jH0jnhXy1UXqktHQWtdqG0hwUoU1XWgGql86pwsfBghcDFbeUiqXobYZrJ2jiJ
 iqadRXKWY/OjDHNkJBEnaMT+mD9ZKOadJ3cUrnfHKF4qW6CuaKdaENZ+kfjGNX4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=sasl; b=tGcmYL
 fLKm0ypsjrcZRJn8fWcEyuTf6pINxrMtDMl4/eAbCMlC4aeaTpQePF0mmbOpmzAJ
 UeAhfJxIEpy23AvX+d3gCaaIesTPYW9hwylr87HGKIbkoWKJ4uXdXSP3TioaBusm
 tkp0db/zNC1O4vVM7FdOF7NN0nsT+SCtIm1QM=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 6FEB37BD6F;
 Sat,  8 Jun 2019 20:14:18 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
Received: from [192.168.2.4] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 5F9587BD6C;
 Sat,  8 Jun 2019 20:14:15 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
To: Daniel Golle <daniel@makrotopia.org>
References: <5316c6da-1966-4896-6f4d-8120d9f1ff6e@pobox.com>
 <20190608115159.GA1559@makrotopia.org>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <42094a87-09e6-1278-97c5-b6faaaca0a95@pobox.com>
Date: Sat, 8 Jun 2019 19:12:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190608115159.GA1559@makrotopia.org>
Content-Language: en-US
X-Pobox-Relay-ID: 844A6420-8A4B-11E9-A518-B0405B776F7B-06139138!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_171422_478270_E70B0241 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Using ethtool or swconfig to change link
 settings for mt7620a?
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
Cc: Vitaly Chekryzhev <13hakta@gmail.com>, netdev@vger.kernel.org,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Luis Soltero <lsoltero@globalmarinenet.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gRGFuaWVsLAoKVGhhbmtzIGZvciB5b3VyIGhlbHAhCgpPbiA2LzgvMTkgNjo1MSBBTSwg
RGFuaWVsIEdvbGxlIHdyb3RlOgo+IEhpIERhbmllbCwKPgo+IE9uIFNhdCwgSnVuIDA4LCAyMDE5
IGF0IDA0OjA2OjU0QU0gLTA1MDAsIERhbmllbCBTYW50b3Mgd3JvdGU6Cj4+IEhlbGxvLAo+Pgo+
PiBJIG5lZWQgdG8gY2hhbmdlIGF1dG8tbmVnb3RpYXRlLCBzcGVlZCBhbmQgZHVwbGV4IGZvciBh
IHBvcnQgb24gbXkKPj4gbXQ3NjIwYS1iYXNlZCBkZXZpY2UsIGJ1dCBJJ20gbm90IHF1aXRlIGNl
cnRhaW4gdGhhdCBJIHVuZGVyc3RhbmQgdGhlCj4+IHN0cnVjdHVyZSBoZXJlLsKgIFdoZW4gdXNp
bmcgZXRodG9vbCBvbiBldGgwIEkgYWx3YXlzIGdldCBFTk9ERVYsCj4+IGFwcGFyZW50bHkgYmVj
YXVzZSBwcml2LT5waHlfZGV2IGlzIGFsd2F5cyBOVUxMIGluIGZlX2dldF9saW5rX2tzZXR0aW5n
cwo+PiBvZiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tdGsvZXRodG9vbC5jLsKgIEJ1dCBJJ20gYmVp
bmcgdG9sZCB0aGF0IGV0aDAgaXMKPj4gb25seSBhbiBpbnRlcm5hbCBkZXZpY2UgYmV0d2VlbiB0
aGUgwrVDIGFuZCB0aGUgc3dpdGNoIGhhcmR3YXJlLCBzbyBpdAo+PiBpc24ndCBldmVuIHRoZSBv
bmUgSSBuZWVkIHRvIGNoYW5nZS4KPiBUaGF0J3MgY29ycmVjdC4KCkl0IGFsd2F5cyBoZWxwcyB3
aGVuIG15IGlkZWEgYWJvdXQgd2hhdCBJJ20gZG9pbmcgbWF0Y2hlcyByZWFsaXR5LgoKPj4gSWYg
dGhpcyBpcyB0cnVlLCB0aGVuIGl0IGxvb2tzIGxpa2UgSSB3aWxsIG5lZWQgdG8gaW1wbGVtZW50
IGEKPj4gZ2V0X3BvcnRfbGluayBmdW5jdGlvbiBmb3Igc3RydWN0IHN3aXRjaF9kZXZfb3BzP8Kg
IENhbiBhbnlib2R5IGNvbmZpcm0KPj4gdGhpcyB0byBiZSB0aGUgY2FzZT/CoCBBbHNvLCBhcmUg
dGhlcmUgYW55IGV4YW1wbGVzIGFzaWRlIGZyb20gdGhlCj4+IEJyb2FkY29tIGRyaXZlcnM/wqAg
SSBoYXZlIHRoZSBtdDc2MjAgcHJvZ3JhbW1lcidzIGd1aWRlIGFuZCBpdCBzcGVjaWZpZXMKPj4g
dGhlIHJlZ2lzdGVycyBJIG5lZWQgdG8gY2hhbmdlLgo+IEN1cnJlbnRseSBNVDc2MjAgc3RpbGwg
dXNlcyBvdXIgbGVnYWN5IHN3Y29uZmlnIHN3aXRjaCBkcml2ZXIsIHdoaWNoCj4gYWxzbyBkb2Vz
bid0IHN1cHBvcnQgc2V0dGluZyBhdXRvbmVnLCBzcGVlZCBhbmQgZHVwbGV4LiBIb3dldmVyLCBy
YXRoZXIKPiB0aGFuIGltcGxlbWVudGluZyBpdCB0aGVyZSwgaXQnZCBiZSBncmVhdCB0byBhZGQg
c3VwcG9ydCBmb3IgdGhlIEZFLQo+IHZlcnNpb24gb2YgdGhlIE1UNzUzMCBzd3RpY2ggZm91bmQg
aW4gdGhlIE1UNzYyMChBL04pIFdpU29DIHRvIHRoZSBub3cKPiB1cHN0cmVhbSBEU0EgZHJpdmVy
WzFdLgoKT2ssIHRoaXMgbWFrZXMgbXVjaCBtb3JlIHNlbnNlIG5vdy7CoCBTbyBzd2NvbmZpZyBp
cyBvbiBpdHMgd2F5IG91dCBpbgpmYXZvciBvZiBEU0EgKHdoaWNoIEkndmUgbmV2ZXIgaGVhcmQg
b2YgdW50aWwgbm93KT/CoCBJIHByZXN1bWUgdGhpcyB3aWxsCmFsc28gYWJzdHJhY3QgYXdheSBj
aGFuZ2VzIG9mIGV0aHRvb2wgdG8gbmV0bGluay1iYXNlZCBpbnN0ZWFkIG9mIGlvY3RsCm9uIGEg
cmFuZG9tIHNvY2tldCBhcyB3ZWxsPwoKPiBXaGlsZSB0aGlzIGRyaXZlciB3YXMgb3JpZ2luYWxs
eSBpbnRlbmRlZCBmb3IKPiB1c2Ugd2l0aCBzdGFuZGFsb25lIE1UNzUzMCBHRSBzd2l0Y2ggY2hp
cCBvciB0aGUgQVJNLWJhc2VkIE1UNzYyMyBTb0MsCj4gdGhlIHNhbWUgc3dpdGNoIGZhYnJpYyBp
cyBhbHNvIGltcGxlbWVudGVkIGluIE1UNzYyMSBhbmQgc3VwcG9ydCBmb3IKPiB0aGF0IGNoaXAg
d2FzIGFkZGVkIHRvIHRoZSBkcml2ZXIgcmVjZW50bHlbMl0uIE1UNzYyMCBiYXNpY2FsbHkgYWxz
bwo+IGZlYXR1cmVzIHRoZSBzYW1lIHN3aXRjaCBpbnRlcm5hbGx5LCBob3dldmVyLCBpdCBjb21l
cyB3aXRoIG9ubHkgb25lCj4gQ1BVIHBvcnQsIHN1cHBvcnRzIG9ubHkgRmFzdEV0aGVybmV0IGFu
ZCBsYWNrcyBzb21lIG9mIHRoZSBtYW5hZ2VtZW50Cj4gY291bnRlcnMuCj4KPiBBc3N1bWluZyB5
b3VyIE1UNzYyMCBkYXRhc2hlZXQgaW5jbHVkZXMgdGhlIGRlY3JpcHRpb24gb2YgdGhlIE1UNzUz
MAo+IHN3aXRjaCByZWdpc3RlcnMsIGl0J2QgYmUgZ3JlYXQgaWYgeW91IGNhbiBoZWxwIHdvcmtp
bmcgb24gc3VwcG9ydGluZwo+IE1UNzYyMCBpbiB0aGUgRFNBIGRyaXZlciBhcyB3ZWxsIC0tIGdh
aW5pbmcgcGVyLXBvcnQgZXRodG9vbCBzdXBwb3J0Cj4gYXMgYSByZXdhcmQgOikKCldvbmRlcmZ1
bCHCoCBTbyBpZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5LCB0aGlzIGlzIHRoZSBzYW1lIHN3aXRj
aApoYXJkd2FyZSAoaW50ZXJuYWxseSBhdCBsZWFzdCksIHNvIGhhcyBhbGwgb2YgdGhlIHNhbWUg
TUFDIGFuZCBNSUkKcmVnaXN0ZXJzIG9uIDc1MzAsIDc2MjEsIDc2MjAsIGV0Yz/CoCBGb3Igbm93
IEkgaGF2ZSB0byBnZXQgYSBmaXggZm9yIGEKY3VzdG9tZXIgb24gYSAzLjE4IGtlcm5lbCwgc28g
SSdsbCBiZSBkb2luZyB0aGUgc3djb25maWcgZmlyc3QgYW5kIHRoZW4Kc2VlIGhvdyBtdWNoIHRp
bWUgd2UgY2FuIHB1dCBpbnRvIHRoZSBEU0EgaW1wbGVtZW50YXRpb24uCgo+Cj4gQ2hlZXJzCj4K
Pgo+IERhbmllbAo+Cj4KPiBbMV06IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvbmV0L2RzYS9tdDc1
MzAuYwo+IFsyXTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9ZGRkYTFhYzExNmM4NTJiYjk2OTU0MWVk
NTNjZmZlZjcyNTVjNDk2MQo+CgpBbHNvLCB3b3VsZCB5b3UgaGFwcGVuIHRvIGtub3cgd2h5IHRo
ZSBtdDc2MjAgbWRpbyBkcml2ZXIgaXMgdXNpbmcgYQozMi1iaXQgcmVhZCBmb3IgTUlJIHJlZ2lz
dGVycyB0aGF0IGFyZSAzMi1iaXQ/wqAgRm9yIGV4YW1wbGUsIGluCl9tdDc2MjBfbWlpX3JlYWQu
wqAgSXQgbG9va3MgbGlrZSBzb21lIG9mIHRoaXMgY2FuIHVzZSBzb21lIGltcHJvdmVkCmVycm9y
IG1hbmFnZW1lbnQsIHNpbmNlIHJldHVybiBjb2RlcyBhcmUgYmVpbmcgaWdub3JlZCBpbiBhIGZl
dyBwbGFjZXMuCgpGcm9tIHdoYXQgSSBjYW4gdGVsbCB0aHVzIGZhciwgaXQgbG9va3MgbGlrZSB0
aGVzZSBNSUkgcmVnaXN0ZXJzIGFyZQpzdGFuZGFyZGl6ZWQsIHNvIHRoZSAiZ2VuZXJpYyIgdmVy
c2lvbiBtaWdodCBkbyBtb3N0IG9yIGFsbCBvZiB3aGF0IEkKbmVlZCBpbiBzb21lIGNhc2VzLsKg
IEJ1dCBhcyBmYXIgYXMgaW1wbGVtZW50aW5nIERTQSwgSSBndWVzcyBJJ2xsIGhhdmUKdG8gZXhh
bWluZSB0aGUgbWFpbmxpbmVkIGRyaXZlciBhbmQgc2VlIGhvdyBpdCB3b3Jrcy7CoCBJIGp1c3Qg
ZGlkbid0CmhhdmUgYSBzdHJ1Y3QgcGh5X2RldmljZSB0byB3b3JrIHdpdGggd2hlbiB0cnlpbmcg
dG8gZ2V0IGl0IHRvIHdvcmsuCgpUaGFua3MsCkRhbmllbAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
