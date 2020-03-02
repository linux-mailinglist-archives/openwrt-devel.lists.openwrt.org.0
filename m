Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32BA175928
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 12:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3RW/++4vUZsspLDCmR2Jo1Rv8o5b7GufEgLatFyTBbs=; b=PNZoh2TGsZiFZfNfpqx6BU5vvC
	7VllX82xKvQv+GhOMbr3fyMEQuR3Oata1B6Ymi0C6JTZQDuKqNYTd14D+MY6y5PLbimepgtNJYYbG
	kF+UvDoUAD5qm7It6/6822neG7LC7XckVQ4iQzcsPO6yU5BvJOry6Yo4cRsGNOVemKrQZ80UNWYFk
	rl69TRc1+p/wqS0foMUB4V0dluNxAKlNnLlTDn2hyvoTMy12tDX9rONDC4CNlfRukczHzAaaolBig
	kO1UzWckO3l6rwRhpgMsixLVp+ozTERruU3wT+R/vg3qWoUM5hDR6gUbjyc0MRT4KahDQ+Rt2JaZg
	U0H0KGOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8ito-00020F-5z; Mon, 02 Mar 2020 11:06:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8itf-0001zg-5v
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 11:06:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E74104F50;
 Mon,  2 Mar 2020 12:05:57 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5ba9c304;
 Mon, 2 Mar 2020 12:05:44 +0100 (CET)
Date: Mon, 2 Mar 2020 12:05:44 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20200302110544.GD70913@meh.true.cz>
References: <20200301024850.1528027-1-mail@aparcar.org>
 <20200301123433.GD33354@meh.true.cz>
 <ccac7a1c-7d58-c206-3402-b233d5309a1a@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccac7a1c-7d58-c206-3402-b233d5309a1a@aparcar.org>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_030603_517120_4C777A85 
