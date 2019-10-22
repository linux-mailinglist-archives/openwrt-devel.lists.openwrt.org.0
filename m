Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AB4DFD15
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 07:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckQJaK6VJPLJv5HK8eC7eP+54kLgzALZPNfFhwHJTMg=; b=Q+a/6El7UTrA71
	5h1lUQI2eiH8csj2Wv4gkSI1TYS4tSZ5Fpz4nbx8S6GNSjY06W0aBF3C5/Luaq0tiZ4UfQfF+SXHP
	sk0UMs5C6/mAOSeG+X58YWFWxUAOQzmjbwnfUaStB20v7ZWkoVrb5XY2SQzP+iIueBlrwnsS/bkoM
	4tbULIqTXf3Slp9ALEc1+AFqplMSkyKJ4TcW4rU+cCxXgi2i5JUbMCHKGKFMsmEwkHFHgaIWYNGTk
	UKao4RN5b5Y2DRzuiuTFvv3lKvq8Ch3ZSKS/+8prZUji7DSt/4HqLaur3liR0hoTDIDNSbw16JbJy
	mz/BiS77QytIVSZU4BLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMmes-0007Qz-7p; Tue, 22 Oct 2019 05:24:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMmel-0007QU-IK
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 05:24:33 +0000
Received: by mail-lj1-x244.google.com with SMTP id j19so15723627lja.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 22:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=On9y/JfljUbQ1kT3zEmImfA4FdTRRrYRC6rfRlvuGaA=;
 b=UTGcFvhZIbrIxs5D4mLLlSkZt+EDT595EHFyMgBfBZsXqnCijdLZ2xyWlV+uEiXZhJ
 UGh2VtJjmYifk6nNw1qZ3KpsFbxfkCxC/+f7MpvDYwSHaCMuNzRZS479TUiPKcNGtzhi
 KvctGcN0DYMpm1hAlcVqMmLcerWajyVVbkBPLINyXDCUjECVR+YYbkofVnf1Wp/vfRJ0
 8uptUc9afrMmumamkNP5XbSQdnExg4n45h1HHX/fH8vo83VWaf3WsjMU9lV2kN6Nb2lO
 f2M6rpWDPi8Xefsl7Ztc6eqnaaJMEj4QKF2gFrQTTVJUR0Bwe7aPkDUkMPe2JdtQOLKj
 UFTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=On9y/JfljUbQ1kT3zEmImfA4FdTRRrYRC6rfRlvuGaA=;
 b=YHJEbcOVyFHzZhIHHtAkucapedqpyIu/hMeBGGlyeCFL1K6xWxocHlUnddv06SPelP
 HkRgLukr0xE+ub9RoesJxQ76EnDHYNJfqcnhzOsHXXQdPsw0dyQ77rugZxh8XZa7d3Is
 ATShwUzSKOgwK4kjXaeES3nwZWMdRo5N3otZQbeU02qkVGyaEw+IV0AJXP9pv2JxCWjm
 8dFhkFiPg/7Am3bwgqptls5R3P1Lssx8c4jtmgD3GUel5wz/nqtqZdK4KOdtDDNdjXe9
 vQAz4TRqOQixbdymcWouQ7nt4YoS2EKCnkRqpnwlHN+9xuMUFW5/0IeVpPcvZAburcf5
 w9vg==
X-Gm-Message-State: APjAAAX4n9IJUnwQAfMXz9ub9ZzZOxzzya7Efq3NQRK0GN/XRj8/xZYH
 4XR/v5Y/5FSZUMy7hVuKPio4Qngn5jUQW8flIWg=
X-Google-Smtp-Source: APXvYqwOSj6LF54pG9YMxyyR7KLgFW1rPoV+elvr01hyr9J1uP4GGLRkNLbCQQwo/RYRu0bDsSimrbkBsQk5F4yb/Oo=
X-Received: by 2002:a05:651c:209:: with SMTP id
 y9mr16925037ljn.134.1571721867304; 
 Mon, 21 Oct 2019 22:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
 <20191021125924.37223-2-yszhou4tech@gmail.com>
 <20191022042614.GA76509@meh.true.cz> <20191022044914.GB76509@meh.true.cz>
