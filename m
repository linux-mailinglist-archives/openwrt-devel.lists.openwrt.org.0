Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D61591E9
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 15:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtiUE22dkOSpVGb+7AQcYVBOdJTeAe96rg3rB6GnmT8=; b=KDKfaA8UsQ+Dwq
	bLGuVXMdWfzTNKV/y+cSS2VsSbyrBAw5KGIU6V3CWfmQ+SNvBDRsG8qsqoY6VR1Ljrj9CizLkSqYZ
	bbcqtyzYxg7PHIuiYcI/ozCsyh7MVnyzRmMgrxHDWtxhNu0ntHBUCOQKluDI8tBY/PZX4ryRue3bE
	cshYvrSOc4M5RgjlxlzLCEamn6V7cu52BJEmuP9SmjMzCg9GlYB3KuHhnLh8iLRs1ogMdsXaO5ki/
	CxIHbURLroO8/jDVjSdA1Wvgkc0yEcZeVvFs34b2kEYh88M6A4/yk/8Z2ySxavjcessMeRfUyqRWB
	gBoFGbUEU6Pc9GKYZIUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WVp-0004og-86; Tue, 11 Feb 2020 14:27:41 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WVj-0004oF-Ve
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 14:27:37 +0000
Received: by mail-oi1-x244.google.com with SMTP id q84so12970738oic.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Feb 2020 06:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=um8j78k1WE6OqI2u2BAdMAShgNcvOxru3Pgtf+30Klg=;
 b=q0TEDJcTjtBbZlP/DT06u46iEbHbdWw+z9et4KOzhgB75C9Iv/4sinV25zWTUpVkdK
 p65LVf6s0mbgWkZPeja4aWWr68nB0HzFxffC6LTfWZAxaYEjzIARpbtKXO2Vq27QuGKm
 x2sEkLUDFAA5KskIp0jCo6wUIBKdxQ3n4uRg6Btq8/iciKMhh3vc+aVdfhdJ128Xcvyi
 Yvq4lit1TUSSDTVOwFD2z0BgleLakRYes94Ckc725LmfPqygpHReygWmimcDKZTVnXUf
 1YxV1/N6VOHKP2iDU51rBmFGmz0lmDgnv2r9Gs67/EfUq7gYfrL4pUarqJtTWkXH1KJ7
 /B1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=um8j78k1WE6OqI2u2BAdMAShgNcvOxru3Pgtf+30Klg=;
 b=e2g0MC2Bq21Q3MepQqWqFjpInw5x/zmIvrHDwU1lfj73aMiPRdPeswQkEhN3SZu8Pb
 1A1Ej3k7WzWCdCtYHFlNZr71XHfRejYm42QfhpJc7X6VOWhsGtbdfT0FyPJLBHqIq/D5
 YIz6PXpO5Qb+qwmM/S0eG3REX8CfUv2zrvdb7w7lwYo415VlAQaTs2yOFHOYKlEXM5eR
 fWry5dMveDLL+r30Qf1js6cDYBn0DaOfjSoTvPBpvHrrEVs8PRQ5BaHyc5+vgmXDlZSC
 i2uR36MsnZaG3X42g7WOI107nATJnQiu2039DYtLd5oX/gAGGSDCA+tyJj9PJzTJdCiW
 CJZg==
X-Gm-Message-State: APjAAAVRkdpUz4FAsfzBOzcyaYf+ObuzsDMMKK/KeIAiiQicO4gnm2Ue
 8RGY6Sdzuli+T/c0l4Zr5Z4e4SL8yEqMSGNGIqk=
X-Google-Smtp-Source: APXvYqybH6VzVNYdTsOcf/u+NnZpmYw2T0eMl3ps6JLSW10hcuByh735kbOiwe+xcmJcLUHsOzYYWOtoR3edoNhC7bo=
X-Received: by 2002:a54:4791:: with SMTP id o17mr2882252oic.70.1581431254177; 
 Tue, 11 Feb 2020 06:27:34 -0800 (PST)
MIME-Version: 1.0
References: <20190714114140.18320-1-kristian.evensen@gmail.com>
 <20200211130449.GA25902@meh.true.cz>
In-Reply-To: <20200211130449.GA25902@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Tue, 11 Feb 2020 15:27:23 +0100
Message-ID: <CAKfDRXhb=LPUozxPvGD0nwYp=-ASgt8SHVQpYQUhGmLV3QgCmg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062736_045491_FD67D9DF 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kristian.evensen[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Update nftables & clean up
 dependencies
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
 Rosen Penev <rosenp@gmail.com>, Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBUdWUsIEZlYiAxMSwgMjAyMCBhdCAyOjA0IFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+IHdyb3RlOgo+ID4gKiBDbGVhbnMgdXAgdGhlIG5mdGFibGVzLWRlcGVuZGVuY2ll
cyBpbiBuZXRmaWx0ZXIubWsuIEFsbCB0YXJnZXRzIGFyZQo+ID4gbm90IGF0IDQuMTQrLCBzbyB0
aGVyZSBpcyBubyBuZWVkIHRvIHNwZWNpZnkgZm9yIGV4YW1wbGUgImdlIDQuOS4wIiBvcgo+ID4g
a2VlcCAibHQgNC45LjAiIGFyb3VuZC4KPiA+ICogRml4IGJ1aWxkaW5nIHN1cHBvcnQgZm9yIG5m
dGFibGVzIHNldHMuIEluIDQuMTggdGhlIGNvbmZpZ3VyYXRpb24KPiA+IHN5bWJvbCBjaGFuZ2Vk
IGZyb20gQ09ORklHX05GVF9TRVRfUkJUUkVFIGFuZCBDT05GSUdfTkZUX1NFVF9IQVMsIHRvCj4g
PiBDT05GSUdfTkZfVEFCTEVTX1NFVC4KPgo+IFNvbWUgb2YgdGhlc2UgaGFzIGJlZW4gcHJvYmFi
bHkgZml4ZWQgaW4gMGUwNTA5M2IxMmVmLCBjYW4geW91IGNoZWNrIGFnYWluPwo+IFRoYW5rcy4K
ClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjay4gSSB3aWxsIHRyeSB0byBmaW5kIHNvbWUgdGltZSB0
byB3b3JrIHdpdGgKbmZ0YWJsZXMgaW4gdGhlIG5vdCB0b28gZGlzdGFudCBmdXR1cmUgOikKCkty
aXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
