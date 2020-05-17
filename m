Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3621D6BA3
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 19:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y+wVbVU1LjPhiCp4Ue7uWUNrcbgjyhl1VnCJ/MZz7Y=; b=pj7L2CudMKwvzt
	jyaq9jhrlBh+aXN59FBKtgq4Xqw6ENk8g+CoeN6xzjywemyLcMoamIO6ZewFAD3oflRFhqIfKv6O2
	8NF8XoRVaI0EE+ss2CcIPNuWn9KtfVkHjzuTvkC7hHTXYCKMedYFMiDuKmh1ck3YVid0vyB+Wr9lZ
	ryhOLXRm9BUqw8oeCxMtIDY9xiojZBad4c03aByxYsu3JoCD4RUjZuEWETL1jY4Nou38UrwQJrURS
	5hfHm2xu9EEtEhpzuTnkh/MW9fSG0BWzmUVC1kx3Pmw+YtE2vQunx1hco2LXGKY2MNxbMu2ShOS5b
	d4j/zRWXhTnuI0QZE/bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaNX9-0004Lf-MW; Sun, 17 May 2020 17:57:07 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaNX3-0004LJ-4r
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 17:57:02 +0000
Received: by mail-yb1-xb44.google.com with SMTP id r128so4080775ybc.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 10:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P/e6X9QY/k1tHh0cTV3keuiRrDBMCWUE7zA1pgIsX1A=;
 b=usparpB76eB0gQlVQnJvTR/gjN8W1iqdUwNjTdpNJrNLnY1xByw3HmiLwhcksvOfuv
 ZvVbp+HCdhX/kPh77loh8GO4Ih37Y/x5swoq2SNFwqQI/JuYXMgOOg3xkL5diO6F0ydu
 Etg8ZylC9oidgo4j72hys7EN1sx/ns+VmtoEyY+FT42g0flgI3PFWUC97/rsAY2lILHa
 P/9/p8JgjTAIkFGvyuhybXQlH55OyiblXbSAZMVXuz8pvovdYKj791Ra8lKAAoTIQ0N4
 7oOZWrBc6E4FFj89dmEgWElqYsGQzZ9ixdWx1vfQr1z2SbgTYQslDAGtjWciIcCKVPfu
 L/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P/e6X9QY/k1tHh0cTV3keuiRrDBMCWUE7zA1pgIsX1A=;
 b=TRfTvd6X3ZfktOspon4xNkrOiHBqRR4un8QaEdNjlJ1llGu4A6lZNPQbc3QKPSqRMi
 OtUNelPOGRClMhh/Smk1+E1ZU6e1AbCfXD7pNlGX329wN27tFly87PAMmijUhKxbQRnX
 qBOu7O4NBRtCiSwvJgM5ZgIqCtVSbNsYoH9Ir6Oto03b8YIalV4nWFWB5UYCCm0BZV3o
 fypF7WufBV16PGIpJ+sRMZQJKRJGiGEHeWon4Dm4TJxevbu1XzyHXGKNJcrCJ5Bxzms+
 gny9g1dwaefwMhqkXeT0z2e+M4+SMLXGlad2YwlW9Ibd6ayElfjKn1IIcYYacfUBqpMq
 CIog==
X-Gm-Message-State: AOAM530RImX2wnWHlmEY2CIQBtwACyckRGyf7CpRovaaG+jFQ/J6AjDm
 rPuWqjnrDLFZbeQ6h0jiOd0wBxzLNIk5n4EOPZ8=
X-Google-Smtp-Source: ABdhPJybRSkpgcG6izdnNmfFbtesFfOj3dfXE8TT6DrceAaya/iYAaW+vHiD0hujL82Jrmk8Q6A9rBZJU+ht5CvpH44=
X-Received: by 2002:a25:ec08:: with SMTP id j8mr19159573ybh.281.1589738218832; 
 Sun, 17 May 2020 10:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <3676440.c42S0g3a1G@tool>
 <00d001d62c6c$ac971180$05c53480$@adrianschmutzler.de>
