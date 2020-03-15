Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FDE185C66
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZ2N90a5LZ9dRBuqozzJUZTfGclyf9UHZU1rSg6zUSI=; b=DOmzY8bB6BQ8Jx
	7E/+J7dW3MkHF2ZEQ48ZS3ze6cOYCYwwhrSxKIyKoQVkOsmCFScLOvPoKNWSa7uv1fVBwJCYmbQ/m
	8BsLAyfdXCg4rLtOJpZk2BHEn4Kj6VWvzvp7MJvrSa+buyp/8IksD5m7DAr9NenE7n52ewWU6eUXA
	4KpllTbiXLbcSbpzW5usaDqArkRxmFFs8uZghxMbMjI0RYfHNmcgK6p6CSTyJ4nDWXfXQdQmfN7rL
	v3Cnkgyg3fUZA13p6RLB5TGNvqxr9fDoRqhnAa4QSn5e2U0zh3plCuYX6c6HlPIKDBw8VrM1bY5Z8
	gRHY3AwL8eo8rXKakg1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSY2-0005wW-2Y; Sun, 15 Mar 2020 12:39:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSXt-0005wP-Ru
 for openwrt-devel@bombadil.infradead.org; Sun, 15 Mar 2020 12:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=To:References:Message-Id:
 Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
 Content-Type:Sender:Reply-To:Content-ID:Content-Description;
 bh=w+ml88PzrgFhc/QHY3FSsibqdmpe1BNEdOWJRdHKdbU=; b=EMboltfhC9X3FHbbQLZHj3LBbL
 oJysjeC/4T5DbDShdHbIBNWnV9JGWnwEfaQuqI1iNElqvQ7U/SZdE2jaui6uQVObTsmyD5M03KYit
 2agxUWEonFm5kFAw4oPmlYrDzvt0/JcXVg0GnU1md2Wdgn/QYDlwqWhnlSUsFd5SE4C/b3C5SttmM
 RKZL/VNlLXyNJrAEVDdqagpLpeDhCHdhPWlIl5VY02e+OixgWCME8hVEdxfxAS2PacoHfYy/FVvFP
 jdBfmC/ir+2Ox2l/z/hA76wihFWKaDIRDCAoqZl05DNWgyo21bpg7hgC5R9kAy5czpxTB8MSxcdwV
 WlfpoTzQ==;
