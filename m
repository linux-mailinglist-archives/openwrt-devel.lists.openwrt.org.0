Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EFB2A6CC
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 21:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxAmZnrk2seSWqnAS/Das7PMGydZe/W6rnxaHFx9nqI=; b=N8907OcSzy0ceX
	RbdQCMgiQXqvixvthyoVX1WrcD+v2BDBYScXt4n5XyvZEwIcfX85WijJPT2zBeIZEoVkymvcHObtj
	RpQMNpRnhuPEupzmOLn88NaZRB9pco/S5tgp1q+ubKEggrywan03qK7BHiKlai7rnp/XtPsX84cxS
	mcf8G8JECBuTxkZgq7/bdtHkukj38Zb8xtbLV6nlPGEwRKfapm9lO/FBLGED2lAczQMHFMrb6zpS/
	d8Pz/NfO5Z8IgrVlA/ahBVyI9lSr03PhIsuGc5xfyVNQVNLqOfs83idu8MLcwld/2ukd8nhOcdTNL
	6MS0OQDl1Qd5ieaGzNIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUcYw-0006Ql-00; Sat, 25 May 2019 19:42:38 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::5])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUcYl-0006QG-HZ
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 19:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1558813343;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=a+YSrMiXpzEddHCmFheWxZeNuU+r3pBdweqCm0FlL80=;
 b=EBnx7Si/jhH4YD4LKtN0Xnh8+IJwRSf9Peoqlf/jRIYXbhXsDQ/qUZrzVu8vd9wCLM
 09HweSGX1aTqxkmCY6ZmpfJqGltjtHT5IY7AJDupyhqPYYFQM8Zmxbnk2q4feduv5ara
 ra/wJ+EdqloARC3C8rhkThDzaEtF9teyE4Z1Jx1C32MTlUbCzlS5NI6lrLGX5B87WCa2
 Hvx0Uhil/TK2FwyJ2Mpa6YoJJwJje6BPle5gqZWz0Bc0U1J2wuUIB8+iXOKVXiqH5AAP
 WJyWFmLqkz2eCP3v0L9Mn1VgBnmJ+QFVw/mnhftOE5pkvo90zOQFKk8OqQRtpX0fmqmC
 vAuw==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaL/Sfy7ku"
X-RZG-CLASS-ID: mo00
Received: from positron.chronox.de by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id R0373fv4PJgJa3D
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 25 May 2019 21:42:19 +0200 (CEST)
From: Stephan =?ISO-8859-1?Q?M=FCller?= <smueller@chronox.de>
To: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sat, 25 May 2019 21:42:19 +0200
Message-ID: <7720302.cQ4CF4HUsA@positron.chronox.de>
In-Reply-To: <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <20190521145502.GB4606@meh.true.cz>
 <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_124228_970385_CD98176B 