In-Reply-To: <00d001d62c6c$ac971180$05c53480$@adrianschmutzler.de>
From: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
Date: Sun, 17 May 2020 19:56:47 +0200
Message-ID: <CABwr4_sbkxbeGbqkkzivydHfO2RuJ16zgGbg==FrDWrE07Ca=Q@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_105701_191235_03470A1D 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the image
 generation
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
Cc: openwrt-devel@lists.openwrt.org,
 =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQWRyaWFuLAoKRWwgZG9tLiwgMTcgbWF5LiAyMDIwIGEgbGFzIDE5OjAwLCA8bWFpbEBhZHJp
YW5zY2htdXR6bGVyLmRlPiBlc2NyaWJpw7M6Cj4KPiBIaSwKPgo+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPiA+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0bzpvcGVud3J0LWRldmVs
LWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddCj4gPiBPbiBCZWhhbGYgT2YgRGFuaWVsIEdvbnrD
oWxleiBDYWJhbmVsYXMKPiA+IFNlbnQ6IFNvbm50YWcsIDE3LiBNYWkgMjAyMCAxODo1Mgo+ID4g
VG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiA+IENjOiBub2x0YXJpQGdtYWls
LmNvbQo+ID4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gYmNtNjN4eDogTGl2ZWJv
eDE6IHJlZW5hYmxlIHRoZSBpbWFnZQo+ID4gZ2VuZXJhdGlvbgo+ID4KPiA+IFRoaXMgb2xkIEJD
TTYzNDggZGV2aWNlIHN0aWxsIHJ1bnMgcXVpdGUgZmluZSB3aXRoIE9wZW5XcnQgc25hcHNob3Rz
IHdoZW4KPiA+IHRoZSBib2FyZCBpcyBtb2RkZWQgd2l0aCA2NE1CIG9mIFJBTS4KPiA+Cj4gPiBS
ZWVuYWJsZSB0aGUgaW1hZ2UgZ2VuZXJhdGlvbiBhbmQgYWR2ZXJ0aXNlIHRoZSBtb2QgaW4gdGhl
IGltYWdlIGZpbGVuYW1lCj4KPiBPcGVuV3J0IGRvZXMgbm90IG9mZmljaWFsbHkgc3VwcG9ydCBt
b2RkZWQgZGV2aWNlcy4gSWYgeW91IHJlcXVpcmUgc29tZXRoaW5nIGxpa2UgdGhhdCwganVzdCBi
dWlsZCB0aGUgYXBwcm9wcmlhdGUgaW1hZ2UgeW91cnNlbGYuCgpJIHdhcyd0IGF3YXJlIG9mIHRo
YXQgcnVsZS4gSSB0aG91Z2h0IHRoaXMgcHJvamVjdCB3YXMgZW5nYWdlZCB3aXRoCnRoZSBzcGly
aXQgb2YgaGFja2luZyAoc29mdHdhcmUgb3IgaGFyZHdhcmUpLiBGdXJ0aGVybW9yZSwgb25lIG9m
CmZlYXR1cmVzIHdoaWNoIGxlYWRlZCBPcGVud3J0IHN1Y2Nlc3Mgd2FzIHRoZSBoYXJkd2FyZSBt
b2RkaW5nLgpXaXRob3V0IGhhcmR3YXJlIG1vZGRpbmcgYSBsb3Qgb2YgZGV2aWNlcyBjb3VsZG4n
dCBiZSBzdXBwb3J0ZWQuIFRoaXMKZmFjdCBoYXMgbm8gZGlzY3Vzc2lvbiBmb3IgbWUuCgpBcHBh
cnQgZnJvbSB0aGF0LCB0aGlzIGlzIHRoZSBvbmx5IG9uZSBkZXZpY2UgaW4gdGhlIGJjbTYzeHgg
dGFyZ2V0CndpdGggUmVkYm9vdCBzdXBwb3J0LiBXaXRob3V0IHRoZSBpbWFnZSBnZW5lcmF0aW9u
IGl0IHdpbGwgYmUKZGlmZmljdWx0IHRvIHRlc3Qgb3RoZXJ3aXNlLiBUaGVyZWZvcmUgdGhlIHN1
cHBvcnQgc2hvdWxkIGJlIGFsc28KZHJvcHBlZCBmb3IgdGhpcyBrZXJuZWwgc3VidGFyZ2V0IGlm
IG5vIG9uZSBjYXJlcyBhYm91dCB0ZXN0aW5nIHRoZQpzbmFwc2hvdCBpbWFnZXMgYXBwYXJ0IGZy
b20gbWUuIFRoaXMgaXMgYSBiaXQgc2FkLCBidXQgd291bGQgbWFrZSBtb3JlCnNlbnNlLgoKT2Yg
Y291cnNlIEkgY2FuIGJ1aWxkIG15IG93biBpbWFnZXMuIEJ1dCBJIGRvbid0IG1ha2UgdGVzdHMg
b3IgZml4Cmlzc3VlcyBvbiB0aGlzIGRldmljZSBvbmx5IGZvciBteXNlbGYgYnV0IGFsc28gZm9y
IG90aGVycy4gU28sIHdpdGggbm8KaW1hZ2UgZ2VuZXJhdGlvbiBJIHdpbGwgcHJvYmFibHkgc3Rv
cCB0ZXN0aW5nIHNuYXBzaG90cyBvbiB0aGlzCmRldmljZS4gQXMgYSByZXN1bHQgb2YgdGhpcywg
SSB3b24ndCBlaXRoZXIgZGV0ZWN0IGFuZCBmaXggb3RoZXIKaXNzdWVzIG9uIHRoaXMgdGFyZ2V0
IGFzIEkgbWFkZSBpbiB0aGUgcGFzdC4KCj4gRGVzcGl0ZSB0aGF0LCBJIGRvbid0IHRoaW5rIHRo
ZSB3YXkgeW91IG1vZGlmeSB0aGUgaW1hZ2UgbmFtZSB3b3VsZCBmaXQgdGhlIG5hbWluZyBsb2dp
YyBvbiB0aGF0IHRhcmdldCB2ZXJ5IHdlbGwuCgpOb3Qgc3VyZSBhYm91dCB3aGF0J3Mgd3Jvbmcg
d2l0aCB0aGlzIG5hbWluZyBsb2dpYy4gSSBtYWRlIGl0IHRoZSBtb3N0CmNvbmNpc2UgYW5kIGxl
c3MgZGlzcnVwdGl2ZSBJIGNvdWxkLgoKUmVnYXJkcy4KCkRhbmllbC4KCj4KPiBJIHdpbGwgbWFy
ayB0aGlzIHBhdGNoIGFzIFJlamVjdGVkLiBTb3JyeS4KPgo+IEJlc3QKPgo+IEFkcmlhbgo+Cj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1ZXVA
Z21haWwuY29tPgo+ID4gLS0tCj4gPiAgdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNtNjN4
eC5tayB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNt
NjN4eC5tawo+ID4gYi90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9iY202M3h4Lm1rCj4gPiBp
bmRleCBkNTYwMWUyYzNjLi4xZTViMGI5Nzc2IDEwMDY0NAo+ID4gLS0tIGEvdGFyZ2V0L2xpbnV4
L2JjbTYzeHgvaW1hZ2UvYmNtNjN4eC5tawo+ID4gKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgv
aW1hZ2UvYmNtNjN4eC5tawo+ID4gQEAgLTc1OSw3ICs3NTksNyBAQCBkZWZpbmUgRGV2aWNlL2lu
dmVudGVsX2xpdmVib3gtMQo+ID4gICAgREVWSUNFX01PREVMIDo9IExpdmVib3ggMQo+ID4gICAg
U09DIDo9IGJjbTYzNDgKPiA+ICAgIERFVklDRV9QQUNLQUdFUyA6PSAkKEI0M19QQUNLQUdFUykg
JChVU0IxX1BBQ0tBR0VTKQo+ID4gLSAgREVGQVVMVCA6PSBuCj4gPiArICBJTUFHRV9OQU1FID0g
JCQoSU1BR0VfUFJFRklYKS02NFJBTV9tb2QtJCQoMSkuJCQoMikKPiA+ICBlbmRlZgo+ID4gIFRB
UkdFVF9ERVZJQ0VTICs9IGludmVudGVsX2xpdmVib3gtMQo+ID4KPiA+IC0tCj4gPiAyLjI2LjIK
PiA+Cj4gPgo+ID4KPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiA+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
