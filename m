Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBAC15AE7F
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 18:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olQwJKOsMw3WWPqR7vHPet04CYAfabpFj+wTjMrbfOU=; b=EOmCMQxAB9Rirn
	XMSYsDXe8Za4cC6qFySgQ+JMb+0t8aKJUmK/i0V9qFF2yUS+0q1mplRZAbQ8aTHhprerOPwBkA9GK
	tIaLcJuo4/mR3QeBx00KjJOZADtoCO2DMW1GsFj7gaCcC0xU8+k7262rtLIhN35Co4NH3kwdELL4F
	qoaM/H0vmmiJdyRZ+fEHn6/KZ4hrjZIEe8ntwjJTYlr0+lAIG8D8Yc9kE7LODDI6o/DOPokpmNMGP
	6vHuyLz3K4/OM0pcR3uL+I84F5bZUbCFqV7nemdAyWHgXTfVuGvNHGqYtTOYuTyTwWoZ/Nh38X6uD
	Yo1AexFUi4teviyjAB5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vZR-0003Qu-12; Wed, 12 Feb 2020 17:13:05 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vZI-0003QU-MX
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 17:12:59 +0000
Received: by mail-io1-xd33.google.com with SMTP id z16so3056067iod.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 09:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZvekaxV3d/YZwSEZUAjzFInwswe57S2EV7xgiOwP298=;
 b=s1z6juQhxR2g+gtuooJ2K8Jxdy/QYPaFZtjy0Uzzd4GYNAl1LjCUheniol/SYYBAUR
 B4ZXOQqvNC48x8BGLCEifyssHLdSm71/0KL65d2XkuzuuMThfdkChbGlfkWt6gJXWMUh
 2Jd8FUajGIXBC33EbKRHSMatc0a8iSftng8aLQQFvszCo41asdAeJi33J3YBBGGWEzba
 8dT1Oz11LwKtznlGKf3vHOvDcGEIGU1liwJqLjHlru5NeaNodMHp3aez/qAFPUfMlYCE
 fj0VIskgekyOQzEoz5MdqzNk2OV1vdcZnxzpp+7sieIwKB8GSjb1xR9FpWRONlxgIC2s
 hlBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZvekaxV3d/YZwSEZUAjzFInwswe57S2EV7xgiOwP298=;
 b=VBpvtYWTuinK59i8Q/0+W3572+CelnsNZougRmvS2//yJpq/zw0Cj0u6wfbFU8BHCu
 JW66i/RIgTeFBiFkPGhD/eTfxqcQVrIYbvFDXQwM58uldlrO6guYFQ12P+xHuFEObZB9
 Dzge7uLRCVYnTFolAPNfRxOPSo/dhvxV3pKalaJoVOMli3HTiF7KciCBaKx+GwwHNBiV
 b2SI3Z9s8/YECDy44Ic7haf3jdQ6XgmyzAnZHa+5qtI2cLyY6JZJ/oQJu82/5gzr3goD
 Q7v4AAjFdfz5hCO8kWRHC2CSMsmi04whgNcLue65KTPqmLg5WpRGufOHGcMqbOwli+ug
 HUBA==
X-Gm-Message-State: APjAAAWLSKo2W/9pDBJoKqc5D+UnwNN7B08CyJGP4sBgMcrmHoRT30QD
 HBDZZUiOHMZFC7Dg0TDsB4sQbB3bNq35KpHaJQE=
X-Google-Smtp-Source: APXvYqywpD+Jsfu7uA8lI+z06amdnaODdKSZOod5A61JntOTdf6EVBzAjxbxb7Hty8wsG/OB/c3DNAnXm+1YP4GyAZg=
X-Received: by 2002:a6b:760f:: with SMTP id g15mr18085069iom.56.1581527574840; 
 Wed, 12 Feb 2020 09:12:54 -0800 (PST)
MIME-Version: 1.0
References: <CACna6rwe55gmb19H+EToF_jDOEDVqDOJkzhqGW-6G61=Gn2ReQ@mail.gmail.com>
 <4d01d640-39da-6aa0-5027-2d96f7180bba@kresin.me>
 <CACna6rxfX9ObUx-XCPdgq9H+vqSVn4bZxe8J4qnRAdMtOxJ2Eg@mail.gmail.com>
