Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9272C10DE27
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 16:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N6AlUdQ7ooXrWzf8vYIkaLwZdnCshoR553ckW6UiLbM=; b=PzzRP0SwcFxqW/JhMdujQHAFd8
	vmu0WUCnYEfsVg8NQaFA0npBJLE7vWr00OS6no/WEc6b0Q4J0XIINuqCVqHQR/aumgpRM8kfDT0/J
	9Cl9Rnj4r2v7aDuhnjdOATz2szVbpCxk5tmCna9q7+SqsuCk6Ns+UPANsixrhViROPbqTqmXy2tgb
	WvmjmPjrs5oCCRqf9g52Id9qJfMY5G8NRoSZZIQHmXMHYakYuakbJ/62ZJEuK0XI3MN37cwCbMuQl
	ZhKQ6ZiHp0Ix2bTUVEQjk8EuHcFngCrCjl/EOgshOT8y5R2Q9sa82pSXxf22bv96f9hHMOdGsCPVJ
	b68c5eog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4sy-0005xp-Nq; Sat, 30 Nov 2019 15:42:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4so-0005xD-6f
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 15:42:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DCCA64A0B;
 Sat, 30 Nov 2019 16:41:58 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5acfd13b;
 Sat, 30 Nov 2019 16:41:48 +0100 (CET)
Date: Sat, 30 Nov 2019 16:41:48 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191130154148.GH61235@meh.true.cz>
References: <20191130140440.GG61235@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191130140440.GG61235@meh.true.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_074206_393134_62BA87CB 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] default compiler hardening options for all C
 projects [Was: Re: [PATCH] uci: Fix Wformat-nonliteral warning]
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMTEtMzAgMTU6MDQ6NDBdOgoKPiBX
b3VsZG4ndCBpdCBtYWtlIHNlbnNlIHRvIGVuYWJsZSBmb2xsb3dpbmcgaGFyZGVuaW5nIGZsYWdz
IChtYXliZSBjb25zaWRlcgo+IG90aGVycyBhcyB3ZWxsPyk6Cj4gCj4gICAtV2Vycm9yPWZvcm1h
dC1zZWN1cml0eSAKPiAgIC1XZXJyb3I9Zm9ybWF0LW5vbmxpdGVyYWwKCkZZSSwgZm9sbG93aW5n
IHVjaSBwYXRjaDoKCiBkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50eHQgYi9DTWFrZUxpc3RzLnR4
dAogaW5kZXggOTJhZGY0YTQ3MTIxLi41NmExNGUyYjJiNDAgMTAwNjQ0CiAtLS0gYS9DTWFrZUxp
c3RzLnR4dAogKysrIGIvQ01ha2VMaXN0cy50eHQKIEBAIC00LDcgKzQsNyBAQCBQUk9KRUNUKHVj
aSBDKQogCiAgU0VUKENNQUtFX1NIQVJFRF9MSUJSQVJZX0xJTktfQ19GTEFHUyAiIikKICBBRERf
REVGSU5JVElPTlMoLU9zIC1XYWxsIC1XZXJyb3IgLVdleHRyYSAtLXN0ZD1nbnU5OSAtZzMgLUku
CiAtRFVDSV9QUkVGSVg9IiR7Q01BS0VfSU5TVEFMTF9QUkVGSVh9IikKIC1BRERfREVGSU5JVElP
TlMoLVduby11bnVzZWQtcGFyYW1ldGVyKQogK0FERF9ERUZJTklUSU9OUygtV25vLXVudXNlZC1w
YXJhbWV0ZXIgLVdlcnJvcj1mb3JtYXQtbm9ubGl0ZXJhbCAtV2Vycm9yPWZvcm1hdC1zZWN1cml0
eSkKCnlpZWxkcyBmb2xsb3dpbmcgZXJyb3Igd2l0aCBjbGFuZy0xMCBvbiBDSVsxXToKCiBjbGku
YzoxOTY6MTk6IGVycm9yOiBmb3JtYXQgc3RyaW5nIGlzIG5vdCBhIHN0cmluZyBsaXRlcmFsIFst
V2Vycm9yLC1XZm9ybWF0LW5vbmxpdGVyYWxdCiAgICAgICAgIHZmcHJpbnRmKHN0ZGVyciwgZm10
LCBhcCk7CgoxLiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC11Y2kvLS9qb2JzLzM2
NTYxNzI5MwoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
