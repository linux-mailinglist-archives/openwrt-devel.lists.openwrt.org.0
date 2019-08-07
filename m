Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB88F846DB
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 10:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/Ngi9O7d0iS2BEZDCFi0u7oGAi+THGlKp1XJToF6XA=; b=VsDsJ+LxG9aHSF
	COsoWDPCEpiMk6J0rxTE/6iVUMToRM11UZLo4cKcOOecMD1SocMmTUK8eZXSx/hsoQI4aqBx9caUK
	L7f/ODrRk5IXBXAySw+MVH5meHb/f0SCUWhaoaGk7m6QY6kJwFE9N0fUilg06aHD0Gr7IljM4SNKY
	f1Mbgf9/LBiuokgd6+Sie3oty0sp7s9AbuZXfohhDxKxKQItb0tLaySdujlIUUrAO2kREcymZkGH7
	VMjjkue3piPMB17XsR/85+5k5xWB6K+IvjgiJ60UmZibtRPLoKvHBWY9zYOBmy7KRjmY3+64s7ioL
	xnaD0CFwjIljr8AhQfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvH09-0004IG-JW; Wed, 07 Aug 2019 08:08:53 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGzx-0004HX-3e
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 08:08:44 +0000
Received: by mail-qt1-x843.google.com with SMTP id d17so8511880qtj.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 01:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z9+5qxXSA+P+i6+dm/0T3J6ITfT0I6ZyUk5q38WdTWE=;
 b=aSwJ0hNI5H+bc1wEBtL4PM/PAoHtr7x1f2DtlG/yTPQNCnWztNOyy0s0mnx2Bg1dGW
 k+fZvxZJw/DdSGpyYkPolhZzpUGsctX9DeI4pKTLgn1WHnXn+0wPERa3IN7euV3SQDjr
 fMh53zn3utVqf0Ud3OuB5y7Fw9YPaS5DINpeBEvX8JNUX975LLtrSFX4sbjCsAXti2G5
 hYCVtlkG9ER/NmXQj9EnqrUu/UeDmXNn+rKJShoCN7TQHLwA9MAdVy59S2xJ0WMYtmBR
 zDCS9u0l/BjaN8qXlnJQFJiA4w/lNcr5m+r4EtjdM5pmaXra/ubbJRN9RrRkS6tJ1nYL
 pvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z9+5qxXSA+P+i6+dm/0T3J6ITfT0I6ZyUk5q38WdTWE=;
 b=PqUWanBFODWxjOf1w60REcyfOXDVf3t8p3dGGYIQJIW4z/RnLdLRKVyKPVC/N23rRn
 YM62iFJcd9eRQklF7wuYshLVN13tb/i9kxFJhun3uOoLZXh1fPnJs4UOnSSY6JwUI/62
 In50Mzv//sKWty5YMs4J2Q650v07BqVPoKaQVWpDpNWDDBQVozyt516PFN8V6/0wxkx/
 hNBWCppljCSQW4BzKWK4Dt/HbB3UzaL/5vBo1z8jXe1e89u6ydLHGisnwbckdc5KQIBM
 +spZXWpacjrkNbi1nWZrmBbLj/WGrOeLUg+Erx6+mVNYu+kgTxCRNi62bAyTChAMOF+b
 Bhpg==
X-Gm-Message-State: APjAAAW2lciykYj+Xms7f/W3YBNGEwr4oddhIHQBFM+q/4MyAf2WWMjq
 9sEEhS+0j3/BJd6EtzL6aVrB5KfLDziP3yaiuYE=
X-Google-Smtp-Source: APXvYqyjbUTjHzQrfWBLxIU9jmzMMJNBNKwN7ri441IYm8r/X0ltJubDRTCPvOd68fPGVMRlcgkaTCPATpJAEQ66qjo=
X-Received: by 2002:aed:23ac:: with SMTP id j41mr6775896qtc.200.1565165319505; 
 Wed, 07 Aug 2019 01:08:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190805160745.4269-1-mail@aparcar.org>
