Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D025E14CE2B
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 17:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JYqY9qRVUIXx+wzJiLa7r3fype80856uJCigtHuNIhg=; b=lYZiAn9T1FirK8DnsPkA/2nbup
	AC5yOCm83ghsZLIu5ZrT1PzwZswIqAmm5BmuZSYrSj3Z9H8JO9FSoVJFa15P4E6R7rdiIjrq1JzcS
	1mWWhuHrmbNbVTpBqxBxDzKweRBKQoarBf1jvAorgX3oewnpFwWWdSnWLyCy/ZkwQJUcnQs11LXwM
	9FlXTDx+QjG2EYpQcpTolUN/oXpKFvP3XGdUs3GrwhkY27tK9mb4Jg7F7kgxzqHAtdYtV1ElP7zTi
	7ATkkUvpfFhr/C9fVTo9aeAm97VZ/MY6xAUeT9IyCNamyVd5Slo66scDA1jNPMmST4DFILF1ILtij
	iG/EmoeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwq77-0007Qj-1t; Wed, 29 Jan 2020 16:22:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwq6i-0007I0-Mc
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 16:22:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7E5E937D2;
 Wed, 29 Jan 2020 17:22:22 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b79e8dd2;
 Wed, 29 Jan 2020 17:22:10 +0100 (CET)
Date: Wed, 29 Jan 2020 17:22:10 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200129162210.GA78186@meh.true.cz>
References: <20200122230022.16876-1-rosenp@gmail.com>
 <87h80mfukb.fsf@miraculix.mork.no>
 <CAKxU2N-BcqJp6jiKz7mjFN0BujjQOMEv39jSffxCEKuKhZg2Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-BcqJp6jiKz7mjFN0BujjQOMEv39jSffxCEKuKhZg2Qw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_082224_886038_FDBDEFC2 
X-CRM114-Status: GOOD (  10.37  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDIwLTAxLTI1IDE1OjA0OjAzXToKCkhp
IEJqw7hybiBhbmQgUm9zZW4sCgo+IE9uIFRodSwgSmFuIDIzLCAyMDIwIGF0IDEyOjI1IEFNIEJq
w7hybiBNb3JrIDxiam9ybkBtb3JrLm5vPiB3cm90ZToKPiA+ID4KPiA+ID4gLSAgICAgaWYgKChy
dF9zeXNjX3IzMihTWVNDX1JFR19DSElQX1JFVl9JRCkgJiAweEZGRkYpID09IDB4MDEwMSkgewo+
ID4gPiAtICAgICAgICAgICAgIC8qIChHRTEsIEZvcmNlIDEwMDBNL0ZELCBGQyBPTiwgTUFYX1JY
X0xFTkdUSCAxNTM2KSAqLwo+ID4gPiArICAgICBpZiAoKHJ0X3N5c2NfcjMyKFNZU0NfUkVHX0NI
SVBfUkVWX0lEKSAmIDB4RkZGRikgPj0gMHgwMTAxKSB7Cj4gPiA+ICsgICAgICAgICAgICAgLyog
KEdFMSwgRm9yY2UgMTAwME0vRkQsIEZDIE9GRiwgTUFYX1JYX0xFTkdUSCAxNTM2KSAqLwo+ID4g
PiAgICAgICAgICAgICAgIG10a19zd2l0Y2hfdzMyKGdzdywgMHgyMzA1ZTMwYiwgR1NXX1JFR19N
QUNfUDBfTUNSKTsKPiA+ID4gICAgICAgICAgICAgICBtdDc1MzBfbWRpb193MzIoZ3N3LCAweDM2
MDAsIDB4NWUzMGIpOwo+ID4gPiAgICAgICB9IGVsc2Ugewo+ID4KPiA+IElmIHRoYXQncyByZWFs
bHkgaGVscGluZyB0aGVuIEkgYmVsaWV2ZSBpdCB3b3VsZCBiZSB1c2VmdWwgdG8gYWRkIHNvbWUK
PiA+IHNvcnQgb2YgY2hpcF9yZXZfaWQgcHJpbnRrIGhlcmUuICBXb3VsZCBiZSBnb29kIHRvIGtu
b3cgd2hvIGhpdHMgdGhpcwo+ID4gYW5kIHdoeS4uLgoKSSBqdXN0IHF1aWNrbHkgc2tpbW1lZCB0
aHJvdWdoIHRoZSBjb2RlIGFuZCBpdCBzZWVtcyBsaWtlIHdlJ3ZlIHRoYXQKaW5mb3JtYXRpb24g
YWxyZWFkeSBpbiBkbWVzZzoKCiBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3Njg4IHZlcjoxIGVjbzoy
ICAgID0gMHgwMTAyCiBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjI4QU4gdmVyOjEgZWNvOjIgID0g
MHgwMTAyCiBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjIxIHZlcjoxIGVjbzozICAgID0gMHgwMTAz
CiBTb0MgVHlwZTogTWVkaWFUZWsgTVQ3NjIwQSB2ZXI6MiBlY286MyAgID0gMHgwMjAzCiBTb0Mg
VHlwZTogTWVkaWFUZWsgTVQ3NjIwTiB2ZXI6MiBlY286NiAgID0gMHgwMjA2Cgo+IFRoYXQncyBq
dXN0IGNvc21ldGljLgoKIGN1cnJlbnQ6ID09IDB4MDEwMQogbmV3OiAgICAgPj0gMHgwMTAxCgpE
b2Vzbid0IGxvb2sgbGlrZSBhIGNvc21ldGljIGNoYW5nZSBub3IgY29ycmVjdCwgc2VlIGFib3Zl
IGxpc3QuIFdoYXQgYWJvdXQKZm9sbG93aW5nPwoKICBpZiAocmFsaW5rX3NvYyA9PSBNVDc2Mlhf
U09DX01UNzYyMUFUKSB7CiAgICAgICAvKiAoR0UxLCBGb3JjZSAxMDAwTS9GRCwgRkMgT0ZGLCBN
QVhfUlhfTEVOR1RIIDE1MzYpICovCiAgICAgICBtdGtfc3dpdGNoX3czMihnc3csIDB4MjMwNWUz
MGIsIEdTV19SRUdfTUFDX1AwX01DUik7CiAgICAgICBtdDc1MzBfbWRpb193MzIoZ3N3LCAweDM2
MDAsIDB4NWUzMGIpOwogIH0gZWxzZSB7CiAgICAgICAuLi4KICB9CgpJIGp1c3QgZG9uJ3Qga25v
dyB3aGljaCBNZWRpYVRlayBTb0MgaXMgMHgwMTAxICh2ZXI6MSBlY286MSksIGJ1dCBJIGFzc3Vt
ZSwKdGhhdCB0aGlzIGNvbmRpdGlvbiBpcyBqdXN0IGJvZ3VzIGZyb20gdGhlIGJlZ2lubmluZy4K
Ci0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
