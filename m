Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451C117A567
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 13:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1U5BAy7kS8MjJmAcacxuJuzSif+j7Ww+720Esfak8XY=; b=mCnLviu8460/lPgqoEEf9mD3RM
	+EepigRx9aToR0mYQNvyC1vwru5/vVqeFhFvvHy1ahRhf/KLFYThr9Efzx511EvfWC5OxIEVPRPXD
	viRUG0LAjxMv3hyF/2QNGi8nkWxl0Jw7ZmcEpmuygC3Azc3WuX71NkEbL+oqsKQcCebnjwY0hIxxW
	+MllzjFRAwFwwumTl7t8KzOGiJbVUvwdlcMx5ATM8Q4oKKLcuyhpMdWoKR5YeVip+bwaLenk25O6b
	z00YF8oB8BzDqcuQPYKtmgnJzpDxecCb7qey0E8d3M9Vfxc6DsrTSpHndIz55cQBOv3/7zbqzj1IX
	SzrxEhFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pmq-0006mp-Ua; Thu, 05 Mar 2020 12:39:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pmh-0006lx-2u
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 12:39:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DF87C3F82;
 Thu,  5 Mar 2020 13:39:23 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id afb3904e;
 Thu, 5 Mar 2020 13:39:10 +0100 (CET)
Date: Thu, 5 Mar 2020 13:39:10 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20200305123910.GG79862@meh.true.cz>
References: <20200304091407.14821-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304091407.14821-1-yszhou4tech@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_043927_276166_25DF6F85 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 0/4] malta: kernel 5.4 support
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

WW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+IFsyMDIwLTAzLTA0IDE3OjE0OjAz
XToKCkhpLAoKPiBGaXJzdCBwYXRjaCBpbiB0aGlzIHNlcmllcyB0cmllcyB0byBtb3ZlIHNvbWUg
Y29tbW9uIDUuNCBvcHRpb25zIHRvCj4gZ2VuZXJpYyBjb25maWcuICBUaGVuIGl0IG1vdmVzIG9u
IHRvIHN3aXRjaGluZyBtYWx0YSB0YXJnZXQgdG8gdXNpbmcgNS40Cj4ga2VybmVsIGJ5IGRlZmF1
bHQKCmxvb2tzIGdvb2QsIGp1c3QgRllJIHRoZSBidWlsZHMgb2YgbWFsdGEvYmVbMV0gY3VycmVu
dGx5IGZhaWxzIHdpdGg6CgogUGFja2FnZSBrbW9kLWh3bW9uLXNjaDU2MjcgaXMgbWlzc2luZyBk
ZXBlbmRlbmNpZXMgZm9yIHRoZSBmb2xsb3dpbmcKIGxpYnJhcmllczoKCiAgd2F0Y2hkb2cua28K
ClN0cmFuZ2VseSBlbm91Z2gsIGJ1aWxkcyBvZiBtYWx0YS9iZTY0WzJdLCBtYWx0YS9sZVszXSBh
bmQgbWFsdGEvbGU2NFs0XSB3ZW50CmZpbmUuIEkgd291bGQgc2ltcGx5IGV4cGVjdCBhbGwgb2Yg
dGhlbSB0byBmYWlsLCBiZWNhdXNlIG5laXRoZXIgb2YgdGhlbSBoYXMKV0FUQ0hET0dfQ09SRT15
IHNldC4KCkFueXdheSwgSSd2ZSBqdXN0IHNlbnQgb3V0IGZpeFs1XSBmb3IgdGhhdCBidWlsZCBi
cmVha2FnZSwgZmVlbCBmcmVlIHRvIHB1c2gKaXQgYWxvbmcgd2l0aCB0aGUgNS40IHN1cHBvcnQg
KGlmIHlvdSBvZiBjb3Vyc2UgYWdyZWUgd2l0aCB0aGF0IHByb3Bvc2VkCmNoYW5nZSkuIAoKRm9y
IHRoZSB3aG9sZSBzZXJpZXM6CgogQWNrZWQtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+CgoxLiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC8tL2pvYnMvNDYwMzA2NzY2
CjIuIGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0Ly0vam9icy80NTg4MTEzMDYKMy4g
aHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQvLS9qb2JzLzQ1ODgxMTMwNwo0LiBodHRw
czovL2dpdGxhYi5jb20veW5lenovb3BlbndydC8tL2pvYnMvNDU4ODExMzA4CjUuIGh0dHBzOi8v
cGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTI0OTUyMC8gCgotLSB5bmV6egoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
