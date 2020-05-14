Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5D61D393E
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 20:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iu3zNQMchsmrPdGW19GLlzE0ZsIED/mIO/sc7rq9+58=; b=Vbf1qUDFseTA2I
	7k3MCZsf5Sk1jSa1dchrmN52UljSSSgQUuLqv3OUPFB0I2OOHdsJc+5sPg4bBAZsshnItiKI3PLaE
	ImF6QCneJRXATukZjyBoLz7C2k7S8QBPBZHaIi7h6R8FHM33x00nDsvt6KPL/1joDzpHoJxu4QXOY
	919NMqRN3lc6pqnINoJmmRmmFCgRWHFowVcuQtjZCYJT9EVc7mLbbrJIkj479A6Fd4CBza8naah2P
	Ik2uiGS2d6Dt3GZKVfg6OS7H5KUFWlS8aViNTgbX4RgeyGTypEVZZdF/Mya3WOdNahu3HZASqO0kv
	kkv6V7TDaB852CDyxGwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZImP-000241-5C; Thu, 14 May 2020 18:40:25 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZImI-00023T-Vd
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 18:40:20 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04EIeHlF013022
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 12:40:17 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <5469.1589466193@localhost>
Date: Thu, 14 May 2020 12:40:16 -0600
Message-Id: <352D5EB7-CFBD-4A71-987A-DAC29AD4A826@redfish-solutions.com>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <EF289B10-A44B-40B9-B071-3E875AC77B41@redfish-solutions.com>
 <5469.1589466193@localhost>
To: Michael Richardson <mcr@sandelman.ca>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_114019_108685_A5BD8420 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAxNCwgMjAyMCwgYXQgODoyMyBBTSwgTWljaGFlbCBSaWNoYXJkc29uIDxtY3JA
c2FuZGVsbWFuLmNhPiB3cm90ZToKPiAKPiBbc25pcF0KPiAKPiBJdCBkZXBlbmRzIGEgbG90IG9u
IHRoZSByZWxhdGl2ZSBjb3N0IG9mIHNlbmRpbmcgYSBzZXJ2aWNlIHBlcnNvbiB0aGVyZSB0bwo+
IHJlcGFpciB0aGUgZGV2aWNlIChwdXNoIHRoZSBidXR0b24sIHJlZmxhc2ggb3IgcmVwbGFjZSB0
aGUgZGV2aWNlKSwgdnMgdGhlCj4gcmlzayBvZiB0aGUgYm94IG5vdCBvcGVyYXRpbmcgYXQgYWxs
Lgo+IAo+IEluIHRoZSBOQVQ0NCBob21lIHJvdXRlciBzaXR1YXRpb24sIHRoZSBsYWNrIG9mIGFu
IGlwdGFibGVzIHRvIGRvIE1BU1Egb3IKPiBwb3J0IGZvcndhcmRpbmcgcmVzdWx0cyBpbiB0aGUg
ImZpcmV3YWxsIiBmYWlsaW5nIGNsb3NlZC4KPiBObyBwYWNrZXRzIHRyYXZlcnNlLCBidXQgdGhl
IGJveCBtaWdodCBiZSBhY2Nlc3NpYmxlIGJ5IG5ldHdvcmsgZm9yIHJlcGFpcnMKPiBmcm9tIG9u
ZSBzaWRlIG9yIHRoZSBvdGhlci4KPiAKPiBJbiB0aGUgSVB2NiBhbmQgcm91dGVkIElQdjQgc2l0
dWF0aW9uLCBpZiBwYWNrZXQgZm9yd2FyZGluZyBpcyBlbmFibGVkLCB0aGVuCj4gdGhlIGJveCBt
aWdodCBjb250aW51ZSB0byBwcm92aWRlIGNyaXRpY2FsIGZ1bmN0aW9uYWxpdHksIGFuZCBpdCBt
aWdodCBiZQo+IHBvc3NpYmxlIHRvIHJlcGFpciBpdCByZW1vdGVseS4KPiAKPiBJbiB0aGUgY2Fz
ZSB3aGVyZSB0aGlzIGlzbid0IGEgcm91dGVyLCBidXQgYSBOQVMsIG9yIHNvbWUgb3RoZXIgSW9U
IGRldmljZSwKPiB0aGVuIHRoZSBsYWNrIG9mIGEgZmlyZXdhbGwsIGlmIHRoZSBkZXZpY2UgaGFz
IG11bHRpcGxlIGxheWVycyBvZiBzZWN1cml0eQo+IChubyBzdHVwaWQgZGVmYXVsdCBwYXNzd29y
ZHMsIG9yIG5vIHBhc3N3b3JkcyBhdCBhbGwpIHJlc3VsdCBpbiBhIGxvd2VyZWQKPiBsZXZlbCBv
ZiBzZWN1cml0eSwgYnV0IG5vdCB6ZXJvIHNlY3VyaXR5Lgo+IAo+IEluIGdlbmVyYWwsIEkgdGhp
bmsgdGhhdCB0aGlzIGRlY2lzaW9uIG5lZWRzIHRvIHVwLWxldmVsZWQgdG8gYXMgYSBidWlsZAo+
IG9wdGlvbi4gIFRoZXJlIGFyZSBtYW55IGNhc2VzIHdoZXJlIEkgd291bGQgYWdyZWU6IHlvdSB3
YW50IHRoZSBib3ggdG8gZGllCj4gcmF0aGVyIHRoYW4gcG90ZW50aWFsbHkgY29tZSB1cCBpbnNl
Y3VyZWx5Lgo+IAoKCkEgd2hpbGUgYWdvIEkgcG9zdGVkIGFuIG9wdGlvbiB0byDigJxiYWtlIGlu
4oCdIGEgZGVmYXVsdCByb290IHBhc3N3b3JkIGJ1dCBpdCB3YXMgbml4ZWQuCgpodHRwczovL2dp
dGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvNjIyCgpUb28gYmFkLgoKLVBoaWxpcAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
