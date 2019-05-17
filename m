Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C821EF6
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 22:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTgKQX1yjaYdF2WknKjAfp+XUJJcht4Ts2uQVG08rnU=; b=kzTGPWeVH9IO3D
	u+ZgsMy12zec+RgXZikPfK3ncGDsbzUlcQJkPgdVJ1aSBzUt15pi+AcadEOzz6jW2rKQ3dR/zeOMm
	kWnLVik45WZaK9foPHqO9Dvkne9m/3jRyPLQZDkY8cw5BL6nSgh9fP6OY2csIdO3YHFPREI6UFeIM
	IMynhgLo3//2MIj9g5V4ah2rGzWl+ngXEdd0vN22jpaXnE6RY2dNk7thwvDKknmiek3UY5sS2Mk8L
	lTwLLAayM8bHdtV2PsoWt3lNnGzbpxIrFXgoXfsDWZDQDlnT82Sy5P5ZR03NvYTIVlwqy1+dmCy3v
	jEBGri34fMBDt/93mzGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRjJI-0006MN-Hq; Fri, 17 May 2019 20:18:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRjJC-0006Lg-61
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 20:18:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id e15so8382199wrs.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 13:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GLKnyWHmqGiV7R0fngljzMYGms7zf3IeWEjQQ94danI=;
 b=e46L/quD1u/6Tbl3Pt4FwCizkwsV7yzHpjqkNOsueTYKlszLkL30ksn76hJo7X456R
 ru6MvCSpQfzD8JTfPdOxjaykJSE2WbhuM3M9aQ5GyvDHAdQs1r7z0oIRQHv1l49jiA//
 2053XFvuZ71tEUQnY2bTypk7yPqdr4GKIA/H3CqWtGW5QmTtZZzNacSFAmVcvH2mzTbK
 dP+rAOiiNTRd0yiuILoFbNwaJFEucNILQkUpqflLV/pbfSlckkgGCBYsbBYZ+IZ45zhk
 +WuB3rA9CzsGismrF/cCj11lwkC5XfTgaL5bKQ/QIotKFXjyxqSmdKCPT/rK69xBUGgU
 W2RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GLKnyWHmqGiV7R0fngljzMYGms7zf3IeWEjQQ94danI=;
 b=okAb+kbIOOxUd1+4XyGQo+hqLIatqNwcqty9058UGng7/KkGMRkYCxicIfxGcEwJwu
 C6dJo0q3JIcMRleJECc2Jj9VF2lZ/MEu61BFlOpvcBapfr+NKVMyi9mUPWCvvgcLYWQp
 Z7pYeTjUrLKXN5J1pEsWPdviudza8vZ/oXxHFbZC/Espta1K5rzZg7uwskd0NgxuGdWE
 PBAqOp64OaQnokwZKAxNNAejv17L0NIm+4JBwWIhSTzZ0osut8ySe+4Mlxx9Y9v8O2Tm
 NNv5Orh83jErjygMvldXUzYaxqtR5xbXijJfXZ90Ps37TWv5/tivggOC4hEdhGlB99cq
 Lm/A==
X-Gm-Message-State: APjAAAWjBfXfgTXMBm1StTUNEgdtKpthSjKy2LulHsh/Q7zB+KOzjOhs
 QdiGZuAbhD95AhmY7sVa8K0=
X-Google-Smtp-Source: APXvYqwOKa7DLw++p4Hu//T0MjZD/7g8wZXHEM9OvRvyazvC2r2DPrDEEsJwox49dCDzaJXBHedGMw==
X-Received: by 2002:adf:f4c5:: with SMTP id h5mr19124469wrp.268.1558124303562; 
 Fri, 17 May 2019 13:18:23 -0700 (PDT)
Received: from debian64.daheim (p4FD09697.dip0.t-ipconnect.de.
 [79.208.150.151])
 by smtp.gmail.com with ESMTPSA id o8sm14633932wra.4.2019.05.17.13.18.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 13:18:21 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hRjJ6-0002IL-TI; Fri, 17 May 2019 22:18:20 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Fri, 17 May 2019 22:18:20 +0200
Message-ID: <4726228.ymKfrnX4o1@debian64>
In-Reply-To: <20190515193528.GD63920@meh.true.cz>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <CAEdN=pENo3cxEyffOBdLd1OAcmbpTYzrkk9bWx_F6csoiwLGVA@mail.gmail.com>
 <20190515193528.GD63920@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_131826_250096_D9226BB7 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 4/4] ipq40xx: add support for secondary
 cores bringup
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
Cc: =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>,
 openwrt-devel@lists.openwrt.org, Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkbmVzZGF5LCBNYXkgMTUsIDIwMTkgOTozNToyOCBQTSBDRVNUIFBldHIgxaB0ZXRpYXIg
