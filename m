Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA8313E1E
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 09:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fw1wZdabQwiAGC7JrHjqszCtxIborDlLJ8kLllDNM5M=; b=r9phuPqbNrdBbffChllIKaQ7qL
	KYX8I8qjPZRNB7i/qshThhZBsbgMCPBcfsmwz5oaDxWVB6LkyOp20vKT/Qj2l03L9qf/4BbmkeVxD
	kBrvGQfnSyXKta2fe8/UVmhtuTOYV+bhF4K6ELJ1ai4LlcvT4v1cVywwzAudegxJLBFky3ptm9Km5
	jxetpATdnnfgBNIuMvngQs7OdP/d2UXP3Kd8edyFiY8E7lM8ZneTdP6hVwj1oDd3AvE+AAzaWspdH
	xr7Wj4A8kNsPzk9Pc2uVu6pERPBze/8rv/Fz7BE5sPEN5/SvVUcy8DMvKIv7qwPTZgExlUo7FrUKp
	ft+N0Ocw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBOY-0007xf-PQ; Sun, 05 May 2019 07:17:10 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBOP-0007xC-Ml
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 07:17:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6E06F355B;
 Sun,  5 May 2019 09:16:56 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ef0bbeb0;
 Sun, 5 May 2019 09:16:54 +0200 (CEST)
Date: Sun, 5 May 2019 09:16:54 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190505071654.GL71477@meh.true.cz>
References: <20190501174354.19409-1-tomek_n@o2.pl>
 <20190503112124.GK346@meh.true.cz>
 <429c18c8-ae90-ffc0-0c54-7ca6a8a2a7a8@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <429c18c8-ae90-ffc0-0c54-7ca6a8a2a7a8@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_001701_895637_CD0C7746 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] tegra: add vendor string to device name
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4gWzIwMTktMDUtMDQgMTQ6Mzk6Mzhd
OgoKPiBXIGRuaXUgMDMuMDUuMjAxOSBvwqAxMzoyMSwgUGV0ciDFoHRldGlhciBwaXN6ZToKPiA+
IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIucGw+IFsyMDE5LTA1LTAxIDE5OjQzOjU0
XToKPiA+IAo+ID4gSGksCj4gPiAKPiA+PiBmb3IgYmV0dGVyIGlkZW50aWZpY2F0aW9uLiBBbHNv
IGNyZWF0ZSBTVVBQT1JURURfREVWSUNFUyBzdHJpbmcgZnJvbSBpdAo+ID4+IHdoaWNoIGNvcnJl
c3BvbmRzIHRvIGR0cyBjb21wYXRpYmxlIHN0cmluZy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6
IFRvbWFzeiBNYWNpZWogTm93YWsgPHRvbWVrX25AbzIucGw+Cj4gPiAKPiA+IC4uLgo+ID4gCj4g
Pj4gIGRlZmluZSBVLUJvb3QvdHJpbXNsaWNlCj4gPj4gICAgTkFNRSA6PSBDb21wdUxhYiBUcmlt
U2xpY2UKPiA+PiAtICBCVUlMRF9ERVZJQ0VTIDo9IHRyaW1zbGljZQo+ID4+ICsgIEJVSUxEX0RF
VklDRVMgOj0gY29tcHVsYWJfdHJpbXNsaWNlCj4gPj4gICAgVUJPT1RfSU1BR0UgOj0gdHJpbXNs
aWNlLW1tYy5pbWcgdHJpbXNsaWNlLXNwaS5pbWcKPiA+IAo+ID4gd2hhdCBhYm91dCB0aGlzIGZp
bGVzPyBTaG91bGRuJ3QgeW91IHJlbmFtZSB0aGVtIGFzIHdlbGw/Cj4gCj4gVGhhdCBjb3VsZCBi
ZSBkb25lLCBidXQgSSBsZWZ0IGl0IGFzIGlzLCB0byBiZSBpbiBsaW5lIHdpdGggY2Jvb3RpbWFn
ZS1jb25maWdzOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9OVklESUEvY2Jvb3RpbWFnZS1jb25maWdz
L2Jsb2IvN2MzYjQ1OGI5M2VkNjk0N2NkMDgzNjIzZjU0M2U5M2Y5MTAzY2MwZi90ZWdyYTIwL2Nv
bXB1bGFiL3RyaW1zbGljZS90cmltc2xpY2UtbW1jLmltZy5jZmcjTDIyCgpJJ20gcHV6emxlZCBu
b3csIGFzIEkgZG9uJ3Qga25vdyBtdWNoIGFib3V0IGNib290aW1hZ2UsIGFuZCB0aGlzIGZpbGUg
cmVmZXJzCnRvIHRyaW1zbGljZS1tbWMuYmN0IHNvIGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBt
ZSBpbiB0aGlzIGNvbnRleHQuCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