In-Reply-To: <20190805160745.4269-1-mail@aparcar.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Wed, 7 Aug 2019 10:08:28 +0200
Message-ID: <CAJLcKsH-wxhtZEXgujratOr-C+fHcTx93jzM0KZro+iVXmdmeg@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_010841_177221_7F0D54AE 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] procd: fix shutdown when running in a
 container
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
Cc: Mikael Magnusson <mikma@users.sourceforge.net>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjA5IFBNIFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2Fy
Lm9yZz4gd3JvdGU6Cj4KPiBBcHBsaWVzIHBhdGNoIGZyb20gQG1pa21hIFswXSB0byBmaXggRG9j
a2VyIHNodXRkb3duLiBBZGRlZCBkZXRlY3Rpb24gdG8KPiBzdGF0ZS5jIGlmIHJ1bm5pbmcgaW4g
YSBjb250YWlucmUgb3Igbm90Lgo+Cj4gVGVzdGVkIHdpdGggYSB4ODYvNjQgRG9ja2VyIGltYWdl
Lgo+Cj4gRml4ZXMgRlMjMjQyNQo+Cj4gQ0M6IE1pa2FlbCBNYWdudXNzb24gPG1pa21hQHVzZXJz
LnNvdXJjZWZvcmdlLm5ldD4KPiBDQzogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPgo+
IFswXTogaHR0cHM6Ly9naXRodWIuY29tL21pa21hL2x4ZC1vcGVud3J0L2Jsb2IvbWFzdGVyL3Bh
dGNoZXMvcHJvY2QtbWFzdGVyLzAwMDMtZG9ja2VyLWZpeC1wcm9ibGVtLXN0b3BwaW5nLWNvbnRh
aW5lci5wYXRjaAo+Cj4gU2lnbmVkLW9mZi1ieTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIu
b3JnPgpQYXRjaCBhcHBsaWVkIHdpdGggc29tZSBzdHlsZSBjaGFuZ2VzCgpIYW5zCj4gLS0tCj4g
IHN0YXRlLmMgfCAyNSArKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zdGF0
ZS5jIGIvc3RhdGUuYwo+IGluZGV4IGNjZjQxMDQuLmI3Y2JhODggMTAwNjQ0Cj4gLS0tIGEvc3Rh
dGUuYwo+ICsrKyBiL3N0YXRlLmMKPiBAQCAtMjAsNiArMjAsNyBAQAo+ICAjaW5jbHVkZSA8c3lz
L3R5cGVzLmg+Cj4gICNpbmNsdWRlIDxzaWduYWwuaD4KPgo+ICsjaW5jbHVkZSAiY29udGFpbmVy
LmgiCj4gICNpbmNsdWRlICJwcm9jZC5oIgo+ICAjaW5jbHVkZSAic3lzbG9nLmgiCj4gICNpbmNs
dWRlICJwbHVnL2hvdHBsdWcuaCIKPiBAQCAtMTU3LDE4ICsxNTgsMjIgQEAgc3RhdGljIHZvaWQg
c3RhdGVfZW50ZXIodm9pZCkKPiAgICAgICAgICAgICAgICAgZWxzZQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIExPRygiLSByZWJvb3QgLVxuIik7Cj4KPiAtICAgICAgICAgICAgICAgLyogQWxs
b3cgdGltZSBmb3IgbGFzdCBtZXNzYWdlIHRvIHJlYWNoIHNlcmlhbCBjb25zb2xlLCBldGMgKi8K
PiAtICAgICAgICAgICAgICAgc2xlZXAoMSk7Cj4gKyAgICAgICAgICAgICAgIGlmKCFpc19jb250
YWluZXIoKSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIC8qIEFsbG93IHRpbWUgZm9yIGxh
c3QgbWVzc2FnZSB0byByZWFjaCBzZXJpYWwgY29uc29sZSwgZXRjICovCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgc2xlZXAoMSk7Cj4KPiAtICAgICAgICAgICAgICAgLyogV2UgaGF2ZSB0byBm
b3JrIGhlcmUsIHNpbmNlIHRoZSBrZXJuZWwgY2FsbHMgZG9fZXhpdChFWElUX1NVQ0NFU1MpCj4g
LSAgICAgICAgICAgICAgICAqIGluIGxpbnV4L2tlcm5lbC9zeXMuYywgd2hpY2ggY2FuIGNhdXNl
IHRoZSBtYWNoaW5lIHRvIHBhbmljIHdoZW4KPiAtICAgICAgICAgICAgICAgICogdGhlIGluaXQg
cHJvY2VzcyBleGl0cy4uLiAqLwo+IC0gICAgICAgICAgICAgICBpZiAoIXZmb3JrKCApKSB7IC8q
IGNoaWxkICovCj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmVib290KHJlYm9vdF9ldmVudCk7
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgX2V4aXQoRVhJVF9TVUNDRVNTKTsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAvKiBXZSBoYXZlIHRvIGZvcmsgaGVyZSwgc2luY2UgdGhlIGtlcm5l
bCBjYWxscyBkb19leGl0KEVYSVRfU1VDQ0VTUykKPiArICAgICAgICAgICAgICAgICAgICAgICAg
KiBpbiBsaW51eC9rZXJuZWwvc3lzLmMsIHdoaWNoIGNhbiBjYXVzZSB0aGUgbWFjaGluZSB0byBw
YW5pYyB3aGVuCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICogdGhlIGluaXQgcHJvY2VzcyBl
eGl0cy4uLiAqLwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICghdmZvcmsoICkpIHsgLyog
Y2hpbGQgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlYm9vdChyZWJvb3Rf
ZXZlbnQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX2V4aXQoRVhJVF9TVUND
RVNTKTsKPiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgd2hpbGUgKDEpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzbGVlcCgxKTsK
PiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBleGl0
KDApOwo+ICAgICAgICAgICAgICAgICB9Cj4gLSAgICAgICAgICAgICAgIHdoaWxlICgxKQo+IC0g
ICAgICAgICAgICAgICAgICAgICAgIHNsZWVwKDEpOwo+ICAjZWxzZQo+ICAgICAgICAgICAgICAg
ICBleGl0KDApOwo+ICAjZW5kaWYKPiAtLQo+IDIuMjAuMQo+Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
