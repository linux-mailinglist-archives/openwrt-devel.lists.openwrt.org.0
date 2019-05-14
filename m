Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8191CFFC
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 21:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTmC4ZWBD7LgWCFv9di9l+DjvraIoog0pE5BDv0JBrs=; b=ERSvyofToqTMgR
	9jzhFz6UVh0lPjCZvFbxJWJTl2lnHvoGgkyORe9LKJrjd26sjRnTa2qhoQ5gbqeLt6ojVyyqo6BAg
	X6tDkyPbRciPSJLZ9pM76d7EWWpjdjUTa8cmMUPL1sgc8+FVoItnRuy1UJ2mPWzdQxHIDzfPECFDc
	fv9kCQ21CQFraW7DHA8i3FTz3ndhFgz9LYrUaUC9CsyPnuA3PLLibT8Vxoe2CQSguw9mGdUm8983L
	3m427+9EPRMrOsue1CsLxTSaL2dKFktGUajQUKshIV+xHsLakWRrFjWF0WaGPGBupcKSu2l1nV2JV
	nwWKoxe7clN6iyUysAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdBh-0002XY-9C; Tue, 14 May 2019 19:34:09 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdBa-0002X8-No
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 19:34:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id w1so355229ljw.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 12:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EIscNwH5j29i8aCG4/qNLbO9D+A4AG6dTQ/lt4z/mWg=;
 b=JanNTFS+i1wMvxFadU599w+8pY/iD4yVDAbvx+lklasECEx/gkBt7A0hgGF7vv9nDh
 sP6zxW/JSVIngZs4X/kligsBQLScpcyBzLB3W6SjM6QKJ2GAQDcOXB9/zReFiSygr0AR
 HZEf6H19FuFQ45/vdD/LzGj/wAEmVAUmOIyjYaRp6MQQfYm7GpdltKb96RqSdGzONw4q
 2XYhJLghyfJ2x13+ZGeNspj+KNqpuI71hEOOY94wVpoxB/zJBtybL79utk3bnLw9b4/m
 +TJ4z238PtN0Vqbk61jQHzMCEyW+4+Xm71nHROnu16Ai2YBDIehyx1eEN4HMZjP9bzsw
 MxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EIscNwH5j29i8aCG4/qNLbO9D+A4AG6dTQ/lt4z/mWg=;
 b=c24FhpqVNJkgcT64aDbK5rrV/IP/qoLZEW8S1iYhKlwPF9GDxIo4wvpvE5+N1cDixd
 e6yRATAvGCyEY6XChCcrHTzRBoLN55vytsH6CWa+XswBGB0SU2Sf+DIAuZB1olbnnSMx
 7wE0dzkoX4RIudbmI8FY8eyNJi7IQOtLxbyJFnmy4G+slQdikYXpZI3O8YN5gHXehnt2
 Sbj+car//KtFyhQldqHyxmAzRVZ1Wu+68YB66ARwNxd83rqXTE7+b36LOB8NqTIpd0ct
 nwd6xwyspCNxUNldMp1FHzaR1f/fNjT3ukIxzy/fFaIkS2hfPBcu8d+7YNefZAWV9juz
 aM3Q==
X-Gm-Message-State: APjAAAVquk2iLTg3QMb+a4+Pf6KAqjBe7rCcoXatm9VXFrnbSgG2EvXB
 I32Qr2WBeyvVEkzbxfRTc4craF21HME05/MhhhRnhQ==
X-Google-Smtp-Source: APXvYqzFXeG0TxFXK6IJ7HPl4Cc3LmwOdSrlPRnoJyU4h6DvyD4T4Yu+SmDZz6FGF0SXfqUyA1p1Mp+wag2eoZUgWhE=
X-Received: by 2002:a2e:890c:: with SMTP id d12mr15401771lji.107.1557862440466; 
 Tue, 14 May 2019 12:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190512191317.32061-1-linus.walleij@linaro.org>
 <20190514083038.GA31332@meh.true.cz>
 <CACRpkdZ3JBBt8qTnC5KhLm1QUPhRU1WmQggenC+RhQmkwvd5oQ@mail.gmail.com>
 <20190514120736.GB31332@meh.true.cz>
In-Reply-To: <20190514120736.GB31332@meh.true.cz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 May 2019 21:33:48 +0200
Message-ID: <CACRpkdb_Dyx02NaB1BODfzuMtGfCRSQegyrY7RZkqXXHggzu1A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, 
 Stijn Tintel <stijn@linux-ipv6.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_123402_777472_56FBD948 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Support sysupgrade on DIR-685
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