Received: from vps.slashdirt.org ([144.91.108.218])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSXp-0006PQ-8R
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:39:08 +0000
Received: from chuck.tardis.lan (161-3-22-171.ftth.cust.kwaoo.net
 [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 610B2600B1;
 Sun, 15 Mar 2020 13:38:59 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 610B2600B1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1584275939; bh=w+ml88PzrgFhc/QHY3FSsibqdmpe1BNEdOWJRdHKdbU=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=utRYFpBBDcy9PAnilEjMeSuK4L1lwq7TClBheByMpiT0/lQSd+b4lFdw09wIv7Qkw
 IE+2XWqh9xfvv4fuNhTjMv5ogS/gUfeuqkd5DNbJjdnvbDIkZ5Kf8ilX2gkW3NYIG3
 F6cYnHKwhqYIXon5mZQLApPkfcAmIYAag1y53iGU=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
Date: Sun, 15 Mar 2020 13:38:58 +0100
Message-Id: <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_123905_524371_79C09179 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgo+IExlIDE1IG1hcnMgMjAyMCDDoCAxMzowNSwgPG1haWxAYWRyaWFuc2NobXV0emxlci5k
ZT4gPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gYSDDqWNyaXQgOgo+IAo+IEhpLAo+IAo+PiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVsIFttYWlsdG86
b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXQo+PiBPbiBCZWhhbGYgT2Yg
VGhpYmF1dCBWQVLDiE5FCj4+IFNlbnQ6IFNvbm50YWcsIDE1LiBNw6RyeiAyMDIwIDExOjM1Cj4+
IFRvOiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IENjOiBUaGliYXV0IFZBUsOI
TkUgPGhhY2tzQHNsYXNoZGlydC5vcmc+Cj4+IFN1YmplY3Q6IFtPcGVuV3J0LURldmVsXSBbUEFU
Q0ggdjJdIGFyNzF4eDogYWRkIHN1cHBvcnQgZm9yIFJCIFNYVHNxIDJuRAo+IAo+IHRoZSBhcjcx
eHggdGFyZ2V0IHdpbGwgb25seSBiZSBzdXBwb3J0ZWQgaW4gYWxyZWFkeSByZWxlYXNlZCAxOS4w
NyBicmFuY2ggYW5kIGJlIHJlbW92ZWQgYWZ0ZXJ3YXJkcy4KPiAKPiBDb25zZXF1ZW50bHksIHdl
IGRvIG5vdCBhY2NlcHQgYW55IGRldmljZSBzdXBwb3J0IGZvciB0aGlzIHRhcmdldCBhbnltb3Jl
Lgo+IAo+IFBsZWFzZSB3b3JrIHdpdGggdGhlIGF0aDc5IHRhcmdldCBpbnN0ZWFkLCB3aGljaCBp
cyBtZWFudCB0byByZXBsYWNlIGFyNzF4eCBhbmQgaXMgYWxzbyBhbHJlYWR5IGluY2x1ZGVkIGlu
IDE5LjA3LnggKHRob3VnaCBNaWtyb3RpayBkZXZpY2VzIGhhdmUgb25seSBiZWVuIGFkZGVkIGlu
IG1hc3RlcikuCgpJIGhhZCBhIGZlZWxpbmcgdGhpcyB3b3VsZCBiZSB0aGUgYW5zd2VyLgoKQXQg
bGVhc3QgdGhlIGNvZGUgaXMgdGhlcmUgZm9yIHRob3NlIHdobyBuZWVkIGl0LCBhbmQgaXQgZGV0
YWlscyB0aGUgbmVjZXNzYXJ5IGJpdHMgdG8gZ2V0IHRoaXMgaGFyZHdhcmUgdG8gd29yay4KClJl
Z2FyZGluZyBtb3ZpbmcgdG8gYXRoNzkgdGhlcmUgYXJlIGEgbnVtYmVyIG9mIGlzc3VlcyB3aGlj
aCBJ4oCZbSB0cnlpbmcgdG8gd3JhcCBteSBoZWFkIGFyb3VuZC4KClNwZWNpZmljYWxseSwgcmln
aHQgbm93IHdlIGhhdmUgYSAoaW1vIHZlcnkgY29udmVuaWVudCkgwqsgb25lIGltYWdlIGZpdHMg
dGhlbSBhbGwgwrsgYXBwcm9hY2ggZm9yIGFyNzF4eC1iYXNlZCBtaWtyb3RpayBkZXZpY2VzLiBU
aGlzIHJlbGllcyBvbiBsb2FkLXRpbWUgZGV0ZWN0aW9uIG9mIHRoZSBoYXJkd2FyZSB3aGljaCBp
cyBiYXNlZCBwYXJ0IG9uIHRoZSBrZXJuZWwgY29tbWFuZCBzdHJpbmcgcGFzc2VkIGJ5IHRoZSBy
b3V0ZXJib290IGJvb3Rsb2FkZXIsIGFuZCBwYXJ0IG9uIGFjdHVhbCBoYXJkd2FyZSBkZXRlY3Rp
b24gYXQga2VybmVsIGxvYWQgdGltZSAoTUlQUyBtYWNoaW5lIG5hbWUpLgoKSSBkb27igJl0IGtu
b3cgeWV0IGlmIGl0IGlzIHBvc3NpYmxlIHRvIHRyYW5zY3JpYmUgdGhpcyBpbiBhIERUUyB3b3Js
ZDogcm91dGVyYm9vdCBkb2VzbuKAmXQgc3VwcG9ydCBEVFMsIHNvIG15IGltcHJlc3Npb24gaXMg
dGhhdCBpbiBvcmRlciB0byBtYWludGFpbiB0aGlzIGZlYXR1cmUgYW4gaW50ZXJtZWRpYXJ5IGxv
YWRlciBpcyBuZWVkZWQsIHdoaWNoIGlzIGdvaW5nIHRvIGJlIG5vbi10cml2aWFsLgoKU2Vjb25k
LCBJIGRvbuKAmXQga25vdyBpZiB0aGUgbWFjaGluZSBuYW1lIGRldGVjdGlvbiBjYW4gYWxzbyBi
ZSBpbXBsZW1lbnRlZCBpbiBEVFM6IEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgYWxs
IERUU2VzIGRlZmluZSBhIGZpeGVkIHN0cmluZywgdGhlcmUgZG9lc27igJl0IHNlZW0gdG8gYmUg
YSBtZWNoYW5pc20gdG8gbGlmdCB0aGF0IHN0cmluZyBmcm9tIHRoZSBtdGQgZGV2aWNlIGFzIGlz
IGN1cnJlbnRseSBkb25lIG9uIGFyNzF4eC4gSXMgdGhpcyBjb3JyZWN0PwoKVGhhbmtzLApUaGli
YXV0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