In-Reply-To: <20191022044914.GB76509@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 22 Oct 2019 13:24:15 +0800
Message-ID: <CAECwjAh3yQgj6c8sUphug75A6CJcghJRk0yP3xsqt6xs3EOv0Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_222431_632108_A26F0274 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH rpcd v2 6/6] main: exec_self: make clang
 analyzer happy
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCAyMiBPY3QgMjAxOSBhdCAxMjo0OSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiBbMjAxOS0xMC0yMiAw
NjoyNjoxNF06Cj4KPiA+IFlvdXNvbmcgWmhvdSA8eXN6aG91NHRlY2hAZ21haWwuY29tPiBbMjAx
OS0xMC0yMSAxMjo1OToyNF06Cj4gPgo+ID4gYWxtb3N0IGhhcHB5Ogo+ID4KPiA+ICBtYWluLmM6
NjU6MTogd2FybmluZzogUG90ZW50aWFsIGxlYWsgb2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgJ2Fy
Z3MnCj4gPgo+ID4gZGlmZiAtLWdpdCBhL21haW4uYyBiL21haW4uYwo+ID4gaW5kZXggMTJjYjRj
NWM3MjBjLi44YjExNDE4ZjFjMDkgMTAwNjQ0Cj4gPiAtLS0gYS9tYWluLmMKPiA+ICsrKyBiL21h
aW4uYwo+ID4gQEAgLTYyLDYgKzYyLDcgQEAgZXhlY19zZWxmKGludCBhcmdjLCBjaGFyICoqYXJn
dikKPiA+Cj4gPiAgICAgICBzZXRlbnYoIlJQQ19IQU5HVVAiLCAiMSIsIDEpOwo+ID4gICAgICAg
ZXhlY3YoY21kLCAoY2hhciAqIGNvbnN0ICopYXJncyk7Cj4gPiArICAgICBmcmVlKGFyZ3MpOwo+
ID4gIH0KCkdvb2QgY2F0Y2ggOykKCj4KPiBTbyBJIHdlbnQgYWhlYWQgYW5kIEkndmUgcHV0IHNv
bWUgbW9yZSBmaXhlcyBvbiB0b3Agb2YgeW91cnNbMV0gYW5kIGl0J3MgYWxsCj4gZ3JlZW4gbm93
WzJdLiBJJ3ZlIG9ubHkgY29tcGlsZWQgdGVzdCBpdCwgc28gdGhlIHF1ZXN0aW9uIGlzLCBpZiBp
dCdzIHN0aWxsCj4gZ29pbmcgdG8gd29yayA6LSkKPgo+IDEuIGh0dHBzOi8vZ2l0bGFiLmNvbS95
bmV6ei9vcGVud3J0LXJwY2QvY29tbWl0cy95c3pob3U0dGVjaC9tZW1vcnktaXNzdWVzLWZpeGVz
Cj4gMi4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtcnBjZC9waXBlbGluZXMvOTA0
MzIzMzAKPgo+IC0tIHluZXp6CgpUaGFua3MgZm9yIHRoZSByZXZpZXcuICBJIGFkZGVkIGEgZmV3
IGNvbW1lbnRzIHRoZXJlLgoKU2luY2UgeW91IGhhdmUgZ290IHRoZSB0b29scyByZWFkeSwgcGxl
YXNlIGZlZWwgZnJlZSB0byB0YWtlIG92ZXIgdGhlCnNlcmllcyBhbmQgbWFrZSBmaXh1cCwgc3F1
YXNoZXMgYXMgeW91IGxpa2UgOykgIE1lYW53aGlsZSwgcGxlYXNlCmNvbnNpZGVyIHNlbmRpbmcg
dXBkYXRlZCBwYXRjaGVzIHRvIHRoZSBtYWlsaW5nIGxpc3QgZm9yIGVhc2llcgpyZXZpZXcuCgpS
ZWdhcmRzLAogICAgICAgICAgICAgICAgeW91c29uZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
