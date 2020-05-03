Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DBE1C2DA6
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 17:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:MIME-Version:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CyzNsx9a4cjlG7LiXlsy+p00JaTVEtR37PMYOAlPWE=; b=O0m3WCFnyL7R0R
	GzIaEUXoX2vPwib0KUUBWtmXj9F9N44mZIQN22unCsxc3/tD4vaHpXT/J6ssVYgHPKSqV/1n9D3W0
	BaALlUMt0qwELoJRB9qHJaej04Hzcpy5b845muuI7rccC/irFzCOCE4GzxzkPPnmZkGGsL55lhaVN
	rlnnYjQgasvsYpm5OsFLswD39k/NPlWnQEkWRrStI5LV8I1yh4TOECXg/1InP7ndOntCpO0w9PM5b
	lQkh5tp3Av2WAtmXxL7VbcBqLRNDDi15A0ANULHV4iYL1NHt83SDNPHg4D4SIbYUcMkA/o8u8rljB
	Hu+PqufCAqjHvj2GK7Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGqG-0007Hw-3p; Sun, 03 May 2020 15:47:44 +0000
Received: from tuna.sandelman.ca ([209.87.249.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGq7-0007Fz-OP
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 15:47:37 +0000
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id B84013897B;
 Sun,  3 May 2020 11:45:35 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 5E40A135;
 Sun,  3 May 2020 11:47:32 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: Abuse Department <abuse@redfish-solutions.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
In-Reply-To: <532E3E19-A97E-46A7-A7BF-E527EEAB75F4@redfish-solutions.com>
References: <532E3E19-A97E-46A7-A7BF-E527EEAB75F4@redfish-solutions.com>
X-Mailer: MH-E 8.6; nmh 1.7+dev; GNU Emacs 25.1.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Sun, 03 May 2020 11:47:32 -0400
Message-ID: <19425.1588520852@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_084735_869070_4F09856B 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [209.87.249.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms
 from others...
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CkkgdGhpbmsgdGhhdCBDT05GSUdfU0tJTk5ZIGlzIGEgZ29vZCBjb25jZXB0LCBidXQgZm9yIGFs
bCB0aGUgcmVhc29ucyB5b3UKY2l0ZToKCkFidXNlIERlcGFydG1lbnQgPGFidXNlQHJlZGZpc2gt
c29sdXRpb25zLmNvbT4gd3JvdGU6CiAgICA+IFNvbWUgb2YgdXMgd29yayB3aXRoIG1vcmUgY3Vy
cmVudCBtYWNoaW5lcyB0aGF0IGFyZSBhbHNvIG1vcmUgY2FwYWJsZSwKICAgID4gcmVhbGl6aW5n
IHRoYXQgZXZlbnR1YWxseSBtYWNoaW5lcyB3aXRoIDMyTUIgb2YgRFJBTSBhbmQgMTI4TUIgb2Yg
Rmxhc2gKICAgID4gd2lsbCDigJxhZ2Ugb3V04oCdIHRocm91Z2ggZmFpbHVyZSBhbmQgc2NhcmNp
dHkuCgogICAgPiBCeSB0aGVuIHdl4oCZbGwgaGF2ZSBhIG5ldyDigJxub3JtYWzigJ0gYWJvdXQg
d2hhdCB0aGUgbWluaW11bSBleHBlY3RhdGlvbnMKICAgID4gYXJlLCBhbmQgdGhlIGNvbnZlcnNh
dGlvbiB3aWxsIGNvbnRpbnVlLCBidXQgd2l0aCBkaWZmZXJlbnQKICAgID4gcGFyYW1ldGVycy4K
CiAgICA+IFVuZGVyc3RhbmRpbmcgdGhhdCB0aGUgZGVmaW5pdGlvbiBvZiBhIOKAnHNraW5ueeKA
nSBtYWNoaW5lIGlzbuKAmXQgdG9kYXkKICAgID4gd2hhdCBpdCB3YXMgNSB5ZWFycyBhZ28sIGFu
ZCB0aGF0IGl0IHdvbuKAmXQgYmUgdGhlIHNhbWUgYWdhaW4gaW4gYW5vdGhlcgogICAgPiA1IHll
YXJzLCBJ4oCZZCBsaWtlIHRvIHByb3Bvc2FsIGEgQ09ORklHXyBzeW1ib2wgdGhhdCBkZW5vdGVz
IHRoYXQgYQogICAgPiBwbGF0Zm9ybSBpcyBpbiBhIGNsYXNzIG9mIGNvbnN0cmFpbmVkIGFyY2hp
dGVjdHVyZXMuCgppdCBzZWVtcyB0aGF0IFNLSU5OWSBzaG91bGQgYmUgYW4gaW50ZWdlciBvZiBz
b21lIGtpbmQsIG5vdCBhIGJvb2xlYW4uCgotLQpdICAgICAgICAgICAgICAgTmV2ZXIgdGVsbCBt
ZSB0aGUgb2RkcyEgICAgICAgICAgICAgICAgIHwgaXB2NiBtZXNoIG5ldHdvcmtzIFsKXSAgIE1p
Y2hhZWwgUmljaGFyZHNvbiwgU2FuZGVsbWFuIFNvZnR3YXJlIFdvcmtzICAgICAgICB8ICAgIElv
VCBhcmNoaXRlY3QgICBbCl0gICAgIG1jckBzYW5kZWxtYW4uY2EgIGh0dHA6Ly93d3cuc2FuZGVs
bWFuLmNhLyAgICAgICAgfCAgIHJ1Ynkgb24gcmFpbHMgICAgWwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
