Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5F91B9492
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 00:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/g5GFzQ4ysx+ZQ3fyYAzcMBuSzg1UKw0KL1cbYFFh+8=; b=QOCfbm1CmZ4fRI
	hDhaFr5DU6o/hX1a1xFgPg9ejkgrUTrAS/8D22A7Sk0avOpn6aWYvGmtKt1h7IxLCkYdiDgaQW+gp
	Brnhy/6lUt/s6xVFujwcPKT7gL+dfsvzefKL6dDAgwooKlUYDTM3RNLdnsMc4COxb39yJaSQPbtjB
	M+srtIDZFq1a/JCVU+0I9K7iTErdh1mVTT2r66sITrAEwqnGlw6mhVxyRFpuLUvLtc0qCTB26hhFJ
	wLHBX0VHYLAi+iaG4S+3tZKPeBFwqyfkWQynQSM4vhC5Iz0dfkYym9gUa0NJTyKpZ4B1YD2QCiTTf
	2+vgk9+YtLfFDc3VCPqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSq5I-0007kZ-26; Sun, 26 Apr 2020 22:49:12 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSq57-0007iY-FZ
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 22:49:03 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 48011FF804;
 Sun, 26 Apr 2020 22:48:53 +0000 (UTC)
Message-ID: <4f9abf14ffa2706d630bf9609f3f346e4f43154f.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: Hannu Nyman <hannu.nyman@iki.fi>, openwrt-devel@lists.openwrt.org
Date: Sun, 26 Apr 2020 12:48:50 -1000
In-Reply-To: <5724f00f-24a2-31d9-cb4d-bdd29f8f8c17@iki.fi>
References: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
 <5724f00f-24a2-31d9-cb4d-bdd29f8f8c17@iki.fi>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_154901_652717_5D3D52F6 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Uncompress image: trailing garbage ignored
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
Cc: rafal@milecki.pl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBUaHUsIDIwMjAtMDQtMjMgYXQgMjM6MjkgKzAzMDAsIEhhbm51IE55bWFuIHdyb3Rl
Ogo+IFcuIE1pY2hhZWwgUGV0dWxsbyBraXJqb2l0dGkgMjMuNC4yMDIwIGtsbyAxOS41MDoKPiA+
IEkgaGF2ZSBzdGFydGVkIHRvIG5vdGljZSBhIGd1bnppcCB3YXJuaW5nIHdoZW4gZGVjb21wcmVz
c2luZyB0aGUKPiA+IE9wZW5XcnQgaW1hZ2VzIEkgYnVpbGQuIFRoaXMgaXMgd2l0aCBtYXN0ZXIg
ZGYyN2U5NDk6Cj4gPiAKPiA+IGd1bnppcCAgb3BlbndydC9iaW4vdGFyZ2V0cy94ODYvNjQvb3Bl
bndydC14ODYtNjQtZ2VuZXJpYy1leHQ0LQo+ID4gY29tYmluZWQuaW1nLmd6IC1jID4vZGV2L251
bGwKPiA+IGd6aXA6IG9wZW53cnQtYXF1aW5hcy1naXQvYmluL3RhcmdldHMveDg2LzY0L29wZW53
cnQteDg2LTY0LWdlbmVyaWMtCj4gPiBleHQ0LWNvbWJpbmVkLmltZy5nejogZGVjb21wcmVzc2lv
biBPSywgdHJhaWxpbmcgZ2FyYmFnZSBpZ25vcmVkCj4gPiAKPiA+IEFzaWRlIGZyb20gdGhlIHdh
cm5pbmcsIGd1bnppcCBleGl0cyB3aXRoIGEgY29kZSBvZiAyLiBUaGUgZ3VuemlwIG1hbgo+ID4g
cGFnZSBpbmRpY2F0ZXMgdGhhdCBhbiBleGl0IGNvZGUgb2YgMiBpbmRpY2F0ZXMgYSB3YXJuaW5n
Lgo+ID4gCj4gPiBJcyB0aGlzIGEgcmVzdWx0IG9mIGFuIGludGVuZGVkIGNoYW5nZT8gU2hvdWxk
IEkgZXhwZWN0IHRoaXMgdG8KPiA+IGNvbnRpbnVlPyBBcmUgd2Ugc25lYWtpbmcgYSBoYXNoIG9y
IHNpZ25hdHVyZSBpbiB0aGVyZT8gSWYgc28sIEkKPiA+IHN1cHBvc2UgSSB3aWxsIGFkanVzdCBz
b21lIG9mIHRoZSBzY3JpcHRzIEkgdXNlIHRvIGFjY291bnQgZm9yIHRoZQo+ID4gbm9uLXplcm8g
ZXhpdCBjb2RlLgo+IAo+IExpa2VseSB3ZSBhcmUgYXR0YWNoaW5nIGEgc2lnbmF0dXJlIHNpbmNl
IGNvbW1pdCBmODE0MTIxNjAgYSB3ZWVrIGFnbzoKPiAKPiBodHRwczovL2dpdC5vcGVud3J0Lm9y
Zy8/cD1vcGVud3J0L29wZW53cnQuZ2l0O2E9Y29tbWl0ZGlmZjtoPWY4MTQxMjE2MDBlNWNmNDNm
ZDc1ZmU5M2U1YjFiNTRmNjViNzFiY2QKPiAKClRoZSBzeXN1cGdyYWRlIHByb2Nlc3MgYXV0b21h
dGljYWxseSBoYW5kZWxzIGNvbXByZXNzZWQgaW1hZ2VzLCBob3dldmVyIHRoZQp2YWxpZGF0aW9u
IGRvZXMgbm90LiBDdXJyZW50bHkgZnd0b29sIHZhbGlkYXRpb24gaW4gL3Vzci9saWIvZnd0b29s
LnNoIHJlYWRzIHRoZQpzeXN1cGdyYWRlKC5neikgYXMgaXM6CgppZiAhIGZ3dG9vbCAtcSAtcyAv
dG1wL3N5c3VwZ3JhZGUudWNlcnQgIiQxIjsgdGhlbgoKQSBmaXggY291bGQgYmUgdG8gdXNlICJh
cHBlbmQtbWV0YWRhdGEgfCBnemlwIiBmb3IgdGhlIGZpcm13YXJlIGltYWdlcyBhbmQgdGhlbgp1
bnBhY2sgdGhlIGZpcm13YXJlIGJlZm9yZSB2YWxpZGF0aW5nIGl0J3Mgc2lnbmF0dXJlIGFuZCBt
ZXRhZGF0YSwgZS5nLiB3aXRoIHRoZQpmb2xsb3dpbmcgY29tbWFuZCBpbiBmd3Rvb2wuc2gKCnNv
dXJjZSAvdXNyL2Jpbi9jb21tb24uc2gKaWYgISBnZXRfaW1hZ2UgIiQxIiB8IGZ3dG9vbCAtcSAt
cyAvdG1wL3N5c3VwZ3JhZGUudWNlcnQgLTsgdGhlbgoKVGhpcyB3b3JrZWQgaW4gbXkgcWVtdSB0
ZXN0LCBub3QgdGVzdGVkIG9uIGEgcmVhbCBoYXJkd2FyZS4KClJhZmHFgiBNacWCZWNraSB3b3Jr
ZWQgcmVjZW50bHkgb24gdGhlIHZhbGlkYXRpb24sIG1heWJlIGhlIGNhbiBzaGFyZSBhbiBvcGlu
aW9uLgoKQmVzdCwKUGF1bAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