X-CRM114-Status: GOOD (  27.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW0gU2Ftc3RhZywgMjUuIE1haSAyMDE5LCAxMjo0MzoyNSBDRVNUIHNjaHJpZWIgRXRpZW5uZSBD
aGFtcGV0aWVyOgoKSGkgRXRpZW5uZSwKCj4gSGkgUGV0ciwKPiAKPiBKdXN0IHRvIGJlIGNsZWFy
IGknbSAxMDAlIGluIGZhdm9yIG9mIHlvdXIgZWZmb3J0IHRvIGhhdmUgcmFuZG9tIHBvb2wKPiBp
bml0IGRvbmUgZmFzdCBvbiBhbGwgZGV2aWNlcywKPiBhbmQgeW91ciBzb2x1dGlvbiwgYmFzZWQg
b24gU3RlcGhhbiBhd3NvbWUgd29yaywgc2VlbXMgcmVhbGx5IGdvb2QKPiBJIGp1c3Qgd2FudCB0
byBiZSBzdXJlIHdlIGRvbid0IG1ha2Ugc29tZSBkZXZpY2VzIHdvcnNlIC8gYXJlIG5vdAo+IG1p
c3Npbmcgc29tZXRoaW5nCj4gCj4gTGUgbWFyLiAyMSBtYWkgMjAxOSDDoCAxNjo1NSwgUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4gYSDDqWNyaXQgOgo+ID4gRXRpZW5uZSBDaGFtcGV0aWVy
IDxjaGFtcGV0aWVyLmV0aWVubmVAZ21haWwuY29tPiBbMjAxOS0wNS0yMSAxNDo1NTo0Ml06Cj4g
PiAKPiA+IEhpLAo+ID4gCj4gPiA+ID4gRmlyc3QsIHNpbXBseSB3cml0aW5nIHRvIC9kZXYvdXJh
bmRvbSBkb2VzIG5vdCBpbmNyZWFzZSB0aGUga2VybmVsJ3MKPiA+ID4gPiBlbnRyb3B5IGNvdW50
LCB0aGlzIGNhc3VzZXMgcHJvY2Vzc2VzIG9idGFpbmluZyByYW5kb21uZXNzIHRvIGJsb2NrLgo+
ID4gPiA+IFBhcnRpY3VsYXJseSBwcm9jZXNzZXMgdXNpbmcgT3BlblNTTCdzIFJBTkRfYnl0ZXMo
KSB3aWxsIGJsb2NrIHVudGlsCj4gPiA+ID4gdGhlCj4gPiA+ID4ga2VybmVsIGVtaXRzICdyYW5k
b206IGNybmcgaW5pdCBkb25lJy4gVGhpcyBjYW4gdGFrZSB1cHdhcmRzIG9mIHR3ZW50eQo+ID4g
PiA+IG1pbnV0ZXMuCj4gPiA+IAo+ID4gPiAyMCBtaW51dGVzIHNlZW1zIGV4Y2Vzc2l2ZSwgaXNu
J3Qgb25lIG9mIHRoZSBwcm9jZXNzIGJsb2NraW5nIGJvb3QgPwo+ID4gCj4gPiBwbGVhc2Ugbm90
ZSwgdGhhdCB0aGlzIGlzIHRpbWUgYXMgbWVhc3VyZWQgYnkga2VybmVsIChJIGtub3cgaXQncwo+
ID4gdXNlcnNwYWNlCj4gPiBzdGFydmluZyB0aGUga2VybmVsIGVudHJvcHkgcG9vbCwgYnV0IHN0
aWxsKS4gSSd2ZSBwZXJzb25hbGx5IG1lYXN1cmVkIDE4Cj4gPiBtaW51dGVzIG9uIG15IEFwYWxp
cyBib2FyZCAoaW14NilbMV0uCj4gPiAKPiA+ICBpLm14NiAoRnJlZXNjYWxlIGkuTVg2IFF1YWQv
RHVhbExpdGUpCj4gPiAgCj4gPiAgIFsgICAgMy4yODE2MzddIHJhbmRvbTogZmFzdCBpbml0IGRv
bmUKPiA+ICAgWyAxMTIwLjM5NDY3Ml0gcmFuZG9tOiBjcm5nIGluaXQgZG9uZSAoeWVhaCwgMTgg
bWludXRlcykKPiAKPiBJJ20gbm90IHNheWluZyBpdCdzIG5vdCBoYXBwZW5pbmcsIEknbSB3b25k
ZXJpbmcgaWYgdGhlIGJvb3QgcHJvY2Vzcwo+IGlzIG5vdCBibG9ja2VkIGVhcmx5IGJ5IGEgcHJv
Y2VzcyBzdHVjayBvbiBnZXRyYW5kb20oKQo+IGFuZCB0aGVuIG5vdGhpbmcgcnVucyBvbiByb3V0
ZXIgc28gbm8gZW50cm9weSBpcyBwcm9kdWNlZCwgc28gdGhlCj4gcHJvY2VzcyBjb250aW51ZSB0
byBiZSBzdHVjawoKV2VsbCwgc29tZSBsaWJyYXJpZXMgc3RpbGwgdXNlIC9kZXYvdXJhbmRvbSBh
bmQgYXJlIG5vdCBibG9ja2VkLiBCZXNpZGVzLCBpZiAKeW91IHVzZSBzeXN0ZW1kIHRoYXQgaW5p
dGlhbGl6ZXMgdGhlIHN5c3RlbSwgaXQgdXNlcyAvZGV2L3VyYW5kb20uIENvbXBpbGUgCnlvdXIg
a2VybmVscyB3aXRoIENPTkZJR19XQVJOX0FMTF9VTlNFRURFRF9SQU5ET00sIHlvdSB3aWxsIHNl
ZSBrZXJuZWwgcmVwb3J0cyAKd2hpY2ggcHJvY2Vzc2VzIHNlZWQgZnJvbSAvZGV2L3VyYW5kb20g
ZXZlbiB3aGlsZSBpdCBpcyBub3QgZnVsbHkgcHJvdmlkZWQgCndpdGggZW50cm9weS4KPiAKPiA+
ID4gT25lIG9mIHRoZSBpc3N1ZSBpcyB0aGF0IGlmIHlvdSB0cnkgdG8gZ2VuZXJhdGUgYSBuZXcg
c2VlZCwgeW91IGFyZQo+ID4gPiBqdXN0IHJlYWRpbmcgYSBoYXNoIG9mIHRoZSBzZWVkIHlvdSBp
bmplY3RlZCBzZWNvbmRzIGVhcmxpZXIgd2l0aAo+ID4gPiBtYXliZSBmZXcgbmV3IGJpdHMgb2Yg
ZW50cm9weQo+ID4gCj4gPiBFeGFjdGx5LCB0aGF0J3Mgd2h5IGl0J3MgcmVjb21tZW5kZWRbMl0g
dG8gc2F2ZSBpdCBkdXJpbmcgRVZFUlkgc2h1dGRvd24sCj4gPiBzbyBpdCdzIGRpZmZlcmVudCBF
VkVSWSBib290Lgo+IAo+IEkga25vdyBhbmQgSSdtIGluIGZhdm91ciBvZiBpdCwgYnV0IHByb3Bl
ciBzaHV0ZG93biBpcyBub3QgYWx3YXlzIGEKPiB0aGluZyBvbiByb3V0ZXIsIHRoYXQgaXMgd2h5
IEkgd2VudCB3aXRoIGdldHJhbmRvbSgpIGF0IHRoZSB0aW1lCj4gCj4gPiAgKiBFbnN1cmluZyB1
bnByZWRpY3RhYmlsaXR5IGF0IHN5c3RlbSBzdGFydHVwCj4gPiAgKiA9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ID4gICoKPiA+ICAqIFdoZW4gYW55IG9wZXJh
dGluZyBzeXN0ZW0gc3RhcnRzIHVwLCBpdCB3aWxsIGdvIHRocm91Z2ggYSBzZXF1ZW5jZQo+ID4g
ICogb2YgYWN0aW9ucyB0aGF0IGFyZSBmYWlybHkgcHJlZGljdGFibGUgYnkgYW4gYWR2ZXJzYXJ5
LCBlc3BlY2lhbGx5Cj4gPiAgKiBpZiB0aGUgc3RhcnQtdXAgZG9lcyBub3QgaW52b2x2ZSBpbnRl
cmFjdGlvbiB3aXRoIGEgaHVtYW4gb3BlcmF0b3IuCj4gPiAgKiBUaGlzIHJlZHVjZXMgdGhlIGFj
dHVhbCBudW1iZXIgb2YgYml0cyBvZiB1bnByZWRpY3RhYmlsaXR5IGluIHRoZQo+ID4gICogZW50
cm9weSBwb29sIGJlbG93IHRoZSB2YWx1ZSBpbiBlbnRyb3B5X2NvdW50LiAgSW4gb3JkZXIgdG8K
PiA+ICAqIGNvdW50ZXJhY3QgdGhpcyBlZmZlY3QsIGl0IGhlbHBzIHRvIGNhcnJ5IGluZm9ybWF0
aW9uIGluIHRoZQo+ID4gICogZW50cm9weSBwb29sIGFjcm9zcyBzaHV0LWRvd25zIGFuZCBzdGFy
dC11cHMuCj4gPiAgCj4gPiAgWy4uLl0KPiA+ICAKPiA+ICAqIEV2ZW4gd2l0aCBjb21wbGV0ZSBr
bm93bGVkZ2Ugb2YgdGhlIHN0YXJ0LXVwIGFjdGl2aXRpZXMsIHByZWRpY3RpbmcgdGhlCj4gPiAg
KiBzdGF0ZSBvZiB0aGUgZW50cm9weSBwb29sIHJlcXVpcmVzIGtub3dsZWRnZSBvZiB0aGUgcHJl
dmlvdXMgaGlzdG9yeSBvZgo+ID4gIHRoZSAqIHN5c3RlbS4KPiA+IAo+ID4gV2UncmUgbWFraW5n
IGl0IGVhc2llciBmb3IgdGhlIHBvdGVudGlhbCBhZHZlcnNhcnksIGFyZW4ndCB3ZT8gV2UncmUK
PiA+IGN1cnJlbnRseSBmZWVkaW5nIHN0YXRpYyB1cmFuZG9tLnNlZWQgZmlsZSAoZ2VuZXJhdGVk
IGR1cmluZyBmaXJzdCBib290KQo+ID4gdG8ga2VybmVsIGV2ZXJ5IG90aGVyIGJvb3QsIGluIHNv
bWUgY2FzZXMgaXQgbWlnaHQgcmVzdWx0IGluIHRoZSBzYW1lCj4gPiBmaWxlIGZvciB0aGUgbGlm
ZXRpbWUgb2YgdGhlIGRldmljZS4gSSByZWFsbHkgbWlzcyBhbnkgcmFuZG9tbmVzcyBpbgo+ID4g
dGhpcy4KPiAKPiBTdGFydGluZyBvbiBzZWNvbmQgYm9vdCwgd2UgYXJlIHN1cmUgZWFjaCByb3V0
ZXIgc3RhdGUgaXMgZGlmZmVyZW50LAo+IGJ1dCBlYWNoIGJvb3QgYXJlIHByZXR0eSBzaW1pbGFy
IEkgYWdyZWUKPiAKPiA+ID4gSnVzdCBmb3IgdGhlIHJlY29yZCwgdGhpcyBpcyB0aGUgZGVmYXVs
dCBzZXR0aW5nLAo+ID4gCj4gPiBJIGtub3csIHRoYXQncyB3aHkgSSdtIHByb3Bvc2luZyByZW1v
dmFsIGZyb20gdGhlIGRlZmF1bHQgYXRoNzkgaW1hZ2VzLAo+ID4gYmVjYXVzZSBJIHRoaW5rLCB0
aGF0IGl0J3Mgd3JvbmcuIFNob3VsZCB0aGUgdXNlciBldmVyIG5lZWQgdXJhbmRvbS1zZWVkLAo+
ID4gdGhlbiBpdCdzIGp1c3Qgb25lIG9wa2cgaW5zdGFsbCBhd2F5Lgo+ID4gCj4gPiA+IHlvdSBj
YW4gY2hhbmdlIHlvdXIgY29uZmlnIHRvIGdlbmVyYXRlIGEgbmV3IG9uZSBhdCBlYWNoIGJvb3QK
PiA+IAo+ID4gSSBrbm93LCBidXQgd2hvIGRvZXMgaXQ/IEkgZXhwZWN0IGJlc3QgcG9zc2libGUg
c2VjdXJlIGNvbmZpZ3VyYXRpb24gYnkKPiA+IGRlZmF1bHQuCj4gPiAKPiA+ID4gKHRoZSB3b3Jy
eSB3YXMgdGhhdCB3ZSB3b3VsZCB3ZWFyIG9mZiB0aGUgZmxhc2ggdG9vIGZhc3QpCj4gPiAKPiA+
IEkgdW5kZXJzdGFuZCB0aGUgZHJhd2JhY2tzLCB0aGF0J3Mgd2h5IEkgdGhpbmssIHRoYXQgaXQg
ZG9lc24ndCBtYWtlIG11Y2gKPiA+IHNlbnNlIHRvIHVzZSBpdCwgaWYgaXQncyBub3QgZ29vZCBl
bm91Z2ggdG8gYmUgdXNlZCBpbiBkZWZhdWx0L3NoaXBwZWQKPiA+IGNvbmZpZ3VyYXRpb24uCj4g
PiAKPiA+ID4gd2h5IG5vdCB1c2Ugaml0dGVyZW50cm9weSBSTkcgdGhhdCBpcyBpbiBrZXJuZWwg
c2luY2UgNC4yID8KPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1p
dC9iYjU1MzBlNDA4MjQ0NmFhYzNhM2Q2OTc4MGNkNGRiCj4gPiA+IGZhNDUyMDAxMz4gCj4gPiBJ
IHN0YXJ0ZWQgZXhwZXJpbWVudHMgd2l0aCBrbW9kLWNyeXB0by1ybmcgcGFja2FnZSB3aGljaCBh
bHJlYWR5IGNvbnRhaW5zCj4gPiBqaXR0ZXJlbnRyb3B5LCBkcmJnLCBrcm5nIGFuZCBybmcga2Vy
bmVsIG1vZHVsZXMsIGJ1dCBpdCBkaWRuJ3QgaW1wcm92ZWQKPiA+IHRoZSBsb25nIGJvb3Rpbmcg
dGltZXMgZm9yIG1lIG9uIGF0aDc5LiAgT3RoZXIgcmVhc29uIHdhcyBzaXplIG9mIHRoaXMKPiA+
IGtlcm5lbCBtb2R1bGUocykgYXMgdGhleSBwcm92aWRlIG11Y2ggbW9yZSBmdW5jdGlvbmFsaXR5
IG9mIGNvdXJzZS4KPiAKPiBJIHRoaW5rIGJlZm9yZSBhbnlvbmUgbWVyZ2UgdGhpcyAoSSdtIG5v
dCBhIGNvcmUgZGV2KSwgd2UgbmVlZCB0bwo+IGV4cGxhaW4gd2h5IHlvdXIgdXNlciBzcGFjZSB2
ZXJzaW9uIGFuZCB0aGUga2VybmVsIG1vZHVsZSB2ZXJzaW9uCj4gYmVoYXZlIGRpZmZlcmVudGx5
Cj4gSXMgdGhlIGtlcm5lbCBtb2R1bGUgdW5kZXJlc3RpbWF0aW5nIGVudHJvcHkgPyBJcyB5b3Ug
dXNlciBzcGFjZQo+IHZlcnNpb24gb3ZlciBlc3RpbWF0aW5nIGVudHJvcHkgPwoKQWdhaW4sIHRo
ZSBpbiBrZXJuZWwgdmVyc2lvbiBpcyAqb25seSogdXNlZCBmb3Igc2VlZGluZyB0aGUgaW4ta2Vy
bmVsIERSQkcgCih1bmZvcnR1bmF0ZWx5KS4gVGhpcyBEUkJHIGFuZCB0aGUgaW4ta2VybmVsIEpp
dHRlciBSTkcgaGFzIG5vIHJlbGF0aW9uc2hpcCAKd2l0aCAvZGV2L3JhbmRvbSBvciAvZGV2L3Vy
YW5kb20gb3IgZ2V0cmFuZG9tLiBZb3UgY291bGQgY2FsbCB0aGUgaW4ta2VybmVsIApEUkJHIHdp
dGggQUZfQUxHIGxpa2UgbGlia2NhcGkgYWxsb3dzIHlvdSB0byBkbyBbMV0uCgpJZiB5b3UgYXJl
IGludGVyZXN0ZWQsIEkgd3JvdGUgYSBjb21wbGV0ZSByZXBsYWNlbWVudCBpbXBsZW1lbnRhdGlv
biBvZiB0aGUgCmN1cnJlbnQgL2Rldi9yYW5kb20gb3IgL2Rldi91cmFuZG9tIGF2YWlsYWJsZSBh
dCBbMl0uIEl0IHVzZXMgdGhlIGluLWtlcm5lbCAKSml0dGVyIFJORywgaXQgaGFzIHBsdWdnYWJs
ZSBQUk5HcyBhbmQgb3RoZXIgbG9naWMgcmVsZXZhbnQgZm9yLCBzYXksIEZJUFMgCjE0MC0yLiBU
aGlzIGltcGxlbWVudGF0aW9uIHdvdWxkIG5vdCByZXF1aXJlIHlvdSB0byBoYXZlIHlvdXIgc2Vw
YXJhdGUgdXNlciAKc3BhY2UgZW50cm9weSBkYWVtb24gdGhhdCBpcyBkaXNjdXNzZWQgaGVyZS4g
WWV0LCB0aGlzIGNvZGUgd2FzIHJlamVjdGVkLgoKWzFdIGh0dHA6Ly93d3cuY2hyb25veC5kZS9s
aWJrY2FwaS5odG1sCgpbMl0gaHR0cDovL3d3dy5jaHJvbm94LmRlL2xybmcuaHRtbAoKQ2lhbwpT
dGVwaGFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwK
