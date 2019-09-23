Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAA4BB2AD
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 13:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8eJQ2LMRNnVO7LOrjx02R++GclTG9JIPKVCJoVPjt24=; b=JctfAxdXhLHKro5FtMJNtK9Vz
	vbWM90DSRosGgwaOmFnqmzHp+As1SxEH5vSxH9yPxxbWSQozqocZYmlWQgMR5L/MppJtV5TaWsQsZ
	6w5ASAL5w0KFXh8pswVmD5ivJRuX6P2iMSoZsYamz8qkr8/5xUQHC0qZLj2xgl2s2Mgdw4AmK0UIe
	1p1EUYLdXrwbzNIb2m/XjYtgyog6SSv94/ZHVXpdyJ2dot8fEwhAeR7LGdqSk9Qm/JKtXWtW8Cw+S
	ia/+T3rxsxO9WeJ5II4KdNixET+ZtSpJBjY0IOt/Z4TpC9S6pzG3zYcpMUk2J6Xnk4VjJTGgwhk/Q
	Y9aWVlznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMHX-0000QH-5C; Mon, 23 Sep 2019 11:13:27 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMHP-0000Po-QK
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 11:13:21 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id EC68C401A768;
 Mon, 23 Sep 2019 13:13:13 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id SwBcV8xr5wi3; Mon, 23 Sep 2019 13:13:13 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 4E661453E839;
 Mon, 23 Sep 2019 13:13:13 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 4E661453E839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1569237193;
 bh=ugl5yyt2Bf2DOg1aanI3+biZ91E0tojben1geWStRtw=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=OZsFASlKAHJFBEPCXSUZCf72hbPRqMhuZyn4PGYvcMItp4DAp21eHBeGmsh+oX0XC
 Lrvfy28e+F+Pb8O3IA2dVJxTJ1IctNmHwgLDDOxP2cm2x7V5obqTXN093ql7OJb2HL
 NN3w0Jm3IgtgOiuSuBklnj8SbIFv7AMjTZCuQmsM=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id CvXT8nCxySrP; Mon, 23 Sep 2019 13:13:13 +0200 (CEST)
Received: from sylvester.nomad.adlevio.net (unknown
 [IPv6:2001:67c:21bc:24:b4ca:89ef:501d:6e84])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 756324234157;
 Mon, 23 Sep 2019 13:13:12 +0200 (CEST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20190923073937.7890-1-ynezz@true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <9ed9db39-23c6-8118-fedb-2a78d5d69450@linux-ipv6.be>
Date: Mon, 23 Sep 2019 14:13:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190923073937.7890-1-ynezz@true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_041320_468938_E5194F65 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
Cc: Thomas Albers <thomas.gameiro@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjMvMDkvMjAxOSAxMDozOSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBPbiBhIHJlY2VudCBH
ZW50b28gTGludXggaW5zdGFsbGF0aW9uLCBpbnZva2luZyBgbWFrZSBrZXJuZWxfbWVudWNvbmZp
Z2AKPiBpbiB0aGUgYnVpbGQgc3lzdGVtIGZhaWxzLCB3aGVyZWFzIGBtYWtlIG1lbnVjb25maWdg
IGluIHRoZSBrZXJuZWwgdHJlZQo+IGFsb25lIHdvcmtzIGFzIGV4cGVjdGVkLgo+Cj4gVGhpcyBp
cyBoYXBwZW5pbmcgYmVjYXVzZSBTVEFHSU5HX1BSRUZJWCBpcyBub3QgZGVmaW5lZCB3aGVuIGtl
cm5lbCdzCj4gbWVudWNvbmZpZyB0YXJnZXQgY2FsbHMgcGtnLWNvbmZpZyBmcm9tIHRoZSB0b29s
Y2hhaW4vaG9zdCBhbmQgdGh1cwo+IHBrZy1jb25maWcgcmV0dXJucyBhbiBlbXB0eSB2YWx1ZSwg
YW5kIHRoZSBmYWxsYmFjayB2YWx1ZXMgaW4gdGhlIGtlcm5lbAo+IGNvbmZpZyBzY3JpcHQgYXJl
IGFwcGxpZWQgYnV0IHRob3NlIGFyZSBvZmYgYW5kIHRoZSBsaW5raW5nIGZhaWxzLgo+Cj4gU29s
dXRpb24gaXMgdG8gdXNlIHN5c3RlbSdzIHBrZy1jb25maWcgZm9yIGtlcm5lbF9tZW51Y29uZmln
IHRhcmdldCBpbgo+IG9yZGVyIHRvIHByb3ZpZGUgcHJvcGVyIGNvbXBpbGVyL2xpbmtlciBmbGFn
cy4KVGVzdGVkLWJ5OiBTdGlqbiBUaW50ZWwgPHN0aWpuQGxpbnV4LWlwdjYuYmU+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
