Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B941FD4831
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 21:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wMrzYv6wmK6iaAzWyWxIihD1vfoGOSSoiDeTqv7+/c=; b=ktepOo1xu/2hMd
	cLD5gzHD3HZYPoGflUO4zFWrKHlpEswC3iO292KTFRmMw8E2MUJuHpJ9jXO1s4lG7XVSPrpR8yGXG
	SCJdt9NhN6T+3ZOTUz+fA0N1ZSgcnJ9vQyEUOLej+iRi+s2cWjILz/xLq1un7OFm+To105VU9MZ+s
	jACFvZMDvUicwSweVsg9Gd4OTnLHfmPo0M+vEQver7HEVG2X4ZeH9PoISCxv/bTg56gPgugZsoBM4
	DItIhaDZ8gyCiDvjNdv8cLh0it+dpheTldrld+NZB3Bnxh9RMjloPrbogTtLBfLBhPGYPjwoEFoWp
	v1ye0zWUtX4N7eOtuOsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ0G2-0001Ra-DG; Fri, 11 Oct 2019 19:07:22 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ0Fv-0001QR-2i
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 19:07:16 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x9BJ78HJ019008
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 11 Oct 2019 21:07:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1570820830; bh=mCEK+XWdG8mmfvEGMrlMS5vYCTlU91/YMB3Q1vKqmWg=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Ur9YvSXYRO/qcCw64IgbQt24UCIGJPbn88WPR5DoKayr4Gp6tx/yr0W43TtQQ+R/r
 Jlbim1FZdlli8fAZGCZdd/cugwIdrk2xjSHuXwVtTl32kBB9NxKOMgd+iYWXCH/lCB
 iZk5n6GTdZcVZe58YjOLfuf3XbEkHOuXztCfO+Bo=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iJ0Fo-0004WE-Aj; Fri, 11 Oct 2019 21:07:08 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Jo-Philipp Wich <jo@mein.io>
Organization: m
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
Date: Fri, 11 Oct 2019 21:07:08 +0200
In-Reply-To: <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io> (Jo-Philipp Wich's
 message of "Fri, 11 Oct 2019 12:59:04 +0200")
Message-ID: <874l0ft82r.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_120715_462756_16E8C75F 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm8tUGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPiB3cml0ZXM6Cgo+IDEpIEJsb2NrZXI6IEx1Q0kg
bWFzdGVyIG5lZWRzIHRvIGJlIGJhY2twb3J0ZWQgdG8gMTkuMDcKPiAgICBUaW1lIGVzdGltYXRl
OiAyLTMgd2Vla3MKPgo+IDIpIEJsb2NrZXI6IEFsbCByZWxldmFudCBzdWItY29tcG9uZW50cyBm
b3IgV1BBLTMgKyBHVUkgc3VwcG9ydCwgc3VjaCBhcwo+ICAgIGhvc3RhcGQsIGl3aW5mbyBldGMu
IG5lZWQgdG8gYmUgYmFja3BvcnRlZCB0byAxOS4wNwo+ICAgIFRpbWUgZXN0aW1hdGU6IDIgd2Vl
a3MKPgo+IDMpIEJsb2NrZXI6IFNvbWUgd2Vha25lc3NlcyBpbiBsaWJ1c3RyZWFtLXNzbCBjbGll
bnQgY2VydGlmaWNhdGUKPiAgICBoYW5kbGluZyBuZWVkIHRvICBiZSBhZGRyZXNzZWQsIHdoaWNo
IGNhbiBvbmx5IGJlIHNvbHZlZCBieSBhbiBBUEkKPiAgICByZWRlc2lnbi4gQmFuZC1haWQgZml4
ZXMgYXZhaWxhYmxlIGJ1dCBub3QgbWVyZ2VkLCBub2JvZHkgd29ya2VkCj4gICAgb24gQVBJIHJl
ZGVzaWduIHlldAo+ICAgIFRpbWUgZXN0aW1hdGU6IDEgd2Vlawo+Cj4gNCkgQmxvY2tlcjogTmVl
ZCB0byBhc3NlcnQgdGhlIHN0YXRlIG9mIHRoZSBEcmFnb25ibG9vZCBXUEEzCj4gICAgdnVsbmVy
YWJpbGl0aWVzIGluIDE5LjA3J3MgaG9zdGFwZAo+ICAgIFRpbWUgZXN0aW1hdGU6IGEgZmV3IGRh
eXMgSSBndWVzcwoKVGhhbmtzIQoKVGhpcyBoZWxwcyBteSB1bmRlcnN0YW5kaW5nIGEgbG90LiAg
SSBiZWxpZXZlIGl0J3MgYSBtaXN0YWtlIHRvIGJhY2twb3J0CmZlYXR1cmVzIGFmdGVyIGNyZWF0
aW5nIHRoZSByZWxlYXNlIGJyYW5jaCwgYnV0IGlmIHRoYXQncyB3aGF0IHlvdSBkbwp0aGVuIEkg
dW5kZXJzdGFuZCB3aHkgaXQncyBzbyBoYXJkIHRvIG1ha2UgYSByZWxlYXNlLgoKSSdsbCBkZWZp
bml0ZWx5IHRha2UgYSBsb29rIGF0IHRob3NlIHRvcGljcyB0byBzZWUgaWYgdGhlcmUncyBzb21l
dGhpbmcKZWFzeSBlbm91Z2ggZm9yIG1lIHRvIGhlbHAgb3V0IHdpdGguCgoKQmrDuHJuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