X-CRM114-Status: GOOD (  15.06  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: refactor JSON info files to
 `profiles.json`
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

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiBbMjAyMC0wMy0wMSAxNDoxMDoxNl06Cgo+
IE9uIDAxLjAzLjIwIDAyOjM0LCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+ID4gUGF1bCBTcG9vcmVu
IDxtYWlsQGFwYXJjYXIub3JnPiBbMjAyMC0wMi0yOSAxNjo0ODo1MF06Cj4gPiAKPiA+IEZZSToK
PiA+IAo+ID4gICAkIGdyZXAgSlNPTiAuY29uZmlnCj4gPiAgIENPTkZJR19KU09OX09WRVJWSUVX
X0lNQUdFX0lORk89eQo+ID4gCj4gPiAgICQgY2F0IGJpbi90YXJnZXRzL2lteDYvZ2VuZXJpYy9w
cm9maWxlcy5qc29uCj4gPiAgIHt9Cj4gCj4gVGhpcyBwcm9ibGVtIG9jY3VycyBhbHNvIGZveCB4
ODYsIHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIGltYWdlIGZ1bmN0aW9uIGlzCj4gbm90IHByb3Bl
cmx5IGNhbGxlZC4gTWF5YmUgYmVjYXVzZSBJTVg2IG9ubHkgb2ZmZXIgYSBkZWZhdWx0IHRhcmdl
dCBidXQgbm8KPiBwcm9maWxlcywgcmVzdWx0aW5nIGluIGFuIGVtcHR5IHByb2ZpbGVzLmpzb24g
ZmlsZSAtIEkgdGhpbmsuIEkgc3RhcnRlZAo+IChiYXNlZCBvbiBMeW54aXMgZHJhZnQpIHJld29y
a2luZyB0aGUgeDg2IHNvIGl0IGNyZWF0ZXMgYWxzbyBKU09OIGZpbGVzWzBdLgoKVGhpcyBkb2Vz
bid0IG1ha2UgbXVjaCBzZW5zZSB0byBtZS4gSXQncyBub3cgcG9zc2libGUgdG8gY3JlYXRlIHNl
cGFyYXRlIEpTT04KZmlsZXNbMV0sIGJ1dCBub3QgdGhlIGFtYWxnYW1hdGVkIG9uZT8gVGhlcmUg
aXMgc29tZXRoaW5nIHdyb25nIHdpdGggdGhpcwpyZWFzb25pbmcuCgo+IEknZCBiZSBpbiBmYXZv
ciByZXdvcmtpbmcgKHVuaWZ5aW5nKSB0aGUgdGFyZ2V0IHNwZWNpZmljIGNvZGUgaW5zdGVhZCBv
Zgo+IGV4dGVuZGluZyB0aGUgc2NyaXB0IGxvZ2ljIHRvIGhhbmRsZSBjb3JuZXIgY2FzZXMuIEF0
IGxlYXN0IGlmIHJld29ya2luZyBpcwo+IHNvbWV0aGluZyB3aGF0IHNob3VsZCBiZSBkb25lIGFu
eXdheS4KClN1cmUsIHBhdGNoZXMgYXJlIGFsd2F5cyB3ZWxjb21lIGFuZCB1bmlmaWNhdGlvbiBp
cyBncmVhdCBhbmQgbmVlZGVkLCBidXQgSQp0aGluaywgdGhhdCBmaXhpbmcgdGhhdCBJTlBVVF9E
SVIgdmFyaWFibGUgb2YgeW91cnMgd291bGQgYmUgbG93ZXIgaGFuZ2luZwpmcnVpdC4KCj4gSSB0
cmllZCBhZGRpbmcgdGhpbmdzIGxpa2UgYHx8IGV4aXQgMWAgYnV0IG1ha2Ugc3R1YmJvcm5seSBr
ZWVwcyBnb2luZy4gQ2FuCj4geW91IGhlbHAgbWUgb3V0IGhlcmUgcGxlYXNlPwoKTG9va2luZyBh
dCB0aGUgbG9nIEkgc2VlIChpZ25vcmVkKToKCiAvb3BlbndydC5naXQvc2NyaXB0cy9qc29uX2Fk
ZF9pbWFnZV9pbmZvLnB5OiBsaW5lIDE6IGJvcmtlbjogY29tbWFuZCBub3QgZm91bmQKIE1ha2Vm
aWxlOjIzNTogcmVjaXBlIGZvciB0YXJnZXQgJy9vcGVud3J0LmdpdC9iaW4vdGFyZ2V0cy9pbXg2
L2dlbmVyaWMvb3BlbndydC1pbXg2LWFwYWxpcy1zcXVhc2hmcy5zeXN1cGdyYWRlLmJpbicgZmFp
bGVkCiBtYWtlWzVdOiBbL29wZW53cnQuZ2l0L2Jpbi90YXJnZXRzL2lteDYvZ2VuZXJpYy9vcGVu
d3J0LWlteDYtYXBhbGlzLXNxdWFzaGZzLnN5c3VwZ3JhZGUuYmluXSBFcnJvciAxMjcgKGlnbm9y
ZWQpCgpXaGljaCBsZWFkcyB0byBmb2xsb3dpbmcgaW4gdGhlIGluY2x1ZGUvaW1hZ2UubWs6Cgog
LklHTk9SRTogJChCSU5fRElSKS8kKGNhbGwgSU1BR0VfTkFNRSwkKDEpLCQoMikpCgo+ID4gPiAr
b3V0cHV0X2pzb24gPSB7fQo+ID4gPiArCj4gPiA+ICthc3NlcnQgdGFyZ2V0X2RpciwgIlRhcmdl
dCBkaXJlY3RvcnkgcmVxdWlyZWQiCj4gPiA+ICsKPiA+ID4gK2ZvciBqc29uX2ZpbGUgaW4gaW5w
dXRfZGlyLmdsb2IoIiouanNvbiIpOgo+ID4gPiArICAgIHByb2ZpbGVfaW5mbyA9IGpzb24ubG9h
ZHMoanNvbl9maWxlLnJlYWRfdGV4dCgpKQo+ID4gPiArICAgIGlmIG5vdCBvdXRwdXRfanNvbjoK
PiA+ID4gKyAgICAgICAgb3V0cHV0X2pzb24gPSB7Cj4gPiA+ICsgICAgICAgICAgICAibWV0YWRh
dGFfdmVyc2lvbiI6IDEsCj4gPiA+ICsgICAgICAgICAgICAidGFyZ2V0IjogcHJvZmlsZV9pbmZv
WyJ0YXJnZXQiXSwKPiA+ID4gKyAgICAgICAgICAgICJ2ZXJzaW9uX2NvbW1pdCI6IHByb2ZpbGVf
aW5mb1sidmVyc2lvbl9jb21taXQiXSwKPiA+ID4gKyAgICAgICAgICAgICJ2ZXJzaW9uX251bWJl
ciI6IHByb2ZpbGVfaW5mb1sidmVyc2lvbl9udW1iZXIiXSwKPiA+ID4gKyAgICAgICAgICAgICJw
cm9maWxlcyI6IHt9LAo+ID4gPiArICAgICAgICB9Cj4gPiBJJ20gbm90IGEgUHl0aG9uaXN0YSwg
YnV0IHBlcmhhcHMgeW91IHdhbnQgdG8gaW5pdCB0aGUgb3V0cHV0X2pzb24gZGljdCBqdXN0IGEK
PiA+IGZldyBsaW5lcyBhYm92ZSBhbmQgZ2V0IHJpZCBvZiB0aGF0IHVubmVjZXNhcnkgaWYuCj4K
PiBUaGUgYHByb2ZpbGVfaW5mb2AgdmFyaWFibGUgaXMgb25seSBhdmFpbGFibGUgYWZ0ZXIgcmVh
ZGluZyB0aGUgZmlyc3QgSlNPTgo+IHByb2ZpbGUgYW5kIHRoZXJlZm9yZSBpbiB0aGUgbG9vcC4K
CkluZGVlZCwgbWFraW5nIG1lIGNvbmZ1c2VkLCBoaWRpbmcgdW5oYW5kbGVkIGNvcm5lciBjYXNl
IGFzIHdlbGwsIGxpa2UgZm9yCmV4YW1wbGUgbm93LCB3aGVyZSB5b3UncmUgcHJvZHVjaW5nIGB7
fWAgaW5zdGVhZCBvZiBleHBlY3RlZCBvciByYXRoZXIgY29ycmVjdApgeydwcm9maWxlcyc6IHt9
LCAnbWV0YWRhdGFfdmVyc2lvbic6IDF9YC4KCkkgd291bGQgd3JpdGUgaXQgYXMgZm9sbG93aW5n
OgoKb3V0cHV0X2pzb24gPSB7CiAgICAicHJvZmlsZXMiOiB7fSwKICAgICJtZXRhZGF0YV92ZXJz
aW9uIjogMSwKfQoKZGVmIGFkZF90YXJnZXRfaW5mbyhvanMsIGpzKToKICAgIGlmICd0YXJnZXQn
IGluIG9qczoKICAgICAgICByZXR1cm4KCiAgICBvanNbInRhcmdldCJdID0ganNbInRhcmdldCJd
CiAgICBvanNbInZlcnNpb25fY29tbWl0Il0gPSBqc1sidmVyc2lvbl9jb21taXQiXQogICAgb2pz
WyJ2ZXJzaW9uX251bWJlciJdID0ganNbInZlcnNpb25fbnVtYmVyIl0KCmRlZiBhZGRfcHJvZmls
ZV9pbmZvKG9qcywganMpOgogICAgcHJvZmlsZSA9IHsKICAgICAgICAiaW1hZ2VzIjoganNbImlt
YWdlcyJdLAogICAgICAgICJ0aXRsZXMiOiBqc1sidGl0bGVzIl0sCiAgICAgICAgInN1cHBvcnRl
ZF9kZXZpY2VzIjoganNbInN1cHBvcnRlZF9kZXZpY2VzIl0KICAgIH0KICAgIG9qc1sicHJvZmls
ZXMiXVtqc1siaWQiXV0gPSBwcm9maWxlCgpmb3IganNvbl9maWxlIGluIFBhdGgob3MuZ2V0Y3dk
KCkpLmdsb2IoIiouanNvbiIpOgogICAganMgPSBqc29uLmxvYWRzKGpzb25fZmlsZS5yZWFkX3Rl
eHQoKSkKICAgIGFkZF90YXJnZXRfaW5mbyhvdXRwdXRfanNvbiwganMpCiAgICBhZGRfcHJvZmls
ZV9pbmZvKG91dHB1dF9qc29uLCBqcykKCnByaW50KGpzb24uZHVtcHMob3V0cHV0X2pzb24sIHNl
cGFyYXRvcnM9KCIsIiwgIjoiKSkpCgo+IGpzb24uZHVtcHMob3V0cHV0X2pzb24sIHNvcnRfa2V5
cz1UcnVlLCBpbmRlbnQ9IiAgIikKCkJUVyBJJ3ZlIGp1c3Qgbm90aWNlZCB0aGF0LCB3aHkgZG8g
eW91IG5lZWQgdG8gcHJvZHVjZSBodW1hbiByZWFkYWJsZSBKU09OPwoKMS4gaHR0cHM6Ly9kb3du
bG9hZHMub3BlbndydC5vcmcvc25hcHNob3RzL3RhcmdldHMvaW14Ni9nZW5lcmljL29wZW53cnQt
aW14Ni1hcGFsaXMuanNvbgoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