W0FkZGluZyBTdGlqbiBUaW50ZWwgYXMgREFQLTI2OTUgQTEgbWFpbnRhaW5lciwgSSB0aGluayBo
ZSB3YW50IHRvCmtub3cgaG93IHdlIHNvbHZlIHRoaXMuXQoKT24gVHVlLCBNYXkgMTQsIDIwMTkg
YXQgMjowNyBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKCj4gTGludXMg
V2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiBbMjAxOS0wNS0xNCAxMzoxNjo1MF06
Cj4gPiBPbiBUdWUsIE1heSAxNCwgMjAxOSBhdCAxMDozMCBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6PiB3cm90ZToKPiA+Cj4gPiA+IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpA
bGluYXJvLm9yZz4gWzIwMTktMDUtMTIgMjE6MTM6MTddOgo+ID4KPiA+ID4gPiArUkVRVUlSRV9J
TUFHRV9NRVRBREFUQT0xCj4gPiA+Cj4gPiA+IG9uY2UgeW91IHNldCB0aGlzLCB5b3UgZG9uJ3Qg
bmVlZCB0byBjaGVjayBmb3IgdGhlIGltYWdlIG1hZ2ljLCBkbyB5b3U/IElmIHNvLAo+ID4gPiBw
bGVhc2UgcHJvdmlkZSB0aGUgcmVhc29uIGZvciB0aGF0Lgo+ID4KPiA+IFRoZSBpbWFnZSBtYWdp
YyBpcyBuZWNlc3NhcnkgZm9yIHRoZSBib290IGxvYWRlciB0byByZWNvZ25pemUKPiA+IGFuZCBi
b290IHRoZSBpbWFnZS4gU2luY2UgZmxhc2hpbmcgYW4gaW1hZ2Ugd2l0aG91dCB0aGlzIG1hZ2lj
Cj4gPiB3aWxsIGJyaWNrIHRoZSBkZXZpY2UsCj4KPiBicmlja2luZyB0aGUgZGV2aWNlIGlzIGEg
c3Ryb25nIHdvcmRpbmcsIGFzIGJyaWNrIG1lYW5zLCB0aGF0IHlvdSBjYW4ndCB1c2UKPiBhbnkg
cmVjb3ZlcnkgbWV0aG9kIGFuZCB5b3UgcHJvYmFibHkgbmVlZCBzb2xkZXJpbmcgaXJvbiBhdCBs
ZWFzdC4gSXQgc2VlbXMgdG8KPiBtZSwgdGhhdCB5b3UgY2FuIGp1c3QgcmVuZGVyIHRoZSBkZXZp
Y2UgdW5ib290YWJsZSwgcmlnaHQ/CgpZZWFoLCB5b3UgbmVlZCBhIHNvbGRlcmluZyBpcm9uIGlm
IGl0IGdvZXMgdGhhdCBmYXIuIEEgcHJvcGVyIFVBUlQKZ2l2ZXMgYSBjb25zb2xlIHRoYXQgY2Fu
IHJlY292ZXIgdGhlIG1hY2hpbmUuCgo+ID4gSSBmZWVsIGl0IHNob3VsZCBiZSBjaGVjayBhcyBh
ICJiZXR0ZXIgc2FmZSB0aGFuIHNvcnJ5IiBtZWFzdXJlLCBzbyB3ZQo+ID4gY2Fubm90IHVuZGVy
IGFueSBjaXJjdW1zdGFuY2VzIGZsYXNoIHNvbWV0aGluZyB0aGF0IHRoZSByb3V0ZXIgY2Fubm90
IGJvb3QuCj4KPiBJIHRoaW5rLCB0aGF0IG1ldGFkYXRhIGFuZCBKU09OIHBhcnNpbmcgaXMgdGFk
IG1vcmUgY29tcGxleCBhbmQgdGh1cyBtb3JlCj4gYWR2YW5jZWQgdmFsaWRpdHkgY2hlY2tpbmcg
dGhlbiB5b3VyIHByb3Bvc2VkIGZpcnN0IDQtYnl0ZSBoZWFkZXIgY2hlY2suCj4gUmVhbGx5LCBo
b3cgY291bGQgeW91IGJlIHN1cmUsIHRoYXQgYW55IG9mIHRoZSBmb2xsb3dpbmcgYnl0ZXMgcGFz
dCB0aGlzCj4gaGVhZGVyIGFyZSB2YWxpZCwgdGh1cyBzdGlsbCB3b24ndCByZW5kZXIgZmxhc2hl
ZCBkZXZpY2UgdW5ib290YWJsZS4KClllYWggdGhlIDQgYnl0ZXMgYXJlIGp1c3QgYW4gaW5kaWNh
dGlvbiB0aGF0IHRoZSBoZWFkZXIgaXMKaW50YWN0IGFuZCB3ZSdyZSBub3QgZmxhc2hpbmcgcnVi
YmlzaC4KClRoZXJlIGlzIHNvbWUgYWRkaXRpb25hbCBjaGVja3N1bXMgZXRjIGluIHRoZSBoZWFk
ZXIgYXMgd2VsbCwKc2VlIGJlbG93LgoKPiA+IERvIHlvdSB3YW50IG1lIHRvIGFkZCB0aGlzIHRv
IHRoZSBjb21taXQgbWVzc2FnZT8KPgo+IEkgc2VlIG5vIHBvaW50LCByZWFsbHkuCj4KPiA+IElu
IHRoZW9yeSB5ZXMgYnV0IGluIHNvIG1hbnkgcHJhY3RpY2FsIHNpdHVhdGlvbnMgSSBoYXZlIG11
dHRlcmVkIHRoZSB3b3Jkcwo+ID4gInRoYXQgc2hvdWxkIG5vdCBoYXBwZW4iIGFuZCB0aGF0IGlz
IHdoeSBJIGZlZWwgaXQgaXMgYmV0dGVyIHRvIGhhdmUgZG91YmxlCj4gPiBzYWZldHkgY2hlY2tz
Lgo+Cj4gSXQgbWFrZXMgbm8gc2Vuc2UgdG8gcHJldGVuZCBhbnkgc2FmZXR5IGhlcmUsIGJvdGgg
c29sdXRpb25zICg0LWJ5dGUgaGVhZGVyCj4gY2hlY2ssIHVuc2lnbmVkIG1ldGFkYXRhKSBhcmUg
anVzdCBwb29yIG1hbidzIHdvcmthcm91bmRzLiBTaG91bGQgeW91IG5lZWQgYW55Cj4gc2FmZXR5
LCB0aGVuIGVuZm9yY2Ugb25seSBzaWduZWQgaW1hZ2VzIChvciBhZGQgc29tZSBmdW5jdGlvbmFs
aXR5IHRvIG1ldGFkYXRhCj4gaGFuZGxpbmcgd2hpY2ggY291bGQgY2hlY2sgaGFzaCBvZiBjb21w
bGV0ZSBpbWFnZSwgbm90IGp1c3QgNC1ieXRlIGhlYWRlcikuCgpBY3R1YWxseSB0aGVyZSBpcyBz
b21lIHNhZmV0eSBzaW5jZSB0aGUgRElSLTY4NSBoYXMgYWxsIHRoYXQuIEp1c3QgY2hlY2tpbmcK
dGhlIDQgYnl0ZXMgaW4gdGhlIGhlYWRlciBpcyBhIHF1aWNrIHNhbml0eSBjaGVjay4gVGhlIGNo
ZWNrIGNvbWVzIGZyb20KdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRl
L3BsYXRmb3JtLnNoCmJ5IHRoZSB3YXksIGFzIHRoZSBzYW1lIGlzIHVzZWQgaW4gIEQtTGluayBE
QVAtMjY5NSBBMS4KClRoZSBmdWxsIGhlYWRlciBmb3JtYXQgY2FuIGJlIHNlZW4gaW4gdG9vbHMv
ZmlybXdhcmUtdXRpbHMvc3JjL21rd3JnZ2ltZy5jCmFuZCBpbmNsdWRlcyBhIE1ENSBkaWdlc3Qu
IFRoaXMgTUQ1IGRpZ2VzdCBpcyBjaGVja2VkIGJ5IHRoZSBST00Kb2YgdGhlIG1hY2hpbmUgZXZl
cnkgdGltZSBpdCBib290cy4KClNvIHdoYXQgaGFwcGVucyBpbiB0aGlzIGNhc2UgaXMgdGhhdCB3
aGVuIHdlIGFkZCBhbm90aGVyIGNoZWNrc3VtCmFyb3VuZCB0aGlzIGNoZWNrc3VtbWVkIGltYWdl
LgoKSSBndWVzcyBJIGNvdWxkIGluc2lzdCBvbiB3cml0aW5nIGEgdXRpbGl0eSBpbiBDIHRvIGNo
ZWNrIHRoYXQgY3VzdG9tCk1ENSBzdW0gYmVmb3JlIHdlIGZsYXNoLCBpdCBoYXMgYSBuaWNlICJi
ZWluZyBjbG9zZSB0byB3aGF0IHRoZSB0YXJnZXQKd2FudHMiIGZlZWxpbmcgYWJvdXQgaXQuCgpC
dXQgb24gdGhlIG90aGVyIGhhbmQgaXQgY291bGQgYmUgbmljZSB0aGF0IGl0IGlzIGRvbmUKYWNj
b3JkaW5nIHRvIHRoZSBPcGVuV3J0IHN0YW5kYXJkLCBhbmQgd2hhdCByZWFsbHkgbWF0dGVycyBp
cyB0aGF0CnNvbWUgY2hlY2tzdW0gaXMgY2hlY2tlZCwgc28gSSBndWVzcyBJIHdpbGwgZ28gd2l0
aCB5b3VyIHN1Z2dlc3Rpb24KdW5sZXNzIHRoZSBEQVAtMjY5NSBBMSBwZW9wbGUgaGF2ZSBzb21l
IG90aGVyIG9waW5pb24/CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
