Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9331D10E46A
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Dec 2019 03:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1tqjpo+k76zI0+Iy4avOpp/gEsQWxd9EipmEi1bUkE=; b=VV4Enco8BOYn1c
	IaU/tYn9FN5Dj65oKexV1PaAnMrDdWz0P/cvamqjSDn/aB3nsT8u9LxDapOotNIziaUAGxHS9omGv
	DFi+HOzquuv5WtpDC3WNfbipN9Hpq+ZtFsSXvWtSY80hbcsj/+LHI9Wvb8W0cBrgZEvYDwdll93DV
	b3PKOw2aMgakpBUew19F6b2d7zRiJli9D9Wx0pDJBGMnGK84lfE+UHnxalHzgJOx13UxHBe1x6c9w
	FyMnFb9952l4JIsSyRYjDBA/uBUPYrkw90opQmdpAEUoBVoUUKgj4REtrqRQ+9oUFmXJrmFqPX9yV
	FhRPrHmf3OVMArnNg+eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibb8v-0005yW-1E; Mon, 02 Dec 2019 02:08:53 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibb8n-0005y7-GG
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 02:08:46 +0000
Received: by mail-pj1-x1041.google.com with SMTP id v93so12925950pjb.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Dec 2019 18:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=v6nQt/1PcsBPP284iUWxL840i78a75LbTfjDymNVW3E=;
 b=R5tx53JDtD4bL7tBxAKpfjHX8/9xbpcZ/IAHPRCrtpyyCs0sc9sVnGnVxFTgEGIivR
 GWHH9TQdv6l0utk4sE2biYBSPk/0BtGp7VHlaRatPgpquqAiuyDvNGjcDR2vawgZwpKC
 TW6Z3BWTsMAdwDoXcE2gsRwJQYVoMFslK6ELog0wBopM+40dvWuV5iRe9r0nezx74uyG
 aMrq38dM91S6XiOdgapMhwmPI0v8KcZn+PYt6tFTy0XpPYbnqihNS/KmdQmGwiD9QCsj
 xJvK9r9F9DXr6vJxBKn18ReG7peXGDRVCijtiPxHS/wJeS0AM3PqFOeOz7EobAe6R7AZ
 hiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=v6nQt/1PcsBPP284iUWxL840i78a75LbTfjDymNVW3E=;
 b=fChV54K2Zn3w9LvuUD7om7UqrpyLn1VPTXuRetAhRdPc2LAF2vu+UnY98vLH52bjF+
 qjx7AXtKJ/60nxaUOfUWneAiIKYAHq1fauYo5eg5f+Hl1OQ6fIZMQ+lhCil54eXk+hMb
 s4Dx43UTbzXog4ugbjLU9jCauLmyBAmp02tF6jtcZt80vUju7XCljsKSXuqVcYAwgkTg
 2A7IzjfiwfX2zRlnc+OqQCXTt0WpyeKi/ofWH68OkX4eEogclHqXvCMECh9AW7BdDNpv
 mJ5mctYDHiqBo8NIv9JBCRqIOUCeIJhQRVj/SLeGWwn0aUsau9txRJ5/vy4DZEi3ha1j
 En/g==
X-Gm-Message-State: APjAAAUjDa+B+baU2eqFN9DUXM54+6DR42dOC428X+MeBG0Wk4kC6OkN
 YWAvUhfxtXKL3QBwqTnLrxQ=
X-Google-Smtp-Source: APXvYqya+GiZHE44Tl79VjtMdruf2V9rdGzhHV9s8X0P9M2JRAn9L97uXxDhmKW5NwbGX/vcz9pBNQ==
X-Received: by 2002:a17:902:74c7:: with SMTP id
 f7mr23479944plt.231.1575252523765; 
 Sun, 01 Dec 2019 18:08:43 -0800 (PST)
Received: from ?IPv6:2002:452a:d6::3de1:e563:9780:5f5f?
 ([2002:452a:d6:0:3de1:e563:9780:5f5f])
 by smtp.gmail.com with ESMTPSA id h7sm15341949pfq.36.2019.12.01.18.08.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Dec 2019 18:08:42 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Rosen Penev <rosenp@gmail.com>
X-Mailer: iPhone Mail (16G130)
In-Reply-To: <CAOiHx=n7UFajKV6oZWY0x=r+za3TNPr00nLHiBSjhavdXsXk-A@mail.gmail.com>
Date: Sun, 1 Dec 2019 18:08:40 -0800
Message-Id: <756A17B2-9B28-4911-9FE1-E79F659F87FD@gmail.com>
References: <20191129210634.4066-1-rosenp@gmail.com>
 <CAOiHx=n7UFajKV6oZWY0x=r+za3TNPr00nLHiBSjhavdXsXk-A@mail.gmail.com>
To: Jonas Gorski <jonas.gorski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_180845_567397_FB69A22D 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] firewall: Fix Wformat-nonliteral warning
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cj4gT24gRGVjIDEsIDIwMTksIGF0IDU6NTUgQU0sIEpvbmFzIEdvcnNraSA8am9uYXMuZ29yc2tp
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4gSGksCj4gCj4+IE9uIEZyaSwgMjkgTm92IDIwMTkgYXQg
MjI6MDYsIFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiB3cm90ZToKPj4gCj4+IEFsbG93
cyBHQ0MgdG8gY2hlY2sgdGhlIGZvcm1hdHMgYnkgc3dpdGNoaW5nIHRvIGEgZGVmaW5lLCB3aGlj
aCBpcyBhCj4+IGNvbnN0YW50IGV4cHJlc3Npb24uCj4+IAo+PiBGaXhlczoKPj4gCj4+IHdhcm5p
bmc6IGZvcm1hdCBub3QgYSBzdHJpbmcgbGl0ZXJhbCwgYXJndW1lbnQgdHlwZXMgbm90IGNoZWNr
ZWQKPj4gWy1XZm9ybWF0LW5vbmxpdGVyYWxdCj4+ICAyMDcgfCAgc25wcmludGYoYnVmLCBzaXpl
b2YoYnVmKSwgdG1wbCwgaW5jbHVkZS0+cGF0aCk7Cj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBSb3Nl
biBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPj4gLS0tCj4+IGluY2x1ZGVzLmMgfCAxMCArKysr
Ky0tLS0tCj4+IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4+IAo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZXMuYyBiL2luY2x1ZGVzLmMKPj4gaW5kZXggMjNi
MjI0NC4uMWU3NTlmYiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZXMuYwo+PiArKysgYi9pbmNsdWRl
cy5jCj4+IEBAIC0xODgsMTEgKzE4OCwxMSBAQCBydW5faW5jbHVkZShzdHJ1Y3QgZnczX2luY2x1
ZGUgKmluY2x1ZGUpCj4+IHsKPj4gICAgICAgIGludCBydjsKPj4gICAgICAgIHN0cnVjdCBzdGF0
IHM7Cj4+IC0gICAgICAgY29uc3QgY2hhciAqdG1wbCA9Cj4+IC0gICAgICAgICAgICAgICAiY29u
ZmlnKCkgeyAiCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICJlY2hvIFwiWW91IGNhbm5vdCB1
c2UgVUNJIGluIGZpcmV3YWxsIGluY2x1ZGVzIVwiID4mMjsgIgo+PiAtICAgICAgICAgICAgICAg
ICAgICAgICAiZXhpdCAxOyAiCj4+IC0gICAgICAgICAgICAgICAifTsgLiAlcyI7Cj4+ICsgICAg
ICAgI2RlZmluZSB0bXBsIFwKPj4gKyAgICAgICAgICAgICAgICJjb25maWcoKSB7ICIgXAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAiZWNobyBcIllvdSBjYW5ub3QgdXNlIFVDSSBpbiBmaXJl
d2FsbCBpbmNsdWRlcyFcIiA+JjI7ICIgXAo+PiArICAgICAgICAgICAgICAgICAgICAgICAiZXhp
dCAxOyAiIFwKPj4gKyAgICAgICAgICAgICAgICJ9OyAuICVzIgo+IAo+IGRlZmluZXMgYXJlIGds
b2JhbApVbmZvcnR1bmF0ZWx5IAo+ICwgc28gdGhleSBzaG91bGQgYmUgYXQgdG9wIG9mIHRoZSBm
aWxlLCB1c2UgY2FwcyBmb3IKPiB0aGUgbmFtZSwgYW5kIGhhdmUgYSBsZXNzIGdlbmVyaWMgbmFt
ZSB0aGFuICJ0ZW1wbCIgKG9yICJmb3JtYXQiKS4KPiBTYW1lIGNvbW1lbnQgZm9yIHRoZSBvdGhl
ciBwYXRjaGVzIGRvaW5nIHRoZSBzYW1lIHRoaW5nLgpJ4oCZbGwgc2VlIGFib3V0IGRvaW5nIHRo
YXQuCj4gCj4gCj4gUmVnYXJkcwo+IEpvbmFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
