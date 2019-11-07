Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9630F29C1
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 09:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NTRJpjePhcs+rcXUy4/jFrNzPLK+ZwsRtDQoTjw0p94=; b=KcOhZzPB5aNK5d4WFw7ghbBCzd
	2XpoWe+n2vM+k8oLVkyU1H807ZuMwSjnIDWS29KxNDArTIvAgyVpYDTEo8E4GJ2IfDf9dHQZIfmOL
	WR3nsOmiyB/OVh5Wt/b0BUOvV/K3H9I3Tlo0TOOrk/1iPWDl9OPKdFXvEBHnVKASwm3Y+VSMhGaz3
	epb3nMovkXrQH9PWk3znHAqJa8kJ76PQNqzezqeKXIVrloPvkHYSJU8tPwEeOH+YerG8puFMoBxt2
	xJyFIASkDh7t50aE8NBE8ndSvQU9XjP1Wmto3hFIAu7+SX/iskMy8VqycYwi6Fn84/5DnFJse/oIu
	KpH4t0eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdW8-0005GC-3s; Thu, 07 Nov 2019 08:51:48 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdVl-0004y0-20
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 08:51:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 176DC40C1;
 Thu,  7 Nov 2019 09:51:19 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1933fc28;
 Thu, 7 Nov 2019 09:51:09 +0100 (CET)
Date: Thu, 7 Nov 2019 09:51:08 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20191107085108.GC67608@meh.true.cz>
References: <20191101160634.25559-1-hauke@hauke-m.de>
 <20191101160634.25559-2-hauke@hauke-m.de>
 <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
 <20191105002707.GO22393@meh.true.cz>
 <1b6c6276-e964-5ddd-990d-931ac199159c@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b6c6276-e964-5ddd-990d-931ac199159c@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_005125_271268_64501629 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to
 detect problems with longjmp
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IFsyMDE5LTExLTA3IDAwOjI2OjIzXToK
CkhpLAoKPiA+IEkgZGlkbid0IGxvb2tlZCBkZWVwZXIsIGJ1dCBHQ0MgNiw3LDgsOSBvbiB4ODYv
NjQgcmVwb3J0cyBmb2xsb3dpbmc6Cj4gPiAKPiA+ICBsaXN0LmM6NjI2OjIxOiBlcnJvcjogdmFy
aWFibGUg4oCYcHJlduKAmSBtaWdodCBiZSBjbG9iYmVyZWQgYnkg4oCYbG9uZ2ptcOKAmSBvciDi
gJh2Zm9ya+KAmSBbLVdlcnJvcj1jbG9iYmVyZWRdCj4gPiAgIDYyNiB8ICBzdHJ1Y3QgdWNpX29w
dGlvbiAqcHJldiA9IE5VTEw7Cj4gPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgXn5+fgo+
ID4gCj4gPiAgbGlzdC5jOjYyNzoxNDogZXJyb3I6IHZhcmlhYmxlIOKAmHZhbHVlMuKAmSBtaWdo
dCBiZSBjbG9iYmVyZWQgYnkg4oCYbG9uZ2ptcOKAmSBvciDigJh2Zm9ya+KAmSBbLVdlcnJvcj1j
bG9iYmVyZWRdCj4gPiAgIDYyNyB8ICBjb25zdCBjaGFyICp2YWx1ZTIgPSBOVUxMOwo+ID4gICAg
ICAgfCAgICAgICAgICAgICAgXn5+fn5+Cj4gCj4gSSB0aGluayBJIGFsc28gc2F3IHRoZXNlIHBy
b2JsZW1zIGluIG15IG1hbnVhbCByZXZpZXcsIGJ1dCB0aGUKPiAtV2Nsb2JiZXJlZCBkaWQgbm90
IGNvbXBsYWluIGFib3V0IHRoZW0gZm9yIG1lIHdpdGggZ2NjIDguMyBvbiBNSVBTLgoKSW50ZXJl
c3RpbmcsIG91dCBvZiBjdXJpb3NpdHkgd2hpY2ggTUlQUz8gQlRXIEkgc2VlIGEgY29uc2lzdGVu
dCBnY2MgOC4zCmJlaGF2aW91clsxXSBhY3Jvc3MgYWxsIENJIHRlc3RpbmcgdGFyZ2V0cyAoYXRo
NzksIG1hbHRhIGJlLCBpbXg2LCBhcm1hZGEKYS01Mykgd2l0aCAtV2V4dHJhIGFuZCB3aXRob3V0
IHlvdXIgcGF0Y2ggYXBwbGllZC4gIFlvdSBuZWVkIHRvIGNsaWNrIG9uIHRoZQoiW3hdIEZhaWxl
ZCIgYnV0dG9uIGluIG9yZGVyIHRvIHNlZSB0aGUgYnVpbGQgZmFpbHVyZS4KCjEuIGh0dHBzOi8v
Z2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LXVjaS9waXBlbGluZXMvOTQwNTE3NjYvYnVpbGRzCgot
LSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
