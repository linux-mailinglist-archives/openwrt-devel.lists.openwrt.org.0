Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048272FF74
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 17:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sw6mBu3LeBfmw5IrRxOuH+s1L09T7+i/mk/taIW0m6M=; b=tZHu/5Jr5FtjZ2AeD5m+JCLz+t
	eercgyZiVFl4ypL9B7tOqsldlnIxol6VauAnjaw8k2VzY/CHtnsksptRIOnb+kxRShEhSUqbKxk3X
	OzYG+e4tZ8Mc0IQJ5FelC9P2dWxcXJBkVxfibCKPrQiUuzqoxFC4ski473koYvOzRSKi1ah3oil9C
	JEB6/IZ9lqlJyBVGexTkF93FBodRoW+cF9LbMCCUYIQ3NbUieyMGOlc1MnU1L63FpHkQLTuB6SWWd
	p4NsuS9paDUqJxyZR7D0ncrEFArjazvXnPE57lpD21Bg65F790hHZI8UK2McjqhMluIXKLvftV5WN
	EYcvJgzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWN0e-0002Zx-9H; Thu, 30 May 2019 15:30:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWN0Y-0002ZR-9u
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 15:30:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8DDA44D03;
 Thu, 30 May 2019 17:30:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 63e5998d;
 Thu, 30 May 2019 17:30:18 +0200 (CEST)
Date: Thu, 30 May 2019 17:30:18 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20190530153018.GF13432@meh.true.cz>
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2839502.UJiEac7TxE@debian64>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_083022_496720_F37396E1 
X-CRM114-Status: UNSURE (   9.40  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] gpio-button-hotplug: support
 interrupt properties
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

Q2hyaXN0aWFuIExhbXBhcnRlciA8Y2h1bmtlZXlAZ21haWwuY29tPiBbMjAxOS0wNS0zMCAxNzow
OTowOF06CgpIaSwKCj4gT24gVGh1cnNkYXksIE1heSAzMCwgMjAxOSAxMjowMDoyNyBQTSBDRVNU
IFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gPiAKPiA+IEkndmUganVzdCBjaGVja2VkIHRoaXMgb24g
YXRoNzkgKGFyY2hlci1jNy12NSkgYW5kIG9uIHJhbWlwcy9tdDc2MjAKPiA+IChiZGNvbSx3YXAy
MTAwLXNrKSB3aXRoIFdQUyBidXR0b25zLgo+ID4KPiA+IEFja2VkLWJ5OiBQZXRyIMWgdGV0aWFy
IDx5bmV6ekB0cnVlLmN6Pgo+IAo+IENhbiB5b3UgdGVsbCBtZSB3aGF0IHlvdSB0ZXN0ZWQ/IFdh
cyBpdCB0aGUgc29mdHdhcmUgZGVib3VuY2U/Cj4gQmVjYXVzZSB0aGlzIHNob3VsZCBiZSB0aGUg
b25seSBiaXQgdGhhdCB3aWxsIGFmZmVjdCB0aGUgYXRoNzkKPiBwbGF0Zm9ybSBJIHRoaW5rIChz
aW5jZSBpdCBhbHJlYWR5IGhhcyBzdXBwb3J0IGZvciBpbnRlcnJ1cHRzCj4gdGhyb3VnaCB0aGUg
Z3BpbyBjb250cm9sbGVyKS4KCml0IHdhcyBqdXN0IEZZSSwgdGhhdCBJJ3ZlIGNoZWNrZWQgaXQg
KHJ1biB0ZXN0ZWQpIGFuZCBkaWRuJ3Qgbm90aWNlZCBhbnkgc2lkZQplZmZlY3RzLCBwb3NzaWJs
ZSByZWdyZXNzaW9ucy4gIEkndmUgc2ltcGx5IGFkZGVkIHRoaXMgcGF0Y2ggb24gdG9wIG9mIGZp
eCBmb3IKRlMjMTk2NSBhbmQgcnVuIHRlc3RlZCBpdCB0b2dldGhlci4KCi0tIHluZXp6CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
