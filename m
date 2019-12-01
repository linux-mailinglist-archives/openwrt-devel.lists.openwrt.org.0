Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC71D10E3A0
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Dec 2019 22:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcRgQsnUCKh8bxtnm9vxKyBRA/qKIFKUu3HrabThazY=; b=WhVSPCGaYY6kXT
	C0qumBQ5QNr3E7Yo5BoMWLQmSqhnIuADMWfAiTzfkN3CFHxE02NHXLgZ0+waIiYOGg5BPq4U58Ztn
	isIV4FgeMdP9ldOo+zkbgOBRrGrKOIHcJE54Eny5JC8BTKycMbL1s1YC+4PFseMTwOzv3zCRfbOtR
	IFdGSLeG5Xp03lm+R1drTQw2O3+Zley2vyKR+7HFjTKtmFCXYsZRL86SIq4d9UbBfrFI4wRKvXPWa
	VCugUoY1BdihSr8cR7fbHTTugVLu3sZc3sEuZBea1uKgyb9GoQD9GtMFROrGoq0xi1lMCFeXu4lLa
	TBGg54Ea5hDCpO/D3FyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibWtQ-0006VF-PF; Sun, 01 Dec 2019 21:36:36 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibWtJ-0006Um-ST
 for openwrt-devel@lists.openwrt.org; Sun, 01 Dec 2019 21:36:31 +0000
Received: by mail-io1-xd44.google.com with SMTP id z26so34516586iot.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Dec 2019 13:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mZbfH2FOifuaEEkSSqXxZlbgi8tVXGGpO9I5c15KIHs=;
 b=dtW2ENblEX/d+UO3ZeSlb1asCNmeiCcCr5i+2yZOLngNOelr0GeNOdsWdGJigcH/6Q
 begJda5NOLIYEuGkksDW02tGyvucTXMkaiFNY3ZrJagGRUhnBSJ/5wkO76d67/O9CDy1
 yMIMVv8J8tDqhhGYUFRYhrnOGisH2dQpTeFouDT3QT8lnYCTudekxDevR6K5uCl1tt+J
 Cdh9M+u8rer53vbT2WVYvs+noFXYBIvraSwLC1i85fBDkI7K2db/OYBcEd2+e2AhNice
 PwmGwsJzI/j5ZVF37pBnELgBpOHqWEDj+ifApFMIrEOagqiiczrXiOxNawh0fAmMAMph
 No9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mZbfH2FOifuaEEkSSqXxZlbgi8tVXGGpO9I5c15KIHs=;
 b=r4gMM4TicjXAJfi+eVndSx3qieMXoXKtgjsv0wvzDz0Ma30W4BD12wq5dD2hzdGCnn
 kCT3qzoLOsNAPstB2kbC/4Rc8qxgJj4BgcH3jGzDSJh1kfuLaYNeCM9c1GnT4uanvmlr
 GuYiZ/6SiQMSLEW8JK72qUswFRl3sMyqiv87nsRupknqqPoz6rwinOHcm0j6dxgVVksW
 yzQIEUCA096PJSJGNhPdhtnh0NP9DjaxTw0bOuGjIRSSXWodoGhcxIqffGJ9Gxj2eNEr
 kMtvFZrr/qpoIRYWQC64KWp76iFLXkLJ8N3wNHh5TZqo+HZo/sd35Zs6/TOdKUUGALO9
 yjJQ==
X-Gm-Message-State: APjAAAUw/bm71VWT5pup79ak+18LZ5pTFMjKbNJ8TyJhy4LbGzkgdNj+
 0XFC1LlEzuFD6ynowntzMhVkHSn50AJPPq5s/qc=
X-Google-Smtp-Source: APXvYqzAsxqIO/aFdNJ1a6bBkrEomBdMYDSNl+4Sb2XXvr7kRuzb3ELkZj1YfbfxT5Pe56tA+ouhdCX0WlD1u2BdK+U=
X-Received: by 2002:a5d:97c9:: with SMTP id k9mr1772405ios.297.1575236187074; 
 Sun, 01 Dec 2019 13:36:27 -0800 (PST)
MIME-Version: 1.0
References: <20191127150503.GA61235@meh.true.cz>
 <CACRpkdbErhbNkQMK8haf=ZdSoLO55ke2FxErDJeknRKGVB6S0A@mail.gmail.com>
 <2d00043f-3b17-3be2-98b0-e7c8c2215b94@gmail.com>
