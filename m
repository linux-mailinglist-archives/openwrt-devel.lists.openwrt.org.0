Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9386A1EFD7E
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 18:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hd6QGCtKAssSC/7SVKdbtGRYMyYGH89/plMKqALRFA=; b=hOT2tNpHIaJl8/
	Zn3FrBEW5WVehasXEdi0wEmstjEpUH+d/53vVezuBYqRiC5xvJSLsUaofiRggwtC/zPK9M7kywSFU
	wvHX02lh6SXbq7h8sqRzZ+5TPVq1ZcEZz43pjtnUnypJBHdEwP9cpRyq9Jk9PebgEaat5MOGMA5bu
	qC/XWGK8w745ZBZaYcwZKLaIaSYhH1vfTK18q/PuWDFvWPpHR6/qMhtb7is9uAY6r2LS3HdcyDDj/
	AHZGqYCZJVF7l/hNVIVxddQLV3CHkE5TN+VN/Axzwm0MJmxwUjGfjTowgrBZaaB0C215wSXPaRnZT
	RcWQe1ucJfhV/LHFLyrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhF9q-0005Kb-HS; Fri, 05 Jun 2020 16:25:26 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhF9k-0005Jz-8r
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 16:25:22 +0000
Received: from [10.71.58.186] ([80.187.82.58]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MFsAJ-1jkEM70FSx-00HOWy for <openwrt-devel@lists.openwrt.org>; Fri, 05 Jun
 2020 18:25:16 +0200
Date: Fri, 05 Jun 2020 18:25:13 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <87y2p1u28j.fsf@miraculix.mork.no>
References: <20200605114736.63933-1-freifunk@adrianschmutzler.de>
 <87y2p1u28j.fsf@miraculix.mork.no>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <C66D14DE-952C-40A2-856F-E3CDFE396BDE@adrianschmutzler.de>
X-Provags-ID: V03:K1:eA/IB8E5dRczqao9tuYNngZUZ1hkHpD0bJ7JJ/4Pyr5C829w+J9
 T8AGmp/sdN9J85uYz8fBEwK9WqOYkdaDWcdvcAR6S5RK2rcp8EEq2/dZY0Sx1sWm/ubcPi1
 ZXZXs+NDZFnlnu9B+xeD3wIRq4PS2mWrKr+jSLv+Mrn4yyECVPc3GIhQZS2yt8bGNfHmaCN
 RBzgX6b3Y0F2i1M4IfzAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yi4cZZ/85I0=:CFDrICx267kMcWey3abKC0
 VhzzsFfFS6xH/BI2sDGFm76B84sSswieyogEFR5VATBNjiLx65L0dc8SxLDyMmgwEZcZIrWMP
 6AthQLSWPWkF+df5mM9YqRZIsmOD8Xdfq6S1tBukvNSwv4RQAsgP5mf/oMV0ehTK/VaBhpwTx
 GEfC+ftGJPXldlrDkoCXXinvkq97uHAAP41gJ90d4pLO/wJzsluUoAqqRfUWRstl3OzFg9U27
 lkBjbRlhi0e9P8ij9vFkOQW8GDk9qPp9H1uEEizn+TCNfL0zT8+n4FMbjqVw1aid3Z0CurFKl
 P2vEVkZpLEq7sK+fH7zRHo1Zj/zxuliyyXBFwTgV/0QTBo+9yheaPi984V6h5wCGshmiwk8W7
 fRddx6GlvYwJFiYhnreMDO8RJpOo62OhEYUOFpe+aNGcJYnapW0obBleknjtKSgFxiKNR02h/
 rUtjyBWUmhB/Rz7QQSj/uOIVjFY9bxrBeqDwHg4VurxyBHy4cWbkpRasXY74VumtUYNsFrc/L
 JEooy4DwxYBr/q+GVFhukcSLZEPIeWxgyqoa935BY8FFtiE7iX0hwz8epodIHBsneX4zhB71B
 5L37JoWlZ7AWZF6dpuSKRlY/ZOeHHpLayck0WFIfU4ZKaEtVB3nDYSO+n+tD54CFe0U6o9B1x
 HfZP683cVzcoCE3vW+8PEQWIMBP29MRYvpe9zso3mInXGxrikQ2/yPX+28eAqft5SurWNR0jH
 o9KNgeDJug5EL6LAt5+5yaELBpZLlux5JuUYPWjiI12saM/88Me7Iz+MBHnwkubsrCFl8w4my
 RwnMl6HwQwCGvTOc9o4syXKxHZMTONgm/flFtTlUeIk3geQG1iHXojPS7eGYG+qw2gkib3M
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_092520_604660_C0D98DBA 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC PATCH] sysupgrade: introduce compatibility
 version for devices
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

