Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823FE960FC
	for <lists+openwrt-devel@lfdr.de>; Tue, 20 Aug 2019 15:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyg1zSz3dRwWBO+g5Udf4Tvy+XB2HRYvyuD7mXJR5BE=; b=MaJSpdsWy1NSmE
	I//Tz3ICUZ9zCOts8UvB8ktbQ4WFCP2Mv/Oio3/dEMnV8i1NJpmObhNiZbj2OudvkTLK6dGXMMg3N
	SA12wqUBr666INS843kl5eoNZ6dbvlpitiZ6Sl1NS66djvAROuQux4TsuBwv+Fod+q8cOgS37BYSE
	Qj3KAQ820fMs+HFaccSrk06qcJ/LKWUXA2R+RMOdWLijdQ844Qv9ZFALWxJieyBbrjem1Tda3xfpA
	Nte6rx/Lw33ohs32/jbO+0h7G8o1J9ZrsoWe29W4MGVOYVD+saiYC5dxGeegIlfbf09E0jJuIRcgL
	U0yJBk/Ff+kLSnYaMjZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04R7-0005iD-QZ; Tue, 20 Aug 2019 13:44:34 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04Ps-0004q0-KP
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 13:43:20 +0000
Received: (qmail 10075 invoked from network); 20 Aug 2019 13:43:08 -0000
Received: from localhost (HELO ?IPv6:2a02:790:ff:921:bb3a:fa11:9acd:2d8d?)
 (127.0.0.1)
 by achernar.uberspace.de with SMTP; 20 Aug 2019 13:43:08 -0000
To: Rich Brown <richb.hanover@gmail.com>, openwrt-devel@lists.openwrt.org
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
Date: Tue, 20 Aug 2019 15:43:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_064317_040958_81338137 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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

SGkgUmljaCwKCnRoZSBhcnRpY2xlIGlzIGEgam9rZS4gSSdtIG5vdCB0YWxraW5nIGFib3V0IHRo
ZSByZXNlYXJjaGVycywgYnV0IGFib3V0IGNpdGluZyBhIHN0YXRlbWVudCBsaWtlOgrigJ5Ib3dl
dmVyLCB0aG9zZSBzYW1lIGZpcm13YXJlIGJpbmFyaWVzIGRpZCBub3QgZW1wbG95IG90aGVyIGNv
bW1vbiBzZWN1cml0eQpmZWF0dXJlcyBsaWtlIEFTTFIgb3Igc3RhY2sgZ3VhcmRzLCBvciBkaWQg
c28gb25seSByYXJlbHks4oCcCgpMb29rIGF0IHRoZSBzb3VyY2UtY29kZSBvZiB0aGUgbWVudGlv
bmVkIHZlbmRvcnMuIFRoZXkgcGFydGlhbGx5IHVzZSAxOCB5ZWFycyBvbGQga2VybmVsIGNvZGUg
YW5kClRlbG5ldC1saWtlIG1hbmFnZW1lbnQgaW50ZXJmYWNlcy4KClJlZ2FyZHMsCgpWaW5jZW50
CgoKT24gMjAuMDguMTkgMTM6MjEsIFJpY2ggQnJvd24gd3JvdGU6Cj4gSGkgZm9sa3MsCj4gCj4g
WW91J3ZlIHByb2JhYmx5IHNlZW4gdGhlIFNsYXNoZG90IGFydGljbGUgYWJvdXQgKGxhY2sgb2Yp
IHNlY3VyaXR5IGdhaW5zIGluIHJvdXRlciBmaXJtd2FyZS4gaHR0cHM6Ly95cm8uc2xhc2hkb3Qu
b3JnL3N0b3J5LzE5LzA4LzE2LzIwNTAyMTkvaHVnZS1zdXJ2ZXktb2YtZmlybXdhcmUtZmluZHMt
bm8tc2VjdXJpdHktZ2FpbnMtaW4tMTUteWVhcnMgVGhlIG9yaWdpbmFsIGFydGljbGUgb24gU2Vj
dXJpdHkgTGVkZ2VyIGlzIGF0OiBodHRwczovL3NlY3VyaXR5bGVkZ2VyLmNvbS8yMDE5LzA4L2h1
Z2Utc3VydmV5LW9mLWZpcm13YXJlLWZpbmRzLW5vLXNlY3VyaXR5LWdhaW5zLWluLTE1LXllYXJz
Lwo+IAo+IFR3byBxdWVzdGlvbnM6Cj4gCj4gMSkgRG9lcyBhbnlvbmUga25vdyBpZiB0aGUgcmVz
ZWFyY2hlcnMgbG9va2VkIGF0IE9wZW5XcnQ/Cj4gCj4gMikgSWYgbm90LCBob3cgd291bGQgT3Bl
bldydCBzdGFibGUgb3Igc25hcHNob3QgaGF2ZSBmYXJlZCBpbiB0aGUgYW5hbHlzaXM/IERvIHdl
IGVuYWJsZSBzdGFjayBndWFyZHMsIEFTTFIsIGV0Yy4gb24gYWxsIGJ1aWxkcz8KPiAKPiBUaGFu
a3MuCj4gCj4gUmljaAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