In-Reply-To: <2d00043f-3b17-3be2-98b0-e7c8c2215b94@gmail.com>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Sun, 1 Dec 2019 22:36:15 +0100
Message-ID: <CA+_ehUxznewv_aN0Raozt1WLByUv2WtMAbs44xGdXkfY16v9cg@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_133629_921207_56BB5A60 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
 Linus Walleij <linus.walleij@linaro.org>,
 Pawel Dembicki <paweldembicki@gmail.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QUZBSUsgbm9ib2R5IGlzIHdvcmtpbmcgb24gdGhpcy4gSSB0aGluayB3ZSBzaG91bGQgcmVhbGx5
IHN0YXJ0IHdvcmsKb24gdGhpcyBhcyB3ZSBhcmUgc3RhcnQgdGFsa2luZyBhYm91dCBrZXJuZWwg
NS40IHdoZXJlIG12ZWJ1IG9yIGlwcQpwbGF0Zm9ybSBoYXZlIG1hdHVyZSBkc2EgZHJpdmVyCgpJ
bCBnaW9ybm8gZG9tIDEgZGljIDIwMTkgYWxsZSBvcmUgMjI6MjYgRmxvcmlhbiBGYWluZWxsaQo8
Zi5mYWluZWxsaUBnbWFpbC5jb20+IGhhIHNjcml0dG86Cj4KPgo+Cj4gT24gMTEvMjcvMjAxOSA3
OjI3IEFNLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+ID4gT24gV2VkLCBOb3YgMjcsIDIwMTkgYXQg
NDowNSBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPiA+Cj4gPj4gd2hh
dCdzIHRoZSBzdGF0ZSBvZiB0aGlzPyBJdCdzIG5vdCBjbGVhciBmcm9tIHRoZSBkaXNjdXNzaW9u
LCB0aGFua3MuCj4gPgo+ID4gU2FkbHkgSSdtIGFzIGNvbmZ1c2VkIGFzIHlvdSBhcmUuIEknbSBz
Y3JhdGNoaW5nIG15IGhlYWQgYWJvdXQKPiA+IHdoYXQgdG8gZG8uIEkgc3VzcGVjdCB0aGUgcHJv
YmxlbSB3aWxsIG9ubHkgZ2V0IGJpZ2dlciBhcyBtb3JlCj4gPiBEU0Egc3dpdGNoZXMgYXBwZWFy
IGluIHRoZSBMaW51eCBrZXJuZWwuCj4KPiBJdCBzZWVtcyB0byBtZSB0aGF0IHdlIGFyZSBzdGls
bCBtaXNzaW5nIHNvbWV0aGluZyBjcml0aWNhbCBmb3IgdXNlcnMKPiB3aGljaCBpcyBjb252ZXJ0
aW5nIGEgc3dpdGNoIGNvbmZpZ3VyYXRpb24gc3ludGF4LCBzdWNoIGFzOgo+Cj4gY29uZmlnIHN3
aXRjaAo+ICAgICAgICAgb3B0aW9uIG5hbWUgJ3N3aXRjaDAnCj4gICAgICAgICBvcHRpb24gcmVz
ZXQgJzEnCj4gICAgICAgICBvcHRpb24gZW5hYmxlX3ZsYW4gJzEnCj4KPiBjb25maWcgc3dpdGNo
X3ZsYW4KPiAgICAgICAgIG9wdGlvbiBkZXZpY2UgJ3N3aXRjaDAnCj4gICAgICAgICBvcHRpb24g
dmxhbiAnMScKPiAgICAgICAgIG9wdGlvbiBwb3J0cyAnMSAyIDMgNCA1dCcKPgo+IGNvbmZpZyBz
d2l0Y2hfdmxhbgo+ICAgICAgICAgb3B0aW9uIGRldmljZSAnc3dpdGNoMCcKPiAgICAgICAgIG9w
dGlvbiB2bGFuICcyJwo+ICAgICAgICAgb3B0aW9uIHBvcnRzICcwIDV0Jwo+Cj4gaW50byBhbiBh
cHByb3ByaWF0ZSBzdWNjZXNzaW9uIG9mIGlwcm91dGUyIGNhbGxzIChwb3NzaWJseSB3aXRoIGEg
VkxBTgo+IGF3YXJlIGJyaWRnZSkuCj4KPiBJcyBhbnlvbmUgd29ya2luZyBvbiBicmlkZ2luZyB0
aGF0IGdhcCBhdCB0aGlzIHBvaW50Pwo+IC0tCj4gRmxvcmlhbgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
