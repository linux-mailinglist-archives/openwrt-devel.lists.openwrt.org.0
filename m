Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB10471EF
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 21:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3haGhCd/cirsH1oMpm162n68hLapoKEGwRTzEptoGIQ=; b=D+LyxAD5ae51uw
	1lH4ZeHPREO0K6WPE8DE++0rbrFULFXOcDcsk3SVISL9abyKTcxIZ1Rlq718/Zf6Jej0jjcVWMcYk
	femI4tKbMCFhf9eL2Ytis9HjI85nC7is5dQBXwBPce7xoPq7jJys8NnDWexq5sPaXSUoQuLZzgFyX
	I2T0NhGEEXG5vkOma/R+4l7zFMwwPxakjODI/BxhZD3zEtgASxn8R2La+gG6MTGiSKlNg0Q8udpoa
	kUokyspx9wfZHTL0KBvBxhGCxHUsYB/P9NlOcI0m4D+fhjnTe9h1DUhIEUdy20V4vRs/dxfwHtyzZ
	aZSsfm9iUimTgW082Nig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcESd-0003fi-Eu; Sat, 15 Jun 2019 19:35:35 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcESO-0003fC-Ls
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 19:35:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id i125so3873187qkd.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun 2019 12:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=B2+rdbj2fYX6u22piouwJlWBVgwUiwdJIzJoOmcK03k=;
 b=bAxrPJufAmCn2isYZDBDQojC69o3acJzlG/w4sKHYIysEfan672ZALrLRX6y80AEEm
 S2a1JGbI5iUBUTYji8zzxHqJSGCoO4HSQvaZnhy3gvFlul+Gf0MHGQWYII+MpnWxNLsd
 huGn0BpuvR2cVo2/N5bRWu7Hfz7updfj8LnwQ4eEizxezY5BkL7rfRhlIZllK8DW96sO
 HdaUc81SZVX5BbS5RMhKdbiEcd6KjDCoUA7LhDINiCuByD/Tf3mHahN5ykzEEySUuv21
 /WGKsU5xcRSOFnXv08/iKkGD3DUIMR4kvJ0Pd2+jrgxdoCmV6fBJrH4kluYlCvYJKANy
 CVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=B2+rdbj2fYX6u22piouwJlWBVgwUiwdJIzJoOmcK03k=;
 b=nz6GON/pzA51KogCTJW234C6CukguOox8DQ4kaPOliUlHZgKn2t+Qg2f03D1oK0JkM
 DpZQ5+v1UKGIxMhWmEPMNLemQRx4tA914f2jcupjB9XPKkTm2NAyZIbgeCP3xo+99TuZ
 hJrQG2M38Dgr3wq9hWv3aB/7xzoL5zndujPV/wG9Nsh/fi/XZnermhvGfPK3262pjXct
 d3MjHi0SnpHfFNqmQvdizjFf5yP0yflFQ/IjpuoR9fVucyjIg90rJat8YXXMa0Zzm4yJ
 1D++gug59MJUc5EAgYyItPkL6AzmcFJJbSbn1HwqDkSfT91PcJnqlpH5RWV5BHGE/1SJ
 7agA==
X-Gm-Message-State: APjAAAWQQe1CGL0fhsHlyidkqF2Nu8G4iPw8tQHoWba/OZVR3myaWqvl
 9Jd/W/i25Dvktfydptk9rOBvZB/B3X3xs8KqJPOQ5g==
X-Google-Smtp-Source: APXvYqzIqblqtc/Wsu1ePDypwAVy0AZJUz3pgRIXb78cGNDHuPPmea+iBmiaulerer205IK3J5jOmJpscTByOFX4SAA=
X-Received: by 2002:ae9:f303:: with SMTP id p3mr16625816qkg.320.1560627318970; 
 Sat, 15 Jun 2019 12:35:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190614110947.10540-1-avalentin@marcant.net>
 <20190614110947.10540-3-avalentin@marcant.net>
In-Reply-To: <20190614110947.10540-3-avalentin@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 15 Jun 2019 21:35:08 +0200
Message-ID: <CAJLcKsGT23Knu=PzbP3q9KfPPa-2eKsEOWYEgGqz7FdKhVcBtw@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Valentin?= <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_123520_742979_98308D68 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] netsupport: improve xfrm module
 support
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBGcmksIEp1biAxNCwgMjAxOSBhdCAxOjEwIFBNIEFuZHLDqSBWYWxlbnRpbiA8YXZh
bGVudGluQG1hcmNhbnQubmV0PiB3cm90ZToKPgo+IC1zd2l0Y2ggdG8gbW9kdWxlIGF1dG9wcm9i
ZQo+IC1leGNsdWRlIDQuOSBrZXJuZWwKPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBWYWxlbnRp
biA8YXZhbGVudGluQG1hcmNhbnQubmV0Pgo+IC0tLQo+ICBwYWNrYWdlL2tlcm5lbC9saW51eC9t
b2R1bGVzL25ldHN1cHBvcnQubWsgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2tlcm5lbC9s
aW51eC9tb2R1bGVzL25ldHN1cHBvcnQubWsgYi9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVz
L25ldHN1cHBvcnQubWsKPiBpbmRleCAyMDYxNmQ5YWY2Li45NzMyZWUwZDczIDEwMDY0NAo+IC0t
LSBhL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5tawo+ICsrKyBiL3Bh
Y2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5tawo+IEBAIC0zODYsMTAgKzM4
NiwxMCBAQCAkKGV2YWwgJChjYWxsIEtlcm5lbFBhY2thZ2UsaXA2LXZ0aSkpCj4gIGRlZmluZSBL
ZXJuZWxQYWNrYWdlL3hmcm0taW50ZXJmYWNlCj4gICAgU1VCTUVOVTo9JChORVRXT1JLX1NVUFBP
UlRfTUVOVSkKPiAgICBUSVRMRTo9SVBzZWMgWEZSTSBJbnRlcmZhY2UKPiAtICBERVBFTkRTOj0r
a21vZC1pcHNlYzQgK2ttb2QtaXBzZWM2IEAhTElOVVhfNF8xNAo+ICsgIERFUEVORFM6PStrbW9k
LWlwc2VjNCAra21vZC1pcHNlYzYgQCFMSU5VWF80XzE0IEAhTElOVVhfNF85CklzIHRoZXJlIGEg
cmVhc29uIHdoeSB5b3Ugd2FudCB0byBleGNsdWRlIGtlcm5lbCB2ZXJzaW9uIDQuOSBhcyBpbgpt
YXN0ZXIgYWxsIHRhcmdldHMgd2lsbCBiZSBzd2l0Y2hlZCB0byA0LjE5IGFuZCBhZmFpayBubyB0
YXJnZXRzIHdpbGwKdXNlIDQuOQoKSGFucwo+ICAgIEtDT05GSUc6PUNPTkZJR19YRlJNX0lOVEVS
RkFDRQo+ICAgIEZJTEVTOj0kKExJTlVYX0RJUikvbmV0L3hmcm0veGZybV9pbnRlcmZhY2Uua28K
PiAtICBBVVRPTE9BRDo9JChjYWxsIEF1dG9Mb2FkLDMzLHhmcm1faW50ZXJmYWNlKQo+ICsgIEFV
VE9MT0FEOj0kKGNhbGwgQXV0b1Byb2JlLHhmcm1faW50ZXJmYWNlKQo+ICBlbmRlZgo+Cj4gIGRl
ZmluZSBLZXJuZWxQYWNrYWdlL3hmcm0taW50ZXJmYWNlL2Rlc2NyaXB0aW9uCj4gLS0KPiAyLjEx
LjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
