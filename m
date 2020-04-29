Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFD71BE4BD
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 19:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/u1MEDec+Dqo3c7xycxmRCNmDk1/LUekaWnQbh0+FE=; b=WD3BhpiWQYY5jU
	TA+NCDMb4XvqE06vxc3AaXoJRlr/DX8zN5T8nzD0mf3yW06Uqlx5f6ISYMWH6JlQMrKW51sg7OKfR
	fQQ9S4XSQRD9xLBvaJu8L2Dr7aAUv7ffova+L3Q/gpHJSY23MBJqOQF6mUt/xJM/xfpeX85jw0vEk
	GW2X5h56IuYoFPjUAmaUZe+1DJdNwouLdlNLL6i5Y8c2s5ZVyoBHK96Cjz0x/sAAR85O8EQFegqRs
	uVBKsc9QxRpX/9467nxxCVEexXHefBDbX/c4NF5xgl+CeHyLcJkDhP3QP6JuX+0U+iOPDOGF2nEpv
	SBthU9uLll3vpBdtvDmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqAN-0007vV-RJ; Wed, 29 Apr 2020 17:06:35 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqAE-0007tl-C2
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 17:06:27 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03TH6KA0005494
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 11:06:20 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <20200429090625.GA22217@meh.true.cz>
Date: Wed, 29 Apr 2020 11:06:20 -0600
Message-Id: <DAA85EB3-2D0B-4A03-9BE0-865DAAFE76C9@redfish-solutions.com>
References: <8E30BC1C-83C5-4CB1-881C-344B6CD865D2@redfish-solutions.com>
 <20200429090625.GA22217@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100626_507944_F0635945 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Signing, meta-data,
 etc. on images and losetup mounts...
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

Cgo+IE9uIEFwciAyOSwgMjAyMCwgYXQgMzowNiBBTSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4gCj4gUGhpbGlwIFByaW5kZXZpbGxlIDxwaGlsaXBwX3N1YnhAcmVkZmlz
aC1zb2x1dGlvbnMuY29tPiBbMjAyMC0wNC0yNyAxODoxNzowMV06Cj4gCj4+IEkgd2FzIHRyeWlu
ZyB0byB0YWtlIGEgb3BlbndydC0qLWdlbmVyaWMtc3F1YXNoZnMtY29tYmluZWQtZWZpLmltZyBm
aWxlIGZyb20gbWFzdGVyIGFuZCB2ZXJpZnkgaXQgZm9yIGNvcnJlY3RuZXNzIHdpdGgg4oCcbG9z
ZXR1cOKAnSwgZXRjLgo+PiBCdXQgbG9zZXR1cCBiYWlsZWQgYmVjYXVzZSB0aGUgaW1hZ2Ugd2Fz
buKAmXQgYSBtdWx0aXBsZSBvZiA1MTIgYnl0ZXMgbG9uZy4KPiAKPiBJdCB3b3JrcyBmb3IgbWUg
KHRtKToKPiAKPiAkIGJpbndhbGsgYmluL3RhcmdldHMveDg2LzY0L29wZW53cnQteDg2LTY0LWdl
bmVyaWMtc3F1YXNoZnMtY29tYmluZWQtZWZpLmltZyB8IGdyZXAgU3F1YXNoZnMKPiAxNzMwMTUw
NCAgICAgIDB4MTA4MDAwMCAgICAgICBTcXVhc2hmcyBmaWxlc3lzdGVtLCBsaXR0bGUgZW5kaWFu
LCB2ZXJzaW9uIDQuMCwgY29tcHJlc3Npb246eHosIHNpemU6IDY2NzIyNzAgYnl0ZXMsIDEyNjYg
aW5vZGVzLCBibG9ja3NpemU6IDI2MjE0NCBieXRlcywgY3JlYXRlZDogMjAyMC0wNC0yOSAwNzo0
MzozOQo+IAo+ICQgc3VkbyBtb3VudCAtbyBsb29wLG9mZnNldD0xNzMwMTUwNCBiaW4vdGFyZ2V0
cy94ODYvNjQvb3BlbndydC14ODYtNjQtZ2VuZXJpYy1zcXVhc2hmcy1jb21iaW5lZC1lZmkuaW1n
IHRtcAo+IAo+ICQgY2F0IHRtcC9ldGMvb3BlbndydF92ZXJzaW9uIAo+IHIxMzEyMis3LTUyMmY2
YjdlZWU0Nwo+IAo+IEJUVyBpdCdzIHVzdWFsbHkgZmFzdGVyIHRvIHZlcmlmeSB0aGUgY29ycmVj
dG5lc3Mgd2l0aCBRRU1VOgo+IAo+ICQgLi9zY3JpcHRzL3FlbXVzdGFydCB4ODYgNjQgYmluL3Rh
cmdldHMveDg2LzY0L29wZW53cnQteDg2LTY0LWdlbmVyaWMtc3F1YXNoZnMtY29tYmluZWQtZWZp
LmltZwo+IAo+IOKAlCB5bmV6egoKClRoYW5rcy4gIFdoZXJlIGlzIHRoZSBiZWdpbm5pbmcgb2Yg
dGhlIHdob2xlIGRpc2sgaW1hZ2UgKGFuZCBlbmQpIGlmIEkgd2FudCB0byDigJxkZOKAnSBpdCBv
bnRvIGFuIFNTRCBvciBTRD8KCi1QaGlsaXAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