CgpPbiA1IEp1bmUgMjAyMCAxNDoyNzoyNCBDRVNULCAiQmrDuHJuIE1vcmsiIDxiam9ybkBtb3Jr
Lm5vPiB3cm90ZToKPkkgaGF2ZW4ndCBldmVuIGJvdGhlciB0byB0cnkgdG8gd3JpdGUgYW55IGNv
ZGUgdG8gc2VlIGlmIHRoaXMgaXMKPmZlYXNpYmxlLCBidXQgYW55d2F5Li4uCj4KPkkgd29uZGVy
IGlmIHRoZXJlIG1pZ2h0IGJlIG1vcmUgZmxleGlibGUgYW5kIHVzZXItZnJpZW5kbHkgd2F5cyB0
bwo+aGFuZGxlIHVwZ3JhZGUgaW5jb21wYXRpYmlsaXRpZXMgaWYgd2UgYXJlIGFsbG93ZWQgdG8g
dXNlIGNvZGUvbWV0YWRhdGEKCkkgc2VlIHRoZSBhcHBlYWwgb2YgdGhpcyBpZGVhLCBidXQgZXhl
Y3V0aW5nIF9jb2RlXyBmcm9tIGFuIGltYWdlIGJlZm9yZSBpdCdzIHByb3Blcmx5IHZlcmlmaWVk
IHNvdW5kcyBsaWtlIGEgc2VjdXJpdHkgaXNzdWUgdG8gbWUuIAoKPmZyb20gdGhlIG5ldyBpbWFn
ZSBpbiB0aGUgc3lzdXBncmFkZSBwcm9jZXNzPyAgSW5zdGVhZCBvZiBqdXN0Cj5wcm92aWRpbmcK
PmEgdmVyc2lvbiBudW1iZXIgd2l0aCBzb21lIHNpbXBsZSBzZW1hbnRpY3MgbGlrZSB5b3UgZGVz
Y3JpYmUsIHRoZSBuZXcKPmltYWdlIGNvdWxkIHByb3ZpZGUgYSBzY3JpcHQgc25pcHBldCBvciBz
aW1pbGFyIHdoaWNoIGNvZGlmaWVzIGEgbW9yZQo+cHJlY2lzZSBkZXNjcmlwdGlvbiBvZiB0aGUg
aW5jb21wYXRpYmlsaXR5LiBBbmQgZXZlbiBhIHNvbHV0aW9uLCBpZgo+dGhlcmUgaXMgb25lLgoK
U291bmRzIGEgbGl0dGxlIHRvbyBtdWNoIGZvciBteSB0YXN0ZSBhdCBmaXJzdCBsb29rLiAKCj4K
PkZvciB0aGUgRFNBIGV4YW1wbGUsIHN1Y2ggYSBzY3JpcHQgY291bGQgKG9wdGlvbmFsbHk/KSBt
b3ZlIGFuCj5pbmNvbXBhdGlibGUgY29uZmlnL25ldHdvcmsgb3V0IG9mIHRoZSB3YXksIHdoaWxl
IGxlYXZpbmcgYWxsIG90aGVyCj5zZXR0aW5ncyB1bnRvdWNoZWQuICBQcmVzZXJ2aW5nIGUuZy4g
d2lyZWxlc3MgY29uZmlnIGhhcyBhIGxvdCBvZgo+dmFsdWUuCgpXZSBkb24ndCBldmVuIGhhdmUg
YSBnZW5lcmFsIGNvbnZlcnNpb24gc2NyaXB0IGZvciBEU0EsIGFuZCBJIGRvbid0IHRoaW5rIHRo
ZXJlIHdpbGwgYmUgbXVjaCBkZXNpcmUgdG8gcHJvdmlkZSBhbmQgbWFpbnRhaW4gaW5kaXZpZHVh
bCBzb2x1dGlvbnMuIFBhcnRpYWwgY29uZmlnIHByZXNlcnZhdGlvbiB3aWxsIGJlIGV2ZW4gbW9y
ZSB3b3JrLCBwYXJ0aWN1bGFybHkgc2luY2UgcGFja2FnZXMgd2lsbCBhZGQgdGhlbSBpbiBhbiB1
bmZvcmVzZWVhYmxlIHdheS4gCgpTbywgcHJvdmlkaW5nIGEgd2FybmluZyBzZWVtcyBhY2hpZXZh
YmxlIHRvIG1lLCBhbmQgZXZlcnl0aGluZyBiZXlvbmQgY291bGQgYmUgcHJvdmlkZWQgdmlhIG90
aGVyIHJlc291cmNlcyAoZS5nLiBpbiB0aGUgV2lraSksIGFzIHRoZSBlZHVjYXRlZCAoYW5kIHdh
cm5lZCkgdXNlciBjb3VsZCBhbHdheXMgZm9yY2UtZmxhc2ggYW5kIGNvcHkgYW4gZXh0ZXJuYWwg
c2NyaXB0IGp1c3QgYWltaW5nIGF0IGUuZy4gRFNBIG1pZ3JhdGlvbi4uLiAKCkJ1dCB0aGFua3Mg
Zm9yIHlvdXIgaW5wdXQsIEknbSBhY3R1YWxseSBzdGlsbCB3aWRlbmluZyBteSB2aWV3IG9uIHRo
aXMuIAoKQmVzdAoKQWRyaWFuCgo+V2l0aCB0aGUgcG9zc2liaWx5IHRvIGNhbmNlbCB0aGUgdXBn
cmFkZSwgaXQgd291bGQgZXZlbiBhdHRlbXB0IGFuCj5pbmNvbXBsZXRlIGNvbnZlcnNpb24uICBJ
TUhPLCB0aGUgbWFpbiByZWFzb24gd2UgY2FuJ3QgZG8gYXV0b21hdGljIERTQQo+Y29udmVyc2lv
biBpcyBiZWNhdXNlIHRoZXJlIHdpbGwgYmUgZmFpbHVyZXMuICBCdXQgdGhpcyBpc24ndCBjcml0
aWNhbAo+aWYgaXQgaXMgZGV0ZWN0ZWQgcHJpb3IgdG8gdXBncmFkaW5nLgo+Cj5KdXN0IGEgZmV3
IHJhbmRvbSB0aG91Z2h0cy4gIFNpbmNlIHlvdSBhcmUgYWJvdXQgdG8gZnVuZGFtZW50YWxseQo+
aW1wcm92ZSBzeXN1cGdyYWRlIGFueXdheSA7LSkKPgo+Cj5CasO4cm4KPgo+X19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cj5vcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj5odHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
