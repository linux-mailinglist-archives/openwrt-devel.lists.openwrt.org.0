Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EE15BDC2
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 16:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dNlenTvdqzi0OBGlkyhBJfbqdoDTx6L7oEgczAqg0TY=; b=uC4/bzB8qfFMU85v6EXDDI24/
	zQY270xhpD4KQQt9095WWfLaEC5Py4ECgIzE6zY8FnlUv+NbyZUj8diB0+MZRccxyxZBj4leyssrH
	UyWsU/cRFaeFzk84jJitUFggeRLWWPr2Xt7v2xJXcm8EcqGHKO5XcLWsdlZlY7/sjzk/tweIeyGfv
	gpJ56kQNd9nqdBGjd0V9Mue1GzEvWEG4EX91DKFVytA27+8XnxQ0E8rgltvy5kqE5iWnLfLic3C0C
	Gyc9hkT2ybwAVJ2+leZ4blUuuN6gNJCw8MtQOEX7o16pOhFkk5yFkyI2ETG6uZ3+RxNezhZ2HuQjK
	hJom/HsOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhx3B-0000RK-T5; Mon, 01 Jul 2019 14:12:57 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhx30-0000Qo-Q6
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 14:12:48 +0000
Received: from p5dcfb199.dip0.t-ipconnect.de ([93.207.177.153]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hhx2y-0007R3-Gh; Mon, 01 Jul 2019 16:12:44 +0200
To: Jeff Kletsky <lede@allycomm.com>, openwrt-devel@lists.openwrt.org
References: <20190615221019.20460-1-lede@allycomm.com>
From: John Crispin <john@phrozen.org>
Message-ID: <7acfd99b-7c36-2191-2bb3-471b1c83b960@phrozen.org>
Date: Mon, 1 Jul 2019 16:12:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190615221019.20460-1-lede@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_071247_004673_43094ED1 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: sysupgrade: Bring down wifi
 just before killall
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDE2LzA2LzIwMTkgMDA6MTAsIEplZmYgS2xldHNreSB3cm90ZToKPiBGcm9tOiBKZWZmIEts
ZXRza3kgPGdpdC1jb21taXRzQGFsbHljb21tLmNvbT4KPgo+IFdpZmkgY2FuLCBpbiBjZXJ0YWlu
IHNpdHVhdGlvbnMsIGNhdXNlIHN5c3VwZ3JhZGUgdG8gZmFpbCBzaWxlbnRseQo+IHdpdGggYSAy
NTYgcmV0dXJuIHZhbHVlIGFzIGFsbCBwcm9jZXNzZXMgY2FuJ3QgYmUga2lsbGVkLgo+IE9uZSBv
ZiB0aGVzZSBzaXR1YXRpb25zIGlzIG1lc2ggd2l0aCBiYXRtYW4tYWR2IGFjdGl2ZS4KPgo+IEFk
ZGVkIGB3aWZpIGRvd25gIGp1c3QgcHJpb3IgdG8gdGhlIGtpbGxhbGwgc2VxdWVuY2UgaW4gc3Rh
Z2UyCj4KPiBSdW4tdGVzdGVkLW9uOiBMaW5rc3lzIEVBODMwMAo+Cj4gU2lnbmVkLW9mZi1ieTog
SmVmZiBLbGV0c2t5IDxnaXQtY29tbWl0c0BhbGx5Y29tbS5jb20+Cj4gLS0tCj4gICBwYWNrYWdl
L2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyIHwgNCArKysrCj4gICAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZp
bGVzL2ZpbGVzL2xpYi91cGdyYWRlL3N0YWdlMiBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9s
aWIvdXBncmFkZS9zdGFnZTIKPiBpbmRleCBiZGMxMmM3NDI2Li5kOTExNjE0ZTM2IDEwMDc1NQo+
IC0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9zdGFnZTIKPiArKysg
Yi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyCj4gQEAgLTEyNCw2
ICsxMjQsMTAgQEAga2lsbF9yZW1haW5pbmcoKSB7ICMgWyA8c2lnbmFsPiBbIDxsb29wPiBdIF0K
PiAgIAo+ICAgaW5kaWNhdGVfdXBncmFkZQo+ICAgCj4gK2lmIFsgLXggIiQod2hpY2ggd2lmaSki
IF0gOyB0aGVuCj4gKyAgICB3aWZpIGRvd24KPiArICAgIHNsZWVwIDEKCnRoZSBzbGVlcCAxIGlz
IHJlYWxseSBub3QgZ29vZC4gY291bGQgeW91IHRyeSB0byBmaWd1cmUgb3V0IHdoYXQgCmFjdHVh
bGx5IGNhdXNlcyB0aGUgMjU2IGFuZCB0cnkgdG8gZml4IHRoYXQgaW5zdGVhZCBwbGVhc2UgPwoK
IMKgwqDCoCBKb2huCgoKPiArZmkKPiAgIGtpbGxhbGwgLTkgdGVsbmV0ZAo+ICAga2lsbGFsbCAt
OSBkcm9wYmVhcgo+ICAga2lsbGFsbCAtOSBhc2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
