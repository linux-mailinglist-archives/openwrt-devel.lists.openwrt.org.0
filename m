Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1357FDE00C
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 20:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrXTUO9hivsGNdvXhZYAlER55P+MyJlFGHd6uC4gKiI=; b=OMSX+LrF6IAubC
	bSjV0Rd8xKTuvvGsDoVGFX3Z79FowTi0s+DBHJoqIdAvHXEVvtcRp8GclCxXJq0lV0XfS2IhiBJ4v
	3yBg+A5eJjnODdWYWeyoNsQoLYJ1fFw38Pfx1p9U+YZlUKgn2cjoQEwBCVWfBtaZDkrNaRFKWNmJm
	slJfMz5jiHJRq34WuL+FFT8E6tIcDIHhcPEcH+EoKhiDBKTAV1Z7dAF465fBj+4BU/yzqcJ6g0eHP
	JX5iIFmM8ADwAtZtlYQuuV6wzZaeVVFIlFsr5F17NyxYvjxWMCO2lZE2wTKW0HXWKrAzKA6R3aVCc
	04KnB74cfx+XbMPTvuFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMG0D-0004Xc-9I; Sun, 20 Oct 2019 18:32:29 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMFzy-000453-6A
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 18:32:15 +0000
Received: by mail-ot1-x342.google.com with SMTP id 67so9137551oto.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 11:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Q0QXt4FyGbYN8jeVyIIRtSHydSjG9T8DYSDvbvOzUKo=;
 b=L1S8c+3IdnCJ/kYidDx+cyU/m/qnDiIiOC7iVhgpkR4U8THPZNgP152J09RbRzEuxi
 nmp8B4QsqCF9ye8DP8NTPl6xr5Jt70jZab0JAxu0oXE70qDfOROMTGYaT2uBxyPeBHqZ
 1NuIC7JcGDgvIObYZPcmVRxAmeTPKJKItX/0syLW28FVZwld7a90IIEIenne5x9gF6ev
 yDWeu4lJNU79WtOFAZ8RTIUoCtRmLi4xGBsxfdu8QunAqg1DY6PcDg8JLvMUjO1uEwu4
 ix6R9YV85eeLwgHZB2Hjw+TLSsMvu+6xLu2MkfOoDDqWG12x12QGbXF7v5NDpEtD/lqX
 TQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q0QXt4FyGbYN8jeVyIIRtSHydSjG9T8DYSDvbvOzUKo=;
 b=AUpBoMtWK+z3QIbjcLr63+bH2wDcmRBeeYTCEhLBp9GfikRDu7Kh5zzB2UgYZLAU3T
 iBX6sm5lw4aHEITIFCrrll/oNSN/XRTFomRYE+6Ef6L1xqYDia4IPKrUy7Y7Sw8bdWsk
 257jg5XCS1iS2CRYCGtbjkT0mfGwRC0gapXipbPoB9nfswbV6vxFQyQZv5ZeBgA4cKVD
 8EcTU9qizLGqCamTfqStkyrYXJ2adIYOS6VkpZqfrzXQ+k1mDueaZfIvia7eMIoa2/Rc
 Oom/y/0zo1rVOtdTKR9iw1KhIjJxixdpb0wvQVAQr2nZUYHdNRngzeHjoAY3Jb9nU7V8
 K6hg==
X-Gm-Message-State: APjAAAVmRzxTUKRThSZ5P37VBdnBNPFfLxVA3C4u5hrKkgpaxMlfVwkH
 JGu7sw5mTJsVX0d1MoVdhnUDpD5WHIVVzLiLvhmqo2dm
X-Google-Smtp-Source: APXvYqy+YmeEmQsVcQoB8rIIL0nDYEOHyWK60g885nJzXJt8bS4vMygESUooRhSHRD8ZZKSM3MrJU50qS10uftULEX8=
X-Received: by 2002:a9d:6284:: with SMTP id x4mr12813470otk.281.1571596332014; 
 Sun, 20 Oct 2019 11:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <1571136743-95375-1-git-send-email-lxliu@ikuai8.com>
 <803c0ee5-a268-7738-7883-515d37939159@hauke-m.de>
 <5dac3588.1c69fb81.d230f.9ac5SMTPIN_ADDED_BROKEN@mx.google.com>
