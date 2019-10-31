Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59516EB574
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 17:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+BmGO0FlFVoKqR9NJJVtElkQD+IIGWsw8sMT3oi88pw=; b=KWSH80gcBgn47feN3U/Jc56lm
	EYvmYa1nYpLnrtFjJjd5u0MmxQ5UwZoWTjTs/Fbg0vJZl37alJuVUmYfYHj+vwts+1Ul4GrjRi1qe
	dq+iokrMcWSJXru0C9GlfX24+V6Z32Aa3bQSdmpGCe1I7b+F19f281G9hqXVuJck6z4c6f6NOhaGM
	L4snGXo4otMF3jtviOA7KdVQxiboV0AGReuMdJJPsDU1lrL4fOljdjZPX/zqwBkgnriQaHtoKy6BM
	Lkcpqf2N0YTwqKdU4IkMDpdAny60D+BAz4z24l8X7/oPX0zVBy6AJlay5Z8v3SmXDu2WCO0DPlSnm
	F5UlwWy5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDiM-0004Xs-G8; Thu, 31 Oct 2019 16:54:26 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDdl-0000TL-T6
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 16:49:44 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id D18D613C359;
 Thu, 31 Oct 2019 09:49:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com D18D613C359
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572540580;
 bh=YWsoZH5MRPQEP78Y0OuPJrg1Tj358fY7bfuYL+BNrKg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=CmX41rch/lxguVi1eX3eDPs+VEhdmxqhTL4bmJ3F+bEdRvrUbg9g/7u3hM7UjGuML
 coS31/AaQhFg3248+uqo6K/5hp9/i4LieOW+gmwREViHYRjmpJqJa23kmdJmzFG6K+
 0h8UAh5jyHwFVtJaAN0vgiLlcMp/gwwEDAE3W7KA=
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <fa883a60-0d29-5cb9-7b54-3cab5485ec84@candelatech.com>
 <20191029061412.GF22393@meh.true.cz>
 <7364b927-20ae-1f46-2151-4a0266cd5463@candelatech.com>
 <20191031125022.GA30865@meh.true.cz>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <6608d0bc-9171-9a84-8827-c79a009bb886@candelatech.com>
Date: Thu, 31 Oct 2019 09:49:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191031125022.GA30865@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094942_022149_2A57DC05 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Any interest in a 'ct' iperf3?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTAvMzEvMTkgNTo1MCBBTSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBCZW4gR3JlZWFyIDxn
cmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4gWzIwMTktMTAtMjkgMDY6MjM6NTJdOgo+IAo+PiBUaGUg
b3JpZ2luYWwgU09fQklORFRPREVWSUNFIHBhdGNoZXMgd2VyZSBvZmZlcmVkIHVwc3RyZWFtCj4+
IGFuZCB0aGVyZSBpcyBubyBpbnRlcmVzdC4KPiAKPiBJdCBzZWVtcyBsaWtlIHRoZXJlJ3MgZmlu
YWxseSBzb21lIGludGVyZXN0WzFdIGFuZCB5b3UgZG8gYSBnb29kIGpvYiBvdmVyIHRoZXJlLgoK
U29tZW9uZSBhc2tlZCBtZSB0byBjcmVhdGUgYSBkaWZmZXJlbnQgYnJhbmNoLCBhbmQgYXNrZWQg
Zm9yIHNvbWUgb3RoZXIgZmVhdHVyZSwKYnV0IG5vIHNlcmlvdXMgY29kZSByZXZpZXcgb3IgY29t
bWVudHMgdGhhdCBtYWtlIG1lIHRoaW5rIGFueW9uZSBpcyBzZXJpb3VzbHkKbG9va2luZyBhdCB0
aGUgcGF0Y2hlcy4KClRoYW5rcywKQmVuCgo+IAo+PiBNeSByZWNlbnQgY2hhbmdlcyB3b3VsZCBu
ZWVkIHJlYmFzaW5nIHRvIGNsZWFuIHRoZW0gdXAgYmVmb3JlIHVwc3RyZWFtaW5nLAo+PiBhbmQg
SSBhbSBub3QgZ29pbmcgdG8gc3BlbmQgYW55IHNlcmlvdXMgdGltZSBvbiB0aGF0IHNpbmNlIEkn
ZCBzdGlsbCBoYXZlIHRvCj4+IHJ1biBteSBvd24gdHJlZSB0byBnZXQgdGhlIFNPX0JJTkRUT0RF
VklDRSBwYXRjaGVzIGFuZCBhbnl0aGluZyBlbHNlIG5vdAo+PiBhY2NlcHRlZCB1cHN0cmVhbS4K
PiAKPiBJIHRoaW5rLCB0aGF0IHRoZXJlJ3Mgbm8gbmVlZCBmb3IgaXBlcmYzLWN0IHBhY2thZ2Uu
ICBJbiBnZW5lcmFsLCBJIHdvdWxkIGxpa2UKPiB0byBtb3ZlIGlwZXJmMyB0byBwYWNrYWdlIGZl
ZWRzLCB3aGVyZSBJIHRoaW5rIGl0IGJlbG9uZ3NbMl0uCj4gCj4gSSBhc3N1bWUsIHRoYXQgbm9i
b2R5IGlzIGdvaW5nIHRvIG9iamVjdCBhZ2FpbnN0IGFueSBhZGRpdGlvbmFsIHVwc3RyZWFtYWJs
ZQo+IHBhdGNoZXMgb24gdG9wIG9mIGlwZXJmMyBwYWNrYWdlIGlmIHRoZXkgcHJvdmlkZSB3aWRl
bHkgdXNlZnVsCj4gZmVhdHVyZXMvaW1wcm92ZW1lbnRzIGFuZCBmaXhlcy4gSXQgc2hvdWxkIGJl
IGVub3VnaCB0byBqdXN0IHB1dCByZWxldmFudCBsaW5rCj4gdG8gdGhlIHVwc3RyZWFtIFBSL3Bh
dGNod29yay9tYWlsaW5nbGlzdCB0byBnZXQgdGhlbSBpbmNsdWRlZC4KPiAKPiAxLiBodHRwczov
L2dpdGh1Yi5jb20vZXNuZXQvaXBlcmYvcHVsbC84MTcKPiAyLiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9waXBlcm1haWwvb3BlbndydC1kZXZlbC8yMDE5LUF1Z3VzdC8wMTgzOTkuaHRtbAo+
IAo+IC0tIHluZXp6Cj4gCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29t
PgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