d3JvdGU6Cj4g0J/QsNCy0LXQuyA8YmUuZGlzc2VudEBnbWFpbC5jb20+IFsyMDE5LTA1LTE1IDIy
OjE0OjQxXToKPiAKPiA+IE5vdCBhIHByb2JsZW0sIGFjdHVhbGx5LCBidXQgSSd2ZSBiZWVuIHN1
Z2dlc3RlZCB0byBzcXVhc2ggdGhlbSA6KQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQv
b3BlbndydC9wdWxsLzIwNDMjaXNzdWVjb21tZW50LTQ5MTU4MTg5Nwo+IAo+IG9rLCB0aGFua3Mg
Zm9yIHRoZSBiYWNrZ3JvdW5kLCBidXQgc3RpbGwsIHNxdWFzaGluZyBkb2Vzbid0IG1lYW4gY2hh
bmdpbmcKPiBhdXRob3JzaGlwIGFuZCBDaHJpc3RpYW4gaGFzIHByb2JhYmx5IGFsc28gd2FybmVk
IHlvdSBiZWZvcmVoYW5kIDotKQoKRGlkIGl0IG9jY3VyZSB0byBhbnlib2R5IHRvIGxvb2sgYXQg
dGhlc2UgdHdvIHBhdGNoZXMgZm9yIGEgc2Vjb25kCmJlZm9yZSB3cml0aW5nIGxvbmcgZXNzYXlz
IGFib3V0IHRoYXQncyByaWdodCBhbmQgbm90PyBCZWNhdXNlIFBhdGNoCiJvbmUiIGlzIGluY29t
cGxldGUgYW5kIHRoZSBzZWNvbmQgcGF0Y2ggaXMgY2xlYXJseSBkb2luZyBhICJGSVhVUCIKZm9y
IHRoZSBmaXJzdC4gVGhhdCdzIHdoeSB0aGV5IHNob3VsZCBiZSBzcXVhc2hlZC4gSSBkbyB0aGlu
aywgeW91J2xsCmJlIGp1c3QgaWdub3JlZCBpZiB5b3UgdHJ5IHRvIHBvc3QgdGhlc2UgYXMtaXMg
d2l0aCB5b3VyIHNpZ25lZC1vZmYKb24gdGhlIGxpbnV4LW1zbS1hcm0uIEJ1dCB0aGVuLCB3aHkg
bm90IGdpdmUgaXQgYSBzaG90LCB0aGlzIHdvdWxkCm1ha2UgZm9yIHNvbWUgZ29vZCBsYXVnaHMg
aWYgaXQgd2VudCB0aHJvdWdoIGFzLWlzLgoKQnV0IGZyb20gd2hhdCBJIG5vdGljZWQsIG5vYm9k
eSBkaWQgYW55IG9mIHRoZSByZXF1ZXN0ZWQgcGVyZgp0ZXN0aW5nLiBUaGVzZSBhcmUgYWJzb2x1
dGVseSBuZWNlc3NhcnkgYmVjYXVzZSB0aGUgc3dpdGNoCmZyb20ga3Bzcy12MSB0byBrcHNzLXYy
IGNsZWFybHkgZGlkIGhhdmUgYW4gYmlnIGltcGFjdCBvbiB0aGUKcGVyZm9ybWFuY2UuIFNvIGxl
dCdzIG5vdCBicmVhayBhbnl0aGluZyBiZWNhdXNlIG9mIGEgcG9zc2libGUKaW5jb21wbGV0ZSBw
YXRjaCAodGhhdCBtaWdodCBvciBtaWdodCBub3QgcmVxdWlyZSAiUk9NIiBzdXBwb3J0CnRoYXQg
bWlnaHQgb3IgbWlnaHQgbm90IGJlIHByZXNlbnQgb24gYWxsIGRldmljZXMpLgoKPiAiKE5vdGU6
IEluIHNvbWUgb2YgdGhlIHBhdGNoZXMgdGhlICJBdXRob3IiIGluIHRoZSBjb21taXRzIGlzIGRp
c3NlbnQxISBTbwo+ICAgd2F0Y2ggb3V0IGJlZm9yZSBzZW5kaW5nIHRoZW0gb2ZmKSIKPiAKPiA+
IFNob3VsZG4ndCB0aGUgZGV2IHNlbmQgdGhlIHBhdGNoIGRpcmVjdGx5IHRvIG1lIGluIG9yZGVy
IHRvIGJlIGFibGUgdG8gcG9zdAo+ID4gaXQgb24gaGlzIGJlaGFsZiwgbGlrZSBvcGVud3J0IHN1
Ym1pdHRpbmcgcGF0Y2hlcyBndWlkZWxpbmUgZGVzY3JpYmVzPwo+IAo+IEZyb20gdGhlIGtlcm5l
bCBkb2NzWzFdOgo+IAo+ICJUaGUgY29udHJpYnV0aW9uIGlzIGJhc2VkIHVwb24gcHJldmlvdXMg
d29yayB0aGF0LCB0byB0aGUgYmVzdCBvZiBteQo+ICBrbm93bGVkZ2UsIGlzIGNvdmVyZWQgdW5k
ZXIgYW4gYXBwcm9wcmlhdGUgb3BlbiBzb3VyY2UgbGljZW5zZSBhbmQgSSBoYXZlIHRoZQo+ICBy
aWdodCB1bmRlciB0aGF0IGxpY2Vuc2UgdG8gc3VibWl0IHRoYXQgd29yayB3aXRoIG1vZGlmaWNh
dGlvbnMsIHdoZXRoZXIKPiAgY3JlYXRlZCBpbiB3aG9sZSBvciBpbiBwYXJ0IGJ5IG1lLCB1bmRl
ciB0aGUgc2FtZSBvcGVuIHNvdXJjZSBsaWNlbnNlICh1bmxlc3MKPiAgSSBhbSBwZXJtaXR0ZWQg
dG8gc3VibWl0IHVuZGVyIGEgZGlmZmVyZW50IGxpY2Vuc2UpLCBhcyBpbmRpY2F0ZWQgaW4gdGhl
IGZpbGU7Igo+IAo+IHNvIGluIHNob3J0LCBrZXJuZWwgaXMgY292ZXJlZCBieSBHUEx2MiB3aGlj
aCBhbGxvd3MgeW91IHRvIGRvIHRoaXMgaWYgeW91Cj4gcmV0YWluIHRoZSBhdXRob3JzaGlwLgpU
aGUgb3RoZXIgYXNwZWN0IG9mIHRoaXMgaXMgdGhhdCB5b3UgY2FuIGFsc28gIm9mZmxvYWQiIHNv
bWUgb2YgdGhlIGJsYW1lCndpdGggcmV0YWluaW5nIHRoZSBvcmlnaW5hbCBhdXRob3JzaGlwIGlm
IHRoZSBwYXRjaCBnb2VzIHNvdXIuIEJlY2F1c2UgYXMKeW91IGhhdmUgc2VlbiBldmVuIHRoZSBi
ZW5pZ2h0IDMyS0h6ICgzMjAwMEh6IHZzIDMyNzY4SHopIG5vbi1pc3N1ZQooc2luY2UgaXQgZ2V0
cyAicm91bmRlZCBkb3duIiBieSB0aGUgcWNvbS1jbGsgdG8gMzIwMDAgc2VlIGtlcm5lbCBkZWJ1
ZykKY2FuIGJlIGEgaG90IHRvcGljIHdpdGggY29uZmxpY3RpbmcgImZhY3RzIi4gU2ltcGx5IGJl
Y2F1c2Ugd2UgZG9uJ3Qga25vdwpob3cgdGhlIGNsb2NrIGNvdW50IGlzIGF0dGFpbmVkLiBJZiBp
dCdzIGFuIGV4dGVybmFsIG9zYyB0aGVuIGl0J3MgcHJvYmFibHkKdGhlICJyb3VuZCIgMzI3Njgg
SHosIGJ1dCBpZiB0aGlzIHNsZWVwIGNsb2NrIGlzIGdlbmVyYXRlZCBmcm9tIHRoZSA0OCBNSHoK
T3NjIHJlZmVyZW5jZSAod2hpY2ggd2Uga25vdyBpcyB0aGVyZSwgYmVjYXVzZSB0aGVzZSBvc2Mg
YXJlIGJpZyBlbm91Z2ggdG8KYmUgc3BvdHRlZCBieSBsb29raW5nIGF0IHRoZSBQQ0IpIHRoZW4g
YSAib2RkIiAzMjAwMEh6IGlzIHBvc3NpYmxlLgoKKFRoYXQgc2FpZCwgdGhlIGhpZ2hyZXMgdGlt
ZXIgZml4IHNlZW1zIHRvIGJlIGRlZmluaXRlbHkgYSB3aW5uZXIuIApJJ20gZ2xhZCB0aGF0IHlv
dSBzcG90dGVkIGl0KS4KClJlZ3JhZHMsCkNocmlzdGlhbgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