In-Reply-To: <CACna6rxfX9ObUx-XCPdgq9H+vqSVn4bZxe8J4qnRAdMtOxJ2Eg@mail.gmail.com>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Wed, 12 Feb 2020 18:12:40 +0100
Message-ID: <CA+_ehUxQ90vAGNQFbdOK-YAZVEeyTQmr31ZW2TtsSE-3Q+jM1Q@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_091257_730049_96767F64 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Network broken with kernels 5.2+
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
 Jo-Philipp Wich <jo@mein.io>, Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Pgo+IE9uIFR1ZSwgMjkgT2N0IDIwMTkgYXQgMDc6MDAsIE1hdGhpYXMgS3Jlc2luIDxkZXZAa3Jl
c2luLm1lPiB3cm90ZToKPiA+IDI4LzEwLzIwMTkgMjM6MDEsIFJhZmHFgiBNacWCZWNraToKPiA+
ID4gVXNpbmcgT3BlbldydCB3aXRoIGtlcm5lbHMgNS4yKyByZXN1bHRzIGluIGJyb2tlbiBuZXR3
b3JrLiBJbnRlcmZhY2VzCj4gPiA+IHNlZW0gT0sgYnV0IEkgY2Fubm90IHBpbmcgbXkgcm91dGVy
IGFueW1vcmUuCj4gPiA+Cj4gPiA+IFRoaXMgcmVncmVzc2lvbiBpcyBjYXVzZWQgYnkgdGhlIHVw
c3RyZWFtIGNvbW1pdAo+ID4gPgo+ID4gPiBjb21taXQgYjQyNGU0MzJlNzcwZDZkZDU3Mjc2NTQ1
OWQ1YjZhOTZhMTljNTI4NiAocmVmcy9iaXNlY3QvYmFkKQo+ID4gPiBBdXRob3I6IE1pY2hhbCBL
dWJlY2VrIDxta3ViZWNla0BzdXNlLmN6Pgo+ID4gPiBEYXRlOiAgIFRodSBNYXkgMiAxNjoxNTox
MCAyMDE5ICswMjAwCj4gPiA+Cj4gPiA+ICAgICAgbmV0bGluazogYWRkIHZhbGlkYXRpb24gb2Yg
TkxBX0ZfTkVTVEVEIGZsYWcKPiA+ID4KPiA+ID4gUmV2ZXJ0aW5nIHRoYXQgY29tbWl0IGZyb20g
dGhlIHRvcCBvZiA1LjIgb3IgNS4zIGZpeGVzIG5ldHdvcmsgZm9yIG1lLgo+ID4gPgo+ID4gPiBB
bnkgaWRlYXMgd2hhdCdzIHdyb25nIHdpdGggT3BlbldydCAmIGFib3ZlIGNoYW5nZT8KPiA+ID4K
PiA+Cj4gPiBIZXkgUmFmYcWCLAo+ID4KPiA+IGFzc3VtaW5nIHlvdSBhcmUgb24gYSB0YXJnZXQg
dXNpbmcgc3djb25maWcsIHRoaXMgcGF0Y2ggc2hvdWxkIGZpeCB0aGUKPiA+IGJyb2tlbiBuZXR3
b3JrOgo+ID4KPiA+IGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvc3RhZ2luZy9t
a3Jlc2luLmdpdDthPWNvbW1pdDtoPTNhNzcyZWUyMzFlNGI0YzJjNTM3ZDhkNTQxZjAwMWI1MjQy
YjljMzUKPgo+IERvIHlvdSBtaW5kIGlmIEkgcHVzaCB5b3VyIHBhdGNoPyBJIHN1Y2Nlc3NmdWxs
eSB0ZXN0ZWQgaXQgd2l0aCA1LjQuCj4KPiAtLQo+IFJhZmHFggpJIGFsc28gdGVzdGVkIGl0IG9u
IGlwcTgwNnggYW5kIGkgY2FuIGNvbmZpcm0gaXQgZG9lcyBmaXggc3djb25maWcgbm90IHdvcmtp
bmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
