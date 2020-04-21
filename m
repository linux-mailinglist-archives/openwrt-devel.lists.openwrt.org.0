Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC301B1D24
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 06:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5eBuf25d9pLU0O3M37NS7bnyekp89L82YowaxUtqAVI=; b=KYTLqVklZMOgbIX0Roiix+S9RH
	BuNxjQ6cVYK+dfed9C2n/vIS/vTiGE5E1wF2mXd2oa8MqiYY979HG48jPakNq+6wQItxHvYmrwZbV
	4o1TJpXTjaYv3jLJglc1zBlugyF4biOxv9guQcNZWYWgjC4LkELu+jjHizLatQjsVI/fSj9GUzK1T
	0R3GfO+HUhLWvpREzWUuRHLVTf+2HW7S6omeZzh1xz3GR9DCFxNtwsiTQTgixSBHS7KD9yBaVyOoi
	Tk8kVAphb49IfOn7BtgQa9PMMYLHx5L6pWU0gL+4lxtJXoh7KkAx3nqFPvcPj9s9927vgO/UzSz0L
	dOQyKY8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQk5t-0001QF-KE; Tue, 21 Apr 2020 04:01:09 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQk5n-0001Os-Na
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 04:01:05 +0000
Received: by mail-io1-xd2f.google.com with SMTP id w4so6368360ioc.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 21:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=d9ew6nNucl2nfZoqzqGkV1ApKtsP990Z1lUgFk2utaY=;
 b=DCzpJPv9ce5Jtnbd7COivASY/sfxcKAaynTBwuBeK4PpAVmXkh0h2ccLrAWLuBwKju
 X/+wJRihS+nmb+rWEQHFXhlqZNlQg6H04lkQLzmTMmEQ2ugqhaaSngoOM+m5ilZyugip
 b24G1I6TEd5uOOax6x/pLjQugjl0B0hgUSI6MQANb7TbaKnt9ctSBuB9dXeHA3J/vvP7
 6dyloo3hoq9sSJlOicxjst42Sr+o06/1lVK2VKT36xQedkbGflnmbdkxlUXOMO7D1y7n
 +ZfF789zGxd2mY8Qh7j4aTasxQr/uc9x72SJaoD8YNPVLp+KWbAmnTWqR3C8Q33locnR
 YK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=d9ew6nNucl2nfZoqzqGkV1ApKtsP990Z1lUgFk2utaY=;
 b=UZDclBZwT1B6/hnGrs8ivbddlfxwThvg+gEc1sKnMS6J0uEeKnLM+DbINx+HsSXg/P
 J/1AosrDdmF99AH67LUYt8i+FMxTv1qYJEwwpkmPuSRvnbL+JG8Vn501wrH0F4ykVnj7
 6GVXqMJJy+S4lVkKF+S5R4xqLVOtOpNRNKjKDR9k1PAewOmzllXH9RX+EcVB2mIu/dRj
 ljBeU5WGqgrWfJYGt8Z8jRdlhkaaeRv+fsPjTbSk4JLRgCz4VtOsdCNireUg2jFmJymQ
 FvQ15W10pD/aQWyT4osQSVFjxyu6FaS5gBzdy/YQsc9kct8SchCVgS8FP5dxTq2ZhrvR
 bCpw==
X-Gm-Message-State: AGi0PuZ7pfHVfGzh8LSbTfaBIwqpDOgLq/Wxs9f9aBhL2f+qvAHvb8fs
 /XngS1ASK9JqajViih0eMelOqMYyz0cnxOEHm8zaQy9DKvs=
X-Google-Smtp-Source: APiQypLdcvJWyY33krfRAMRku2WELgRgfW+VzsvNHit9kbmWtsD186t8dZR1IazF0FVa7fjEcEjDBf43k6TqoBkr7YE=
X-Received: by 2002:a05:6602:1303:: with SMTP id
 h3mr16329436iov.14.1587441661602; 
 Mon, 20 Apr 2020 21:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOdf3go4Km04_Tfw+C8ecVctKqe=Sm_W4nb9FU53v9+isicVQA@mail.gmail.com>