In-Reply-To: <5dac3588.1c69fb81.d230f.9ac5SMTPIN_ADDED_BROKEN@mx.google.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 20 Oct 2019 11:32:00 -0700
Message-ID: <CAKxU2N_vfTY4DEuTyHyJtyvo6PLmK2vLQNTupcErrwq0bLd1_w@mail.gmail.com>
To: =?UTF-8?B?5aSn6ZuE?= <lxliu@ikuai8.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_113214_266014_EF58E532 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ikuai8.com]
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] build: fix select uClibc
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU3VuLCBPY3QgMjAsIDIwMTkgYXQgMzoyMyBBTSDlpKfpm4QgPGx4bGl1QGlrdWFpOC5jb20+
IHdyb3RlOgo+Cj4gSGkgaGF1a2XvvIwKPiAgICAgdUNsaWJjLW5nICBzdXBwb3J0ZWQgZnVuY3Rp
b246IGdldGNvbnRleHQsIG1ha2Vjb250ZXh0LCBzd2FwY29udGV4dO+8jAo+ICAgICBUaGVyZSBh
cmUgdGltZXMgd2hlbiB3ZSBuZWVkIHRvIHVzZSBpdCB0byBkZWFsIHdpdGggdGhlIGJhY2t0cmFj
ZS4KPiAgICAgSSB0aGluayBpdCBzaG91bGQgYmUgZnJlZSB0byBzZWxlY3QuCllvdSBjYW4gc2Vs
ZWN0IGlmIHlvdSBlbmFibGUgIlNob3cgYnJva2VuIHBhY2thZ2VzIC8gcGxhdGZvcm1zIiB1bmRl
cgpBZHZhbmNlZCBjb25maWd1cmF0aW9uIHNldHRpbmdzLgo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiDniLHnlJ/mtLvvvIzlv6vov57mjqUKPiDniLHlv6vmtYHmjqfot6/n
lLHvvIzllYbkuJrlnLrmma/nvZHnu5zkuJPlrrYKPiDliJjnpLzpm4QgIOi3r+eUseeglOWPkQo+
IOWumOe9ke+8mnd3dy5pa3VhaTguY29tCj4g5b6u5L+h77yaQmVpSmlYaW9uZzAwOAo+IOeUteiv
ne+8mjE1MTEwMDI5MTk0Cj4gUSBR77yaMTcyNDk3ODY2NQo+Cj4KPiBGcm9tOiBIYXVrZSBNZWhy
dGVucwo+IERhdGU6IDIwMTktMTAtMTkgMTc6NDMKPiBUbzogZGF4aW9uZzsgb3BlbndydC1kZXZl
bAo+IFN1YmplY3Q6IFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENIIDEvMV0gYnVpbGQ6IGZpeCBz
ZWxlY3QgdUNsaWJjCj4gT24gMTAvMTUvMTkgMTI6NTIgUE0sIGRheGlvbmcgd3JvdGU6Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBkYXhpb25nIDxseGxpdUBpa3VhaTguY29tPgo+ID4gLS0tCj4gPiAgdG9v
bGNoYWluL0NvbmZpZy5pbiB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvdG9vbGNoYWluL0NvbmZpZy5p
biBiL3Rvb2xjaGFpbi9Db25maWcuaW4KPiA+IGluZGV4IDk1MDg3YjcuLjBkMjg4YWEgMTAwNjQ0
Cj4gPiAtLS0gYS90b29sY2hhaW4vQ29uZmlnLmluCj4gPiArKysgYi90b29sY2hhaW4vQ29uZmln
LmluCj4gPiBAQCAtMjUyLDcgKzI1Miw3IEBAIGNob2ljZQo+ID4gIHNlbGVjdCBVU0VfVUNMSUJD
Cj4gPiAgYm9vbCAiVXNlIHVDbGliYyIKPiA+ICBkZXBlbmRzIG9uICEoYWFyY2g2NCB8fCBhYXJj
aDY0X2JlIHx8IHBvd2VycGM2NCkKPiA+IC0gZGVwZW5kcyBvbiBCUk9LRU4gfHwgIShhcm0gfHwg
YXJtZWIgfHwgaTM4NiB8fCB4ODZfNjQgfHwgbWlwcyB8fCBtaXBzZWwgfHwgbWlwczY0IHx8IG1p
cHM2NGVsIHx8IHBvd2VycGMpCj4gPiArIGRlcGVuZHMgb24gQlJPS0VOIHx8IChhcm0gfHwgYXJt
ZWIgfHwgaTM4NiB8fCB4ODZfNjQgfHwgbWlwcyB8fCBtaXBzZWwgfHwgbWlwczY0IHx8IG1pcHM2
NGVsIHx8IHBvd2VycGMpCj4gPgo+ID4gIGNvbmZpZyBMSUJDX1VTRV9NVVNMCj4gPiAgc2VsZWN0
IFVTRV9NVVNMCj4gPgo+Cj4gSSB0aGluayB0aGlzIGlzIGludGVudGlvbmFsLiB1Q2xpYmMgc2hv
dWxkIG9ubHkgYmUgYXZhaWxhYmxlIG9uIHRhcmdldHMKPiB3aGljaCBhcmUgbm90IHN1cHBvcnRl
ZCBieSBtdXNsIGxpYmMsIHdoaWNoIGlzIGN1cnJlbnRseSBvbmx5IGFyYy4KPgo+IEhhdWtlCj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
