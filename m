Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4892B5F8
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 15:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3unVl9BCC++GfmBytE/TzX4grmBWlTp6zCy6FWXzlo=; b=hw3L9Zxohqop60
	T3kxsbaajjoXvJ7JUA0L05Vf3vxupB9zRvRBMMdBOsh0jblznC3P+GVYb6VmNQXw5mwzwoXwa4XzV
	VcQir09KxYBdjjsKhCoQqL/77y9qH7C1bBfdag7VsR2LcM2ne0KoHdVJo0SIieC9DmJu6sdcSdwf5
	OAJCekjCT74sNidGevHtcuAoGzrWVn60oWjY3e5RM9Ego1N06Y5yLBOslA3AVdry8C8aHk7WUobs+
	A8XY9yK6I2a2EECXqn+RgT+hCk8ANt7jOTMuiz47tSJIrogh45fSxB43/34erW7S4xTnHXtxIzNy6
	BzPBWlLAMBLq4hxiZ7tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFH1-0002g3-C4; Mon, 27 May 2019 13:02:43 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::5])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFGo-0002et-Ey
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 13:02:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1558962147;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=S0WQKGZONJHCD74LrXIcfec9U9eeqa6GLRCO9jq67LU=;
 b=B3MPe9Z+Q8B0fK5xur9EGRboyKYm9aOFXXaUU1vh033dMjRUqXg1gdWM0PIKV1MLVo
 zaP98O7pnQBtNrsnzTnn1ZmqQOZrY2H1uBy48mEBOMAKS3W8yEcAi6p32Q2R7wCGZ5b9
 G6TR4j/6kWsLN5FsyR1vLXNDiGmxDnVVF1ZG0lm36loC0Gcy3oKiN2EdRt2FexZGtqnJ
 kZo3nV8gjZlWOgPkM7SH7bvVFDkW6IkCCWrDTRcoTF1wvwqvsN63OCUUtCE/GYYw3AOS
 +4oar7dtjlxm4Vo444ExU3ZRwOVO7yeXluWkpgzPHyFPvJ0LyWE1460oolhgDs1EPotd
 bltw==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJvSfTerW"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id R0373fv4RD2Ni1Y
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 27 May 2019 15:02:23 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Mon, 27 May 2019 15:02:22 +0200
Message-ID: <10466064.qZ97aYSQ2d@tauon.chronox.de>
In-Reply-To: <20190527130023.GI50588@meh.true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
 <20190527130023.GI50588@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_060233_359610_A2D07502 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:5 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gTW9udGFnLCAyNy4gTWFpIDIwMTksIDE1OjAwOjIzIENFU1Qgc2NocmllYiBQZXRyIMWgdGV0
aWFyOgoKSGkgUGV0ciwKCj4gRXRpZW5uZSBDaGFtcGV0aWVyIDxjaGFtcGV0aWVyLmV0aWVubmVA
Z21haWwuY29tPiBbMjAxOS0wNS0yNSAxMjo0MzoyNV06Cj4gPiBKdXN0IHRvIGJlIGNsZWFyIGkn
bSAxMDAlIGluIGZhdm9yIG9mIHlvdXIgZWZmb3J0IHRvIGhhdmUgcmFuZG9tIHBvb2wgaW5pdAo+
ID4gZG9uZSBmYXN0IG9uIGFsbCBkZXZpY2VzLCBhbmQgeW91ciBzb2x1dGlvbiwgYmFzZWQgb24g
U3RlcGhhbiBhd3NvbWUgd29yaywKPiA+IHNlZW1zIHJlYWxseSBnb29kIEkganVzdCB3YW50IHRv
IGJlIHN1cmUgd2UgZG9uJ3QgbWFrZSBzb21lIGRldmljZXMgd29yc2UKPiA+IC8KPiA+IGFyZSBu
b3QgbWlzc2luZyBzb21ldGhpbmcKPiAKPiBGWUksIEkndmUganVzdCBhZGRlZCBtb3JlIGRldmlj
ZXMgdG8gdGhlIHRlc3RpbmcgYmVmb3JlIHN1Ym1pdHRpbmcgdGhlIG5leHQKPiByb3VuZCBvZiBw
YXRjaGVzLCBhbmQgZ290IGZvbGxvd2luZyBvbiB0aGUgTVQ3NjIwQSBiYXNlZCBkZXZpY2U6Cj4g
Cj4gIHJvb3RAT3BlbldydDovIyBjYXQgL3Byb2MvY3B1aW5mbwo+ICBzeXN0ZW0gdHlwZSAgICAg
ICAgICAgICA6IE1lZGlhVGVrIE1UNzYyMEEgdmVyOjIgZWNvOjYKPiAgbWFjaGluZSAgICAgICAg
ICAgICAgICAgOiBCRENPTSBXQVAyMTAwLVNLCj4gIHByb2Nlc3NvciAgICAgICAgICAgICAgIDog
MAo+ICBjcHUgbW9kZWwgICAgICAgICAgICAgICA6IE1JUFMgMjRLRWMgVjUuMAo+IAo+ICByb290
QE9wZW5XcnQ6LyMgY2F0Cj4gL3N5cy9kZXZpY2VzL3N5c3RlbS9jbG9ja3NvdXJjZS9jbG9ja3Nv
dXJjZTAvYXZhaWxhYmxlX2Nsb2Nrc291cmNlIHN5c3RpY2sKPiBNSVBTCj4gCj4gIHJvb3RAT3Bl
bldydDovIyAvc2Jpbi91cm5nZAo+ICBqZW50LXJuZyBpbml0IGZhaWxlZCwgZXJyOiAyCj4gCj4g
V2hlcmUgdGhhdCBlcnJvciAyIGlzIEVDT0FSU0VUSU1FLiBJdCBtYWtlcyBtZSB3b25kZXIgaWYg
dGhlcmUncyBzb21ldGhpbmcKPiB3aGljaCBjb3VsZCBiZSB0d2Vha2VkIG9uIGtlcm5lbCBzaWRl
IGluIG9yZGVyIHRvIHByb3ZpZGUgYmV0dGVyIGVudmlyb25tZW50Cj4gZm9yIGplbnQtcm5nIG9u
IHRoaXMgcXVpdGUgc3RpbGwgcG9wdWxhciBTb0MuCgpUaGUgSml0dGVyIFJORyBpcyBkZXBlbmRl
bnQgb24gdGhlIGV4aXN0ZW5jZSBvZiBhIGhpZ2gtcmVzb2x1dGlvbiB0aW1lci4gVGhlIAptZW50
aW9uZWQgc3lzdGVtIGRvZXMgbm90IHNlZW0gdG8gaGF2ZSBvbmUuCgpDaGVjayAvc3lzL2Rldmlj
ZXMvc3lzdGVtL2Nsb2Nrc291cmNlL2Nsb2Nrc291cmNlMC9jdXJyZW50X2Nsb2Nrc291cmNlIGFu
ZCAvCnN5cy9kZXZpY2VzL3N5c3RlbS9jbG9ja3NvdXJjZS9jbG9ja3NvdXJjZTAvYXZhaWxhYmxl
X2Nsb2Nrc291cmNlCgoKQ2lhbwpTdGVwaGFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
