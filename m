Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883B5D49E8
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 23:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBLHUW/OHplQhinnTr9lMa4IGuIyNoP6cXKo/NKcBuY=; b=s19KafKsC28d3U
	0XWb2hWYlQmpq7vdCAZ28A41Yke1QzjPae/7kNaOjWAVEVgUEtGty1TCtC36L/na0Lsx6wrzJd/T4
	T6z/Ji966LN85oIjWBwnxJCsKvAksNm+bhWZzZOOa8G0TbCjNG6ZPRbj23hhWxw2l1PQ2maUAGdyF
	hvnVWtwL0JAeVBoyBd2y5mgr11n9be3ltrKqrALnb3MF440vnSRhJ75miD5GCRoNhR6InOF3W+e/D
	A++wdULkXHgUKWJdT3BmrV+DHBKggXFC/mf65NRWSLkC9lO/RpDTWrXOVCUAKWp+DcbKGntq//O1E
	tOROBYm9t8v1tvFxi30A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ2VL-0007SM-3Q; Fri, 11 Oct 2019 21:31:19 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ2VE-0007Qx-IW
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 21:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I5SjBhdtlV4Hm2nMdbNGKzKSQnLZtkRn1HJCObOcdu4=; b=PyEajKN1P2aGBxcFeHf3HH3tey
 77cOhcwzqbn2rAVAjc9XOBXO+4oHbPwfpOqZPzLs1aPaHnjyeDrGWfS/JviyLeC2yjnIUbJHo064i
 Q1D+rwmzNcXUdJzQdNKcrryE+by3G8lHck13r8VU1uf3gRs5ADHeYdB04dt1onq4GRWnb/3m1PgTh
 oGC+dMCNqsIc3hTXc+3HJDKsghTj5FYKrobot5HPSakt+FP5S82pDW5elsuLyO6tCWNWuco4n3Q8s
 6XEA63Fx4HepVZxJH/7RK0N7UHtcgTCo35+lN859CeufoXZ8a2t5nCNP1jN4MIgtQNM5RVWxgVT8A
 BGSZBb7g==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:50177
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.2) (envelope-from <por@oranjevos.nl>)
 id 1iJ2V9-000nHy-E6; Fri, 11 Oct 2019 23:31:07 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20191011091328.GE82174@meh.true.cz>
Date: Fri, 11 Oct 2019 23:30:47 +0200
Message-Id: <7AFFEFA7-7C6C-4969-A260-C3687FC54123@oranjevos.nl>
References: <20191011084204.19790-1-ynezz@true.cz>
 <CAKxU2N-=E8T0pFfep5t6cn7yWP=8_Mb2Nbge8DX38tC6E=+D2Q@mail.gmail.com>
 <20191011091328.GE82174@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3445.104.11)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_143112_767756_DAC2D78C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH urngd 0/4] sync with upstream,
 fixes and GitLab CI
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9wIDExIG9rdC4gMjAxOSwgb20gMTE6MTMgaGVlZnQgUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4gaGV0IHZvbGdlbmRlIGdlc2NocmV2ZW46Cj4gCj4gUm9zZW4gUGVuZXYgPHJvc2Vu
cEBnbWFpbC5jb20+IFsyMDE5LTEwLTExIDAxOjQ5OjU2XToKPiAKPiBIaSwKPiAKPj4gSXMgdGhp
cyByZWxhdGVkIHRvCj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvY29tbWl0Lz9oPW5leHQtMjAxOTEwMTEmaWQ9M2Yy
ZGMyNzk4YjgxNTMxZmQ5M2EzYjliN2MzOWRhNDdlYzY4OWU1NQo+IApBcyB1c3VhbCwgbm90IHJl
YWxseSBhY2NpZGVudGFsbHksICBMV04gaGFzIGEgdmVyeSByZWNlbnQgYXJ0aWNsZSBvbiBlbnRy
b3B5IHBvb2wgYXQgYm9vdCBhbmQgaW5pdGlhbGlzYXRpb24gb2YgL2Rldi91cmFuZG9tLCB0aGUg
Z2V0cmFuZG9tKCkgc3lzY2FsbCBhbmQgQ1JORy4KCj4gbm8sIEkgZG91YnQgdGhhdC4gSW4gbXkg
Y2FzZSBpdCB3YXMgc2ltcGx5IHNjYW4tYnVpbGQgY29tcGxhaW5pbmdbMV0gYWJvdXQKPiBsb2dp
YyBlcnJvciBpbiBqaXR0ZXJlbnRyb3B5LWJhc2UuYyBhbmQgSSB3YW50ZWQgdG8gZml4IHRoYXQs
IHNvIGFzIGFsd2F5cwo+IEkndmUgZmlyc3QgdHJpZWQgdG8gdXBkYXRlIHRvIGxhdGVzdCB1cHN0
cmVhbSB2ZXJzaW9uIGF2YWlsYWJsZSB3aGVyZSB0aGUKPiBwcm9ibGVtIHdhcyBsdWNraWx5IGdv
bmUuCj4gCj4gMS4gaHR0cHM6Ly95bmV6ei5naXRsYWIuaW8vLS9vcGVud3J0LXVybmdkLy0vam9i
cy8zMTgyNDYxMTUvYXJ0aWZhY3RzL2J1aWxkL3NjYW4vMjAxOS0xMC0xMS0wOTA3MjMtMjk3LTEv
aW5kZXguaHRtbAo+IAo+IENoZWVycywKPiAKPiBQZXRyCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
