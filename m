Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA51159A09
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 20:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dHU23eOGoWdsZ3YYzSOj2gPMsfZ21BhR5a5F4IPlwMs=; b=HreBPQgwOYYeeSwPAjrZa3b58c
	RkL8oUip7zXqfmZbTxxtkSRFrKa+xKMjwEnEF6Y8hIb7IZYisPmB/b4bRlFhkUlIAKZHPR85GGz7g
	dcT0DQi5AM0EYR6HpbKHv11uhoDlEY34kUf1i2vgUtM484/goy+J+cn6upwPJM+GQB1ADPpUanS37
	lE5fL8aWNxjISalI+CNl/cIALhd3p1VfnFtcYJwhxY0PW8Sufpifpe6R/d7vvz5sv56Hz3ALDKgoU
	XFgobCs4HUExnplJeXyCTWVtNAkZ2wyb48nkI3m1j+tm9lH1dr6hAyQDH0Oumtgd8vkrYRYq3lXrr
	2wdbD5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1bYQ-0007x7-KO; Tue, 11 Feb 2020 19:50:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1bYK-0007wM-ND
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 19:50:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E47B34C81;
 Tue, 11 Feb 2020 20:50:33 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 32865736;
 Tue, 11 Feb 2020 20:50:22 +0100 (CET)
Date: Tue, 11 Feb 2020 20:50:22 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?UmVuw6k=?= van Dorst <opensource@vdorst.com>
Message-ID: <20200211195022.GF38853@meh.true.cz>
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
 <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_115036_904312_118BF988 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
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
Cc: openwrt-devel@lists.openwrt.org,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVuw6kgdmFuIERvcnN0IHZpYSBvcGVud3J0LWRldmVsIDxvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnPiBbMjAyMC0wMi0xMSAxNTo1OTo1Ml06CgpbYWRkaW5nIEtyaXN0aWFuIHRvIHRo
ZSBDYzogbG9vcF0KCj4gPiBMb29raW5nIGF0IHRoZSBjdXJyZW50IHVwc3RyZWFtIGRyaXZlciBp
bXBsZW1lbnRhdGlvbiwgaXQgc2VlbXMgbGlrZSB0aGUKPiA+IFRYL1JYIGZsb3cgY29udHJvbCBp
cyBlbmFibGVkIG9ubHkgaWYgdGhlIGZsb3cgY29udHJvbCBwYXVzZSBvcHRpb24gaXMKPiA+IHJl
c29sdmVkIGZyb20gdGhlIGRldmljZS9saW5rIHBhcnRuZXIgYWR2ZXJ0aXNlbWVudHMgKG9yIG90
aGVyd2lzZSBzZXQpLgo+ID4gCj4gCj4gV2l0aCB1cHN0cmVhbSB5b3UgbWVhbiBtYWlubGluZSA1
LjUga2VybmVsPwoKWWVzLCA1LjYtcmMxCgo+IEluIHRoZSBEVFMgdGhlIENQVSBwb3J0IGlzIGRl
ZmluZWQgYXMgYSBmaXhlZC1saW5rIHdpdGggcGF1c2UgZW5hYmxlZC4KPiBTbyB0aGUgcGF1c2Ug
Yml0cyBhcmUgYWx3YXlzIHJlc29sdmVkL3NldC4KCkkgc2VlWzFdIHBvcnRANiB3aXRoIGZpeGVk
LWxpbmssIHdpdGhvdXQgcGF1c2UgcHJvcGVydHkuCgo+IFRoZSBoYXJkd2FyZSBjYW4ndCBzZW5k
IHRoZSBmcmFtZXMgZmFzdCBlbm91Z2ggYmVjYXVzZSBvZiB0aGUgUEFVU0UgZnJhbWVzLAo+IG1h
eWJlIHRvIGEgc2xvd2VyIGRldmljZT8gVGhlIENQVSBpcyBmaWxsaW5nIHRoZSB0eCByaW5nIGZh
c3RlciB0aGVuIHRoZQo+IGhhcmR3YXJlIHNlbmRpbmcgaXQgYW5kIGV2ZW50dWFsbHkgQ1BVIG92
ZXJ0YWtlcyB0aGUgRE1BIGhlYWQuIFdoaWNoIGNhdXNlcyBhbgo+IGlzc3VlL3JhY2UvZGVhZGxv
Y2suCgpQcm9iYWJseSwgSSBkaWRuJ3QgdHJpZWQgdG8gcmVwcm9kdWNlIGl0IG9yIHBsYW5uaW5n
IHRvIGRvIHNvLgoKPiA+IERpc2FibGluZyB0aGUgZmxvdyBjb250cm9sIG9uIFBPUlQgNSBNQUMg
c2VlbXMgdG8gZml4IHRoaXMgaXNzdWVzIGFzIHRoZQo+ID4gcGF1c2UgZnJhbWVzIGFyZSB0aGVu
IGZpbHRlcmVkIG91dC4gV2hpbGUgYXQgaXQsIEknbSByZW1vdmluZyB0aGUgaWYKPiA+IGNvbmRp
dGlvbiBjb21wbGV0ZWx5IGFzIHN1Z2dlc3RlZCwgc2luY2UgdGhpcyBjb2RlIGlzIHJ1biBvbmx5
IG9uIG10NzYyMQo+ID4gU29DLCBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIGNoZWNrIGZvciB0aGUg
c2lsaWNvbiByZXZpc2lvbnMuCj4gPiAKPiAKPiBQb3J0IDYgaXMgY29ubmVjdGVkIHRvIHRoZSBm
aXJzdCBHTUFDIG9mIHRoZSBTT0MsIG5vdCBwb3J0IDUuCj4gU28gaXQgc2hvdWxkIGJlIFBPUlQg
NiBpbiB5b3VyIGRlc2NyaXB0aW9uIGFsc28gCgpPaywgSSB0b29rIHRoYXQgIlBNQ1JfUDUvUE9S
VCA1IE1BQyBDb250cm9sIFJlZ2lzdGVyIiBmcm9tCk1UNzYyMV9Qcm9ncmFtbWluZ0d1aWRlX0dT
V192MDEucGRmLiBDb3VsZG50IGZpbmQgYW55dGhpbmcgYWJvdXQgUDYsIGl0J3MKcXVpdGUgY29u
ZnVzaW5nLgoKMS4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNi1yYzEvc291
cmNlL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtZHRzL210NzYyMS5kdHNpI0w0ODkKCi0tIHluZXp6
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