In-Reply-To: <CAOdf3go4Km04_Tfw+C8ecVctKqe=Sm_W4nb9FU53v9+isicVQA@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Tue, 21 Apr 2020 00:00:50 -0400
Message-ID: <CAOdf3grbr2ar3+JXX0o6JSMRgM3e4G503jv0tyFtBuzq_kjehg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jow@openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_210103_798665_84125918 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ubus acls for params or hotplugd ?
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

SGkgYWxsLAoKTGUgZGltLiAxOSBhdnIuIDIwMjAgw6AgMjA6MTYsIEV0aWVubmUgQ2hhbXBldGll
cgo8Y2hhbXBldGllci5ldGllbm5lQGdtYWlsLmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkgYWxsLAo+
Cj4gTW9zdCBPcGVuV3J0IGRhZW1vbiBhcmUgc3RpbGwgcnVubmluZyBhcyByb290IHRvZGF5Lgo+
IElmIHdlIHRha2UgdGhlIGNhc2Ugb2YgbnRwZCwgdG8gZG8gaXRzIGpvYiBpdCBqdXN0IG5lZWQg
Q0FQX1NZU19USU1FCj4gYW5kIHRvIGJlIGFibGUgdG8gZGVsaXZlciBhIGhvdHBsdWcgZXZlbnQu
Cj4gUmlnaHQgbm93IGhvdHBsdWctY2FsbCBpcyBhIHNpbXBsZSBzaGVsbCBsb29wIGV4ZWN1dGlu
ZyBhbGwgdGhlCj4gc2NyaXB0cyBpbiAvZXRjL2hvdHBsdWcuZC8kMS8sIHNvIG50cGQgbmVlZCB0
byBydW4gYXMgcm9vdC4KPgo+IEkgd291bGQgbGlrZSB0byBoYXZlIHRoaXMgaG90cGx1ZyBjYWxs
IGdvIG92ZXIgdWJ1cywgYW5kIEkgc2VlIDIgd2F5czoKPiAxKSBlaXRoZXIgZXh0ZW5kIHVidXMg
YWNsIHRvIHZhbGlkYXRlIHBhcmFtcywgdGhlbiBoYXZlIGEgZ2VuZXJpYyBleGVjCj4gZnVuY3Rp
b25hbGl0eSB0byBiYXNpY2FsbHkgaGF2ZSBhIHN1ZG8gdmlhIHVidXMgKHJlYWxseSBmbGV4aWJs
ZSBidXQKPiBub3Qgc3VwZXIgY2xlYW4pCj4gMikgb3IgaGF2ZSBhIHNtYWxsIGhvdHBsdWdkIHRo
YXQgcHVibGlzaCBvbmUgcGF0aCBwZXIgdHlwZSAoaWUgaGF2ZQo+ICdob3RwbHVnLm50cCcgd2l0
aCBhbiAnZXZlbnQnIG1ldGhvZCkKPgo+IFNpbWlsYXJseSB0byBudHBkLCB1ZGhjcGMgYW5kIG9k
aGNwNmMgZG9uJ3QgcmVxdWlyZSBtdWNoIGNhcGFiaWxpdGllcwo+IChhdCBtb3N0IENBUF9ORVRf
UkFXLCBDQVBfTkVUX0JJTkRfU0VSVklDRSkgaWYgd2Ugc2VuZCB0aGUgZGhjcCBldmVudHMKPiBh
cyBob3RwbHVnIGV2ZW50cyBvdmVyIHVidXMuCj4KPiBBcyBzb21lIG9mIHlvdSBtaWdodCBhbHJl
YWR5IGhhdmUgaWRlYXMgb24gdGhpcyB0b3BpYywgSSdtIHNlbmRpbmcKPiB0aGlzIGVtYWlsIHRv
IGdldCBmZWVkYmFjayBob3cgeW91IHdvdWxkIHNlZSB0aGlzIGltcGxlbWVudGVkICgxLCAyIG9y
Cj4gLi4uKQoKSSBoYWQgYSBnb29kIGNoYXQgd2l0aCBKb3cgdG9kYXkgb24gSVJDIGFuZCBoZXJl
IGlzIGEgc3VtIHVwLgpXaGF0IHdlIGFncmVlIG9uOgotIGV4dGVuZGluZyBhY2wgdG8gZmlsdGVy
IG9uIHBhcmFtcyB3b3VsZCBzbG93IGRvd24gdWJ1cyBpbiB0aGUKZGVmYXVsdCBjYXNlIGFuZCBj
b21wbGljYXRlIHRoZSBjb2RlLCBzbyBpdCdzIGJldHRlciB0byBoYXZlIGEKcGF0aC9uYW1lc3Bh
Y2UgcGVyIHR5cGUKLSB3ZSBzaG91bGQgZXh0ZW5kIHByb2NkIGluc3RlYWQgb2YgaGF2aW5nIGEg
c2VwYXJhdGUgJ2hvdHBsdWdkJyBkZWFtb24KLSB0aGlzIG5ldyBtZWNoYW5pc20gc2hvdWxkIGJl
IHNtYXJ0IGVub3VnaCB0byBkZXRlY3QgbmV3IGV2ZW50IHR5cGUgYXQgcnVudGltZQotIHRoZSBl
dmVudCBwYXJhbXMgYXJlIHVudHJ1c3RlZCwgd2hlbiBjb252ZXJ0aW5nIHRoZW0gdG8gZW52aXJv
bm1lbnQKdmFyaWFibGVzLCB3ZSBlaXRoZXIgbmVlZCB0byB3aGl0ZWxpc3QgdGhlbSwgdG8gcHJl
Zml4IHRoZW0gb3IgYQpjb21iaW5hdGlvbiBvZiBib3RoLgpJZiBwcmVmaXhpbmcgd2UgbmVlZCB0
byBlbnN1cmUgdGhlIG5hbWUgaXMgYSB2YWxpZCBpZGVudGlmaWVyCihbXmEtekEtWjAtOV9dKykg
b3IgcmVqZWN0IHRoZSBmdWxsIHJlcXVlc3QKLSB3ZSBzaG91bGQgb25seSBzdXBwb3J0IGJhc2lj
IHR5cGVzIGZvciBwYXJhbXMgKG51bWJlcnMgLyBzdHJpbmdzIC8KYm9vbCkgYW5kIG5vIG5lc3Rp
bmcKCldoYXQgbmVlZCBtb3JlIGRpc2N1c3Npb246Ci0gaWYgd2UgZG9uJ3Qgd2hpdGVsaXN0IGFs
bCBjdXJyZW50bHkgdXNlZCB2YXJpYWJsZXMgZm9yIGhvdHBsdWcKZXZlbnRzLCB3ZSBuZWVkIHRv
IGFkYXB0IGFsbCBjdXJyZW50IGhvdHBsdWcgc2NyaXB0cy4gVGhpcyBtZWFucwpwb3RlbnRpYWwg
YnJlYWthZ2UgZm9yIE9wZW5XcnQgZGVyaXZhdGl2ZXMuCihpZiBtdWx0aXBsZSBkZXZzIGFyZSBm
aW5lIHdpdGggaXQgSSdtIGFsc28gZmluZSkKLSBob3RwbHVnIHNlbWFudGljIGlzIGZpcmUgYW5k
IGZvcmdldCwgaWUgeW91IGRvbid0IGV4cGVjdCBhIHJldHVybgpjb2RlLCBidXQgZm9yIGNhc2Vz
IGxpa2UgdWRoY3BjIC8gb2RoY3A2YyB0aGUgcmV0dXJuIGNvZGUgbWlnaHQgYmUKaW1wb3J0YW50
LCBhbmQgd2UgZG9uJ3QgcmVhbGx5IHdhbnQgdG8gZXhlY3V0ZSBtdWx0aXBsZSBzY3JpcHRzCih3
ZSBjb3VsZCBoYXZlIC9ldGMvaG90cGx1Zy5kL3NjcmlwdCA/KQotIHRocmVhZGluZyBtb2RlbCwg
SSB3YXMgdGhpbmtpbmcgb25seSAxIGV4ZWMgYXQgYSB0aW1lIHBlciB0eXBlIHRvIGJlCm9uIHRo
ZSBzYWZlIHNpZGUKCkNvbW1lbnRzIHdlbGNvbWUKRXRpZW5uZQoKPgo+IFRoYW5rcwo+IEV0aWVu
bmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
