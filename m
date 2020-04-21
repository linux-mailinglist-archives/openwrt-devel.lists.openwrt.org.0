Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F132F1B2EDA
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 20:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSz5ANwK8dm8wifpjgRPLF026womSNQpz51IkDNU+HM=; b=kgvvE6d6r3dq8E
	AJXkOIJZ2sb73czt8UQcom7eybSF7Ma/DjCjDzrApGdu58En6OgmkhGnETNI7HuZA/xh29VrC96Iq
	2ixIfKOs18tgP7jeqk8S5gfwZVmSrsZML3EmLITQ5jz8cSFKVKDiuPBRsII3ZE2EWzSEoqBFg2CpB
	+zxXUZDI8c4DM25x6kYc2hBQxAnMI4cI1ap9/kKOi6YIlTjvTurr1GOhXbx+bDBEoi8wfePA5ns22
	EubPIzu9gbWmDGg2cUdM4SZrolueUqJYmzzxHExAUvfLGXsJZY1LHa9fw6oH6OncnYMORSpWk51Zz
	Bm4aVrnluMCgO3opeXVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxQU-0008BM-Vp; Tue, 21 Apr 2020 18:15:18 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQxQC-0007re-Iu
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 18:15:02 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03LIEwEV022401
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Apr 2020 12:14:58 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <ea5a8bbc-df31-94f5-e2b9-a14bd0eca28e@gmail.com>
Date: Tue, 21 Apr 2020 12:14:58 -0600
Message-Id: <F3D63DEA-82DE-400F-B105-25865EC7E2A0@redfish-solutions.com>
References: <C8C1EE45-7F41-4C1D-A65A-CF3B7931298F@redfish-solutions.com>
 <ea5a8bbc-df31-94f5-e2b9-a14bd0eca28e@gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_111500_698017_ED8BA4FE 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Missing default CONFIG_ symbols for 5.4?
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

Cgo+IE9uIEFwciAyMSwgMjAyMCwgYXQgMTA6MTUgQU0sIEFsYmVydG8gQnVyc2kgPGJvYmFmZXR0
aG90bWFpbEBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IAo+IAo+IE9uIDIxLzA0LzIwIDA3OjE1LCBQ
aGlsaXAgUHJpbmRldmlsbGUgd3JvdGU6Cj4+IEnigJltIHRyeWluZyB0byBidWlsZCB4ODYvNjQg
b24gbWFzdGVyLCBhbmQgSeKAmW0gZ2V0dGluZyB0aGUgZm9sbG93aW5nIHByb21wdHM6Cj4+IFZl
cmlmeSBrZXJuZWwgc2lnbmF0dXJlIGR1cmluZyBrZXhlY19maWxlX2xvYWQoKSBzeXNjYWxsIChL
RVhFQ19TSUcpIFtOL3kvP10gKE5FVykKPj4gTmV0ZmlsdGVyIG5mX3RhYmxlcyBzdXBwb3J0IChO
Rl9UQUJMRVMpIFtNL24veS8/XSBtCj4+ICAgTmV0ZmlsdGVyIG5mX3RhYmxlcyBzZXQgaW5mcmFz
dHJ1Y3R1cmUgKE5GX1RBQkxFU19TRVQpIFtNL24vP10gbQo+PiAgIE5ldGZpbHRlciBuZl90YWJs
ZXMgbWl4ZWQgSVB2NC9JUHY2IHRhYmxlcyBzdXBwb3J0IChORl9UQUJMRVNfSU5FVCkgW04veS8/
XSAoTkVXKQo+PiBJUHY0IG5mX3RhYmxlcyBzdXBwb3J0IChORl9UQUJMRVNfSVBWNCkgW04veS8/
XSAoTkVXKQo+PiBJUHY2IG5mX3RhYmxlcyBzdXBwb3J0IChORl9UQUJMRVNfSVBWNikgW04veS8/
XSAoTkVXKQo+PiBEZXRlY3QgSHVuZyBUYXNrcyAoREVURUNUX0hVTkdfVEFTSykgW1kvbi8/XSB5
Cj4+ICAgRGVmYXVsdCB0aW1lb3V0IGZvciBodW5nIHRhc2sgZGV0ZWN0aW9uIChpbiBzZWNvbmRz
KSAoREVGQVVMVF9IVU5HX1RBU0tfVElNRU9VVCkgWzEyMF0gKE5FVykKPj4gICBQYW5pYyAoUmVi
b290KSBPbiBIdW5nIFRhc2tzIChCT09UUEFSQU1fSFVOR19UQVNLX1BBTklDKSBbTi95Lz9dIChO
RVcpCj4+IENhbiBzb21lb25lIHBsZWFzZSB1cGRhdGUgdGhlIHZhbHVlcyBmb3IgdGFyZ2V0L2xp
bnV4L2dlbmVyaWMvY29uZmlnLTUuND8KPj4gVGhhbmtzLAo+PiAtUGhpbGlwCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiAKPiBJ
J20gbm90IGdldHRpbmcgdGhvc2UgaW4gYSBjbGVhbiByZWJ1aWxkLiBEaWQgeW91IHRyeSBhICJt
YWtlIGRpcmNsZWFuIj8KPiAKPiAtQWxiZXJ0bwoKCkkgbm9ybWFsbHkgZG8gYSDigJxtYWtlIGNs
ZWFuICYmIG1ha2UgZGVmY29uZmlnIG9sZGNvbmZpZ+KAnSBiZWZvcmUgYSBidWlsZCwgYnV0IG5v
dCBhIOKAnG1ha2UgZGlyY2xlYW7igJ0uICBJ4oCZbGwgdHJ5IHRoYXQgaW5zdGVhZOKApgoKRmln
dXJlZCB0aGF0IHRoZSB0b29sY2hhaW4gZG9lc27igJl0IGNoYW5nZSB2ZXJ5IG9mdGVuIGFuZCB0
aGVyZSB3YXMgbm8gcG9pbnQgaW4gcmVidWlsZGluZyBpdCBlYWNoIHRpbWUuCgotUGhpbGlwCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
