Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1AC10CCDC
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 17:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bj9EQQLvjnPEcbqUKT3LD7lnjnbeFKlHB36G0yHGuF0=; b=Uyyxkec5t2LEtFqOnCt9OMCbk
	mKBj3WuM1Z2O/HZgJ7BAqW5kuWaTqVUvHdR1srJtZEYVVzauDFycSMMYPoz5F/mqPiO/OcUxiHXeX
	5c5bsKD+JR3Gh7Ae7rJFjaw+YMTi1GhPvAdfN7ZIiRePKAis33SnXBgIK87g+KFsRRzAR5XPyi/0/
	9tJotgU7Ww9qTCraIvrAZHfFdVOFDvA0KVuXkGk7Im7QBUmpkoLS2zwNFVrixoV+s4HfQ2FI29x3F
	I2sM+F7okodSGBrr9RSjsIjp/9EVeCViaoZTJuRGlhHILxQnc6Ukqx5X2/+EK992mmIBJ3GB4RcLt
	K8x6R48ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMjA-0005mq-OJ; Thu, 28 Nov 2019 16:33:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMj3-0005mk-KW
 for openwrt-devel@bombadil.infradead.org; Thu, 28 Nov 2019 16:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:Cc:From:References:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3ReVchWYuc6tLjx6omysr+Raf9ONxuW0ZxcphL/Js+U=; b=mJL1r2QfLsrK9c/g0hhw2UFzw4
 zFeEEJF3mwYWtcMaGujnp5q3oyNyKoOQ95kZ16GH9fwGQDjyF+R5XndcVognBCdPdSmsvlH3SJH/h
 geeF9NG0GJccb5GFtAGy5j5Ecfi+msiFB0VkXClEOfcI+qaRl4fcHPWhpTqxPh0UXntHujoJxviJL
 /dNUK56MYYvKQkk6GlOl72txSUE4ifACAeuBgGMfazBHho4z1oJ2v2QYwOtzvCgrMUeMwPJ1Dncqj
 qM7kNMpEan9CURR+HjUxQ+KbNwu2mhW3st7uMLp0VBw5rIn+oI2g7vDd46JcrCT0MeCRmZ6MxawlR
 8Lvgp+LA==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMj0-0003ll-Az
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 16:33:03 +0000
X-Originating-IP: 46.183.103.17
Received: from [172.18.254.45] (unknown [46.183.103.17])
 (Authenticated sender: mail@aparcar.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 75FFD60019;
 Thu, 28 Nov 2019 16:32:10 +0000 (UTC)
To: Yousong Zhou <yszhou4tech@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CAECwjAh__fE=qWmXtyTFUzTwSHGy_0v5MC4n=VJ6qVc=Hq0w5Q@mail.gmail.com>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <d0abeb47-099c-7eb7-c8b0-f191c52d258f@aparcar.org>
Date: Thu, 28 Nov 2019 06:32:08 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAECwjAh__fE=qWmXtyTFUzTwSHGy_0v5MC4n=VJ6qVc=Hq0w5Q@mail.gmail.com>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] Running k3s on OpenWrt
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgWW91c29uZywKCj4gQSBmZXcgbW9udGhzIGFnbywgSSBzdGFydGVkIHdvcmtpbmcgb24gYnJp
bmdpbmcgdXAgazNzIG9uIE9wZW5XcnQuICBJCj4gbWFuYWdlZCB0byBoYXZlIGEgc21hbGwgazhz
IGNsdXN0ZXIgd2l0aCBub2RlcyBydW5uaW5nIGNlbnRvcyBhbmQKPiBvcGVud3J0LiAgTGlrZWx5
IG90aGVyIGxpbnV4IGRpc3Ryb3Mgd2lsbCBhbHNvIGRvLCBidXQgSSBkaWRuJ3QgdGVzdAo+IGNv
bWJpbmF0aW9uIG9mIGRpZmZlcmVudCBhcmNoaXRlY3R1cmVzIHlldC4KQ29vbCEgVGhhdCBsb29r
cyBsaWtlIGFuIGludGVyZXN0aW5nIHByb2plY3QgdG8gbWFrZSBPcGVuV3J0IGV2ZW4gbW9yZSAK
YXR0cmFjdGl2ZSBmb3IgInRoZSBjbG91ZCIuCj4gSzNzIGlzIG9uIGl0cyBvd24gYSBrOHMgZGlz
dHJpYnV0aW9uLiAgSXQgcHJvdmlkZXMgYSBzaW5nbGUgcGFja2FnZWQKPiBiaW5hcnkgZm9yIGFt
ZDY0LCBhcm02NCwgYXJtaGYuICBJZiBJIHVuZGVyc3RhbmQgaXQgcmlnaHQsIHRoZSBiaW5hcnkK
PiBpcyBzdXBwb3NlZCB0byBiZSBhcyB1c2VybGFuZC1kZXBlbmRlbmN5LWZyZWUgYXMgcG9zc2li
bGUsIHdpdGgKPiBkZXBlbmRlbmNpZXMgb25seSBvbiB0aGUga2VybmVsLgo+Cj4gT25lIHRoaW5n
IHdvcnRoIG5vdGluZyBpcyB0aGF0IHRoZSBvcGVud3J0IHBhY2thZ2UgaXMgTk9UIG9mZmljaWFs
LAo+IG5laXRoZXIgZnJvbSBPcGVuV3J0IG5vciBrM3MgdXBzdHJlYW0gcHJvamVjdC4gIEl0IHBh
Y2thZ2VzIGJpbmFyeQo+IGV4ZWN1dGFibGVzIGRpc3RyaWJ1dGVkIGJ5IGszcyB1cHN0cmVhbSBw
cm9qZWN0IHdoaWNoIGlzIGdlbmVyYWxseQo+IGZyb3duZWQgdXBvbiBpZiBzb3VyY2VzIGFyZSBh
dmFpbGFibGUuCkl0IGxvb2tzIGxpa2UgR28gY29kZSwgaGF2ZSB5b3UgdHJpZWQgdG8gY29tcGls
ZSBpdCB2aWEgdGhlIGJ1aWxkIApzeXN0ZW0/IFRoZXJlIGFyZSBvdGhlciBwYWNrYWdlcyBsaWtl
IHN5bmN0aGluZyB3aGljaCBhbHJlYWR5IG1ha2UgdXNlIApvZiBpdCwgbWF5YmUgeW91IGNhbiB1
c2UgaXQgYXMgYW4gaW5zcGlyYXRpb24uIE92ZXJhbGwgSSdkIGxpa2UgdG8gc2VlIAp0aGlzIHBh
Y2thZ2UgYXMgcGFydCBvZiBwYWNrYWdlcy5naXQgYW5kIG1heWJlIGNhbiBoZWxwIG91dCBpZiB5
b3UncmUgCnN0dW1ibGluZy4KPiBUaGUgb3RoZXIgdGhpbmcgaXMgdGhhdCBrM3MgKG9yIGs4cykg
cmVxdWlyZXMgcXVpdGUgYSBmZXcga2VybmVsCj4gZmVhdHVyZXMgdG8gcnVuLCBzb21lIG9mIHRo
ZW0gb25seSBhdmFpbGFibGUgYXMgYnVpbHRpbiAoY29tcGFyZWQgdG8KPiBrbW9kKS4gIFRoaXMg
bWVhbnMgeW91IHdpbGwgbGlrZWx5IHRvIGJ1aWxkIHlvdXIgb3duIGltYWdlIHRvIHVzZSBpdC4K
PiBUaGUgcmVxdWlyZWQgZmVhdHVyZXMgYXMgb2YgazNzIDEuMC4wIGFyZSByZWNvcmRlZCBhcyB3
ZWxsIGFuZAo+IGF2YWlsYWJsZSBhcyBhIGRlZmF1bHQgb2ZmIGNvbmZpZyBzeW1ib2wgQ09ORklH
X2szc19LRVJORUwgWzJdCgpJIGtub3cgbm90aGluZyBhYm91dCBzdW5peCwgYnV0IHRoZSBvdGhl
ciB0aHJlZSB0YXJnZXRzIGFwcGVhciBtb3N0bHkgCnNwYWNlICJpbmRpcGVuZGVudCIuIE1heWJl
IHRoZXNlIGNvdWxkIGJlIGVuYWJsZWQgYnkgZGVmYXVsdD8gSSB0aGluayAKcHJldHR5IG11Y2gg
dGhlIHNhbWUga2VybmVsIG9wdGlvbnMgYXJlIHJlcXVpcmVkIGZvciBMWEQsIGRvY2tlciBhbmQg
CnJlbGF0ZWQgdGhpbmdzLgoKeDg2XzY0LCBhYXJjaDY0LCBzdW54aSwgYXJtdmlydAoKIMKgwqDC
oCBzZWxlY3QgS0VSTkVMX0NHUk9VUFMKIMKgwqDCoCBzZWxlY3QgS0VSTkVMX0tFWVMKIMKgwqDC
oCBzZWxlY3QgS0VSTkVMX01FTUNHCiDCoMKgwqAgc2VsZWN0IEtFUk5FTF9OQU1FU1BBQ0VTCiDC
oMKgwqAgc2VsZWN0IEtFUk5FTF9TRUNDT01QCiDCoMKgwqAgc2VsZWN0IEtFUk5FTF9TRUNDT01Q
X0ZJTFRFUgogwqDCoMKgIHNlbGVjdCBLRVJORUxfWDg2X1ZTWVNDQUxMX0VNVUxBVElPTiBpZiB4
ODZfNjQKCj4gICBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3lvdXNvbmcvd2FsbGVyL3RyZWUvbWFz
dGVyL2szcwo+ICAgWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS95b3Vzb25nL3dhbGxlci9ibG9iL2Mz
ZWUwMDQ1MWNlMTJlODY5Mjc3YmJkNzNiMDg2NTI4ODJjNTIwMTAvazNzL01ha2VmaWxlI0w2OS1M
NzkKCkJlc3QsClBhdWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
