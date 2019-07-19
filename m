Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C70C6E54E
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 14:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOmeEMIdCU6tJmaAkeKlq9JOdgd3Xast5xz+CKbnTWc=; b=BK/moRpQ4DoaJA
	PTIWR/41pN61LVfS2S6vKB7bs4gb8/GdRy4D+h8rHp6sCL8VmYuCmxE/rzFxDv4waLVSp1tT3+YNk
	osVeEECG/obPAImha29FrfQeOchVRJOU7xE5BKyYNmvQ6+SOs4RKhEtlpE1O6dbKsr0eHGw63Onpm
	dyH+rCiTSeLetWDF8081nkurHaqiNzrn5GseCLGLPcnQqxd9vUBT49TtJNOtftGPcQVPOI1XclPcM
	R29XpioTuQOJLb3lH6VvehHIXrDDtNED6bpvNwgjDrjCdiKYf6Z6vHPyaKiCOtyDv9CDbrcOJsRR2
	NhnH/aWV9iir9nEZXoog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRYi-0004Zs-Kd; Fri, 19 Jul 2019 12:00:20 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRYP-000427-4C
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 12:00:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id p15so34239482eds.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 19 Jul 2019 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NqoltyHOY08uP6Z5g7j/nApmPPP7+3JnP1xmZFNFZ2U=;
 b=WyWP/7B4T2erULcftYJNR6JxPZeBOtP7gSzcdT2soVgMT+dlo5xQmKUQ+YjsebkyIa
 /IDATuH1xS1ZlvIT+u14ADMcvAK2sk4bB7IiY6GDJV3Z6lmiC6xBfMuiigujrT0r+DWr
 c1Yc2/l6f8uuOqX6QlJoSWsxES7P6/JuHFY6qB6+BRIdo3OrQNOSzJGd8yseF18EblDU
 6lDTUjYhUrEXyPdWGyfE+FEiqOr58z80bqTerII7MZ5qJbJrsrit/SHa3wty17vfOKrK
 9TbxIGMDkNQ1nN6monH8VYqyhmPySgcDj7S52OK/QpI2/MbgMvb5xsIY5J/Pzn2qtKrG
 Kzew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NqoltyHOY08uP6Z5g7j/nApmPPP7+3JnP1xmZFNFZ2U=;
 b=CnjbzN1gUHIs7c9ReBP9F8/rc/iYrS82Zbdqn8mvEKPb+DSqM/6VJOJmDRcosvpSPM
 +91AVB6Ld420HSy9lHhCQ/q1T1JnEQcfziPCtSQFFOR8Xe5VIEO72GxdCw2SkiQoIsWp
 ZA+HSQkWdejrkFPlL7Ta5gJ+bijEqfjZlc79ph8jT5ivH9h8zOb/kMatUoQNKHqpy2nQ
 dFyChnCk4GQOIj+1b3H6FaM0Ti+YSxqVNDxWYVS+vWiz3Op0ocpTud72ziq2hTP+3EqM
 TZUlWVaVDWwtOhShWrA9lWs0BbRBy1DUiQyx+lvw8QyKCIfXtE7U/6TLLIJzJnuf6Pv9
 3UBA==
X-Gm-Message-State: APjAAAV9d/oiRX3buQRgsDreU0MnlCIK2pThq+zy2aG8cFCBgAyzTCsq
 7PWFv9icPy8MFxsuWFCe1SJ17turEeJsQ+QCyk0=
X-Google-Smtp-Source: APXvYqxz86QxgxqVRcrcTD0Hf644Pk9vqdttkNkjgXJx76kXSap8ku9LE+oGEcFlhMt4RripLvDpnFrocNp6y8Ibpec=
X-Received: by 2002:a50:aa14:: with SMTP id o20mr46251711edc.165.1563537597352; 
 Fri, 19 Jul 2019 04:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190714135037.18471-1-linus.walleij@linaro.org>
 <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
 <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
 <CACRpkdZTtpP5bxnpGOQPvLUwVYT69bp_-_E9dZLCoV3wKsu6ow@mail.gmail.com>
 <CAJN1KkyEE8NTBWY_+SVQg9sH60ZNxNKFDsZaQ7Mt88PQ+1H3Ow@mail.gmail.com>
 <CACRpkdbYzSPA9BcxThjL8NrHRoo07tdvVmaqLn4BQPw1Jfr=Yg@mail.gmail.com>
 <CAJN1KkxehcQcY7u6DqLwjRaNm-GzMO_om-0v_4+GY6w+3ZGTbw@mail.gmail.com>
In-Reply-To: <CAJN1KkxehcQcY7u6DqLwjRaNm-GzMO_om-0v_4+GY6w+3ZGTbw@mail.gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 19 Jul 2019 14:59:45 +0300
Message-ID: <CA+h21hr3niDSMES3RxzcTZgs3sg1fsgzT2+Qh+wPng4sH-zqPA@mail.gmail.com>
To: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_050001_208324_3BE4EE29 
X-CRM114-Status: GOOD (  29.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGF3ZWwsIExpbnVzLAoKT24gRnJpLCAxOSBKdWwgMjAxOSBhdCAxMjoyMiwgUGF3ZcWCIERl
bWJpY2tpIDxwYXdlbGRlbWJpY2tpQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIEZyaSwgSnVs
IDE5LCAyMDE5IGF0IDA5OjUxIExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9y
Zz4gd3JvdGU6Cj4gPgo+ID4gPiBJIHRoaW5rLCB0aGF0IHRoZSBiZXN0IGFwcHJvYWNoIGlzIHZs
YW4gZmlsdGVyaW5nLiBJIHN0YXJ0ZWQgc29tZSB3b3JrOgo+ID4gPiBodHRwczovL2dpdGh1Yi5j
b20vQ0hLRFNLODgvbGludXgvY29tbWl0LzM4YjYyNDgyZDlmODI4YjU3MjBkYjExMTQ1ZmE0NzRl
MzY4YjI0OGMKPiA+Cj4gPiBIZXkhIEkgd2FudGVkIHRvIGRvIHRoYXQgYnV0IG5ldmVyIGhhZCB0
aW1lLAo+ID4gIHNvIHZlcnkgaGFwcHkgdGhhdCB5b3UncmUgZml4aW5nIGl0IHVwISA6KQo+ID4K
Pgo+IEl0IHdvdWxkIGJlIGdyZWF0IGlmIFlvdSBmb3VuZCBzb21lIHRpbWUgdG8gdGVzdCBpdC4g
OikKPgo+ID4gPiBBdCB0aGlzIG1vbWVudCBpdCB3b3JrcyAoSSB1c2VkIGlwLWZ1bGwgYW5kIGlw
LWJyaWRnZSBwYWNrZXRzKS4gQnV0IEkKPiA+ID4gaGF2ZSBubyBpZGVhIGhvdyB0byBpbnRlZ3Jh
dGUgZHNhIHZsYW4gZmlsdGVyaW5nIHdpdGggT3BlbldSVAo+ID4gPiBjb25maWd1cmF0aW9uLgo+
ID4gPiBUaGlzIGlzIGZpcnN0IGRzYSBzd2l0Y2ggd2l0aCBEU0FfVEFHX1BST1RPX05PTkUgaW4g
T3BlbldSVC4KPiA+Cj4gPiBJIHRoaW5rIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwgbG9vayBhdAo+
ID4gY29tbWl0IGY5YmJlNDQ3N2MzMGVjZTQ0Mjk2NDM3ZWUyNjE0MmI0MmVmODA3MGIKPiA+ICJu
ZXQ6IGRzYTogT3B0aW9uYWwgVkxBTi1iYXNlZCBwb3J0IHNlcGFyYXRpb24gZm9yIHN3aXRjaGVz
IHdpdGhvdXQgdGFnZ2luZyIKPiA+IGJ5IFZsYWRpbWlyIE9sdGVhbi4KPiA+Cj4gPiBJIGludHVp
dGl2ZWx5IHRoaW5rIHRoaXMgaXMgd2hhdCB3ZSB3YW50IHRvIGRvIGluIHRoZSBlbmQgaXMgdXNl
Cj4gPiBEU0FfVEFHX1BST1RPXzgwMjFRIGJ1dCBhZG1pdHRlZGx5IEkgZG9uJ3QgdGhpbmsgSQo+
ID4gdW5kZXJzdGFuZCBWTEFOcyB3ZWxsIGVub3VnaCBmb3IgZW5hYmxpbmcgdGhpcy4KPiA+Cj4K
PiBUaGlzIGlzIHRoZSBxdWVzdGlvbiBmb3IgT3BlbldSVCBjb3JlIGRldmVsb3BlcnMuIFdoYXQg
aXMgdGhlIGJlc3QKPiBhcHByb2FjaCBmb3IgRFNBX1RBR19QUk9UT19OT05FIHN3aXRjaGVzPwo+
Cj4gRFNBX1RBR19QUk9UT184MDIxUSBvciBqdXN0IHZsYW4gZmlsdGVyaW5nIGFuZCBjb25maWd1
cmF0aW9uIHdpdGhvdXQKPiB0YWdnaW5nIHN1cHBvcnQ/IEJvdGggc29sdXRpb25zIGNhbiBnaXZl
IFlvdSBwb3J0IHNlcGFyYXRpb24uCj4KPiBQZXJzb25hbGx5IEkgcHJlZmVyIHNpbXBsZSB2bGFu
IHNlcGFyYXRpb24uIFRoaXMgbWV0aG9kIHdhcyB1c2VkIGluCj4gT3BlbldSVCBmb3IgbWFueSBu
b24tZHNhIHN3aXRjaGVzLiBCdXQgaXQgbmVlZCB0byBjcmVhdGUgQVBJIGZvciBkc2EKPiBkZXZp
Y2VzLgo+CgpJIGhhdmUgbmV2ZXIgdXNlZCBPcGVuV1JUIG9uIGEgYm9hcmQgaGF2aW5nIGFuIEwy
IHN3aXRjaCBzbyBJIGRvbid0Cmtub3cgaG93IHRyYWZmaWMgb3ZlciB0aGUgc3dpdGNoIHBvcnRz
IGlzIG1hbmFnZWQgdGhlcmUuCkluIHRoZW9yeSBpdCBpcyBwb3NzaWJsZSB0byB0cmFuc3BsYW50
IHRoZQpkc2FfcG9ydF9zZXR1cF84MDIxcV90YWdnaW5nIGZ1bmN0aW9uIGZyb20gbmV0L2RzYS90
YWdfODAyMXEuYyBpbnRvIGEKc2hlbGwgc2NyaXB0IHRoYXQgb3BlcmF0ZXMgd2l0aCAnYnJpZGdl
IHZsYW4nIG9wZXJhdGlvbnMuCkhvd2V2ZXIgeW91IHdpbGwgcXVpY2tseSBmaW5kIHRoYXQgeW91
IHdpbGwgbmVlZCB0byBkbyAnYnJpZGdlIHZsYW4KYWRkIHZpZCAke3J4X3ZpZH0gZGV2ICR7Y3B1
X3BvcnR9JyBha2EgInRhZ2dlZCBlZ3Jlc3MiIDwtIGJ1dApzdXJwcmlzZSwgdGhlcmUgaXMgbm8g
Q1BVIHBvcnQgbmV0IGRldmljZSBleHBvc2VkIHRvIHVzZXJzcGFjZS4gSSBzZWUKeW91IG92ZXJj
YW1lIHRoaXMgYnkgaGFyZGNvZGluZyB0aGUgQ1BVIHBvcnQgYXMgYSBWTEFOIHRydW5rIGZvciBh
bGwKVkxBTnMgYWRkZWQgb24gdGhlIHVzZXIgcG9ydHMuIFRoaXMgaXMgZ29pbmcgdG8gd29yayBh
cyBhIGhhY2ssIGJ1dAp5b3Ugd2lsbCBuZWVkIHRvIGFkZCAyIFZMQU4gc3ViLWludGVyZmFjZXMg
dG8gdGhlIG1hc3RlciBwb3J0IHBlcgpzd2l0Y2ggZnJvbnQtcGFuZWwgcG9ydCAtIG9uZSBmb3Ig
VFggYW5kIGFub3RoZXIgZm9yIFJYLiBPdGhlcndpc2UgeW91CndpbGwgaGF2ZSB0aGUgc3dpdGNo
IHdvcmsgYXMgc3RhbmRhbG9uZSBuZXQgZGV2aWNlcywgYnV0IHlvdSdsbCBicmVhawppdHMgY29y
ZSBmdW5jdGlvbmFsaXR5IC0gc3dpdGNoaW5nLiBBbmQgeW91J2xsIGxpa2VseSBuZWVkIHRvIGRv
CmV4b3RpYyB0aGluZ3Mgd2l0aCBhcHBsaWNhdGlvbnMgdGhhdCBuZWVkIGJpZGlyZWN0aW9uYWwg
Y29tbXVuaWNhdGlvbgpvdmVyIHN3aXRjaCBwb3J0cywgYmVjYXVzZSBpbmdyZXNzIGFuZCBlZ3Jl
c3Mgd2lsbCBoYXBwZW4gb3ZlcgpkaWZmZXJlbnQgaW50ZXJmYWNlcy4KRFNBX1RBR19QUk9UT184
MDIxUSBhYnN0cmFjdHMgYWxsIG9mIHRoYXQgYXdheSBhbmQgdGhlIHN3aXRjaApuZXRkZXZpY2Vz
IHdpbGwgbm90IG5lZWQgYW55IFZMQU4gc3ViLWludGVyZmFjZSBvbiB0b3Agb2YgdGhlIG1hc3Rl
cgpwb3J0LCBhbmQgbm8gaGFyZGNvZGluZyBvZiBWTEFOIHRydW5raW5nIG92ZXIgdGhlIENQVSBw
b3J0IGVpdGhlci4KQnV0IHRoZW4gdGhlcmUncyB0aGUgc2VtYW50aWNzIGlzc3VlIC0gdGhlIG5l
dHdvcmsgc3RhY2sgZXhwZWN0cyB0aGF0CmEgYnJpZGdlIHdpdGggdmxhbl9maWx0ZXJpbmcgZGlz
YWJsZWQgKHRoZSBkZWZhdWx0KSBwYXNzZXMgZnJhbWVzIHdpdGgKdGhlIDgwMi4xUSBFdGhlclR5
cGUgKDB4ODEwMCkgdW5tb2RpZmllZC4gSXQgYWxzbyBleHBlY3RzIHRoYXQgdGhlCnN3aXRjaCBk
b2Vzbid0IHBlcmZvcm0gcG9ydCBtZW1iZXJzaGlwIGVuZm9yY2VtZW50cyBiYXNlZCBvbiB0aGUg
VkxBTgpJRC4gVG8gYmUgY29tcGxpYW50LCB5b3UnbGwgZWl0aGVyIG5lZWQgdG8gZ28geW91ciBy
b3V0ZSBhbmQgaW5zdGFsbAp0aGUgVkxBTnMgZnJvbSB1c2Vyc3BhY2UgKGhlbmNlIHlvdSBhY3Rp
dmF0ZSB2bGFuX2ZpbHRlcmluZyB3aGljaCB3aWxsCm1lYW5zIHRoYXQgaGF2aW5nIGEgYnJpZGdl
IHdpbGwgYmUgYSByZXF1aXJlbWVudCwgZXZlbiB0aGUgInN0YW5kYWxvbmUKcG9ydHMiIG1vZGUg
d2lsbCBiZSBlbXVsYXRlZCksIGFuZCBhY2NlcHQgdGhlIGFib3ZlIGxpbWl0YXRpb25zLCBvciBn
bwp3aXRoIERTQV9UQUdfUFJPVE9fODAyMVEgYW5kIGZpZ3VyZSBvdXQgYSB3YXkgdGhhdCB0aGUg
c3dpdGNoIHBhcnNlcwphbmQgZW1pdHMgVkxBTi10YWdnZWQgZnJhbWVzIHVzaW5nIGEgZGlmZmVy
ZW50IEV0aGVyVHlwZSB0aGFuIHRoZQpkZWZhdWx0IChjYXNlIGluIHdoaWNoIHRoZSBzdGFjayB3
aWxsIG5vdCBuZWVkIHRvIGtub3cgdGhhdCB0aGUgc3dpdGNoCmlzIGRlYWxpbmcgd2l0aCBWTEFO
cyBhcyBwYXJ0IG9mIGl0cyB0YWdnaW5nIHByb3RvY29sKS4gQW5kIHdoZW4Kdmxhbl9maWx0ZXJp
bmcgaXMgZW5hYmxlZCwgeW91IGVpdGhlciBoYXZlIHRvIGV4cG9zZSB0aGUgVkxBTnMgdXNlZApm
b3IgdGFnZ2luZyB0byB0aGUgYnJpZGdlIGNvcmUsIG9yIGVuY2Fwc3VsYXRlIHRoZSBjdXN0b20g
dGFncywgb3IKZGlzYWJsZSB0YWdnaW5nLiBJZiB5b3UgY2hvb3NlIERTQV9UQUdfUFJPVE9fODAy
MVEsIHRoZXJlIGlzIG5vCnVuaXZlcnNhbCB3YXkgdG8gZW5zdXJlIHRoZSBzd2l0Y2ggdHJlYXRz
IHN0YW5kYXJkIDgwMi4xUSBmcmFtZXMKZGlzdGluY3RseSBmcm9tIGN1c3RvbSA4MDIuMVEgb25l
cyAtIHdoYXRldmVyIHdvcmtzIGFuZCBpcyBzdXBwb3J0ZWQKYnkgeW91ciBoYXJkd2FyZS4KQWdh
aW4sIHdpdGggYSBuZXR3b3JrIHN0YWNrIGZyYW1ld29yayB0aGF0IGRvZXNuJ3QgcmVseSBvbiB0
aGUgYnJpZGdlCmRyaXZlciAoSSBkb24ndCBrbm93IGhvdyBPcGVuV1JUL3N3Y29uZmlnIHdvcmtz
KSwgdGhlIHJlcXVpcmVtZW50IHRoYXQKdGhlIHN3aXRjaCBvYmV5cyB0aGUgdmxhbl9maWx0ZXJp
bmcgc2VtYW50aWNzIG1heSBiZSBtdWNoIG1vcmUgbGF4LgpGb3IgRFNBL3N3aXRjaGRldiwgaXQg
aXMgd2hhdCBpdCBpcy4KWW91IHNob3VsZCBhbHNvIGNvbnNpZGVyIHRoYXQgeW91IG5lZWQgU2hh
cmVkIFZMQU4gTGVhcm5pbmcgKGluc3RlYWQKb2YgSW5kZXBlbmRlbnQgVkxBTiBMZWFybmluZykg
aW4gb3JkZXIgbm90IHRvIGJyZWFrIGFkZHJlc3MgbGVhcm5pbmcKYW5kIGhhdmUgdGhlIHN3aXRj
aCBmbG9vZCBldmVyeXRoaW5nLgoKPiA+IEZvciBPcGVuV3J0IHVzaW5nIGtlcm5lbCB2NC4xOSBJ
IGhhdmUgbm8gaWRlYSB3aGF0IHRoZSBiZXN0IHdvdWxkCj4gPiBiZS4gSSBkb24ndCB0aGluayBW
bGFkaW1pcidzIHdvcmsgY2FuIGJlIGVhc2lseSBiYWNrcG9ydGVkLgo+ID4gSSBzdXBwb3NlIHNv
bWUgc3BlY2lhbCBoYWNrIHRvIGp1c3QgYnJpbmcgdXAgdGhlIERTQSB3aXRoCj4gPiBhIGN1c3Rv
bSBzY3JpcHQgaXMgdGhlIGJlc3QgY29tcHJvbWlzZSBmb3IgdGhlIHRpbWUgYmVpbmcuCj4gPgo+
Cj4gSSBhZ3JlZSB3aXRoIFlvdS4gQXQgdGhpcyBtb21lbnQgb25seSBoYWNrIGNvdWxkIHdvcmsu
Cj4KPgo+ID4gRllJIHRoaXMgYm9hcmQgc3VwcG9ydGVkIGJ5IE9wZW5XcnQgYWxzbyBoYXMgdGhp
cyBzd2l0Y2g6Cj4gPiBodHRwczovL29wZW53cnQub3JnL3RvaC9ldmFsdWF0aW9uLmJvYXJkcy9w
YjQ0Cj4gPiB3aXRoIGEgY3VzdG9tIGRyaXZlcjoKPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVu
d3J0L29wZW53cnQvYmxvYi9tYXN0ZXIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9maWxlcy9kcml2ZXJz
L3NwaS9zcGktdnNjNzM4NS5jCj4gPiBJdCdzIGEgTUlQUyBkZXZpY2UgdGhvdWdoLCBhbmQgSSBk
b24ndCBrbm93IGlmIGFueW9uZSBpcwo+ID4gYWN0aXZlbHkgbWFpbnRhaW5pbmcgaXQgYW5kIGNv
dWxkIHRlc3QgdG8gbWlncmF0ZSBpdCB0byB0aGlzCj4gPiBuZXcgZHJpdmVyIGFuZCBoZWxwIG91
dD8KPgo+IFBiNDQgaXNuJ3QgcG9ydGVkIHRvIGF0aDc5IHlldC4gSSB0aGluaywgaXQgaXMgYWJh
bmRvbmVkIGF0IHRoaXMgbW9tZW50Lgo+Cj4gQmVzdCBSZWdhcmRzLAo+IFBhd2VsIERlbWJpY2tp
CgpIb3BlIHRoaXMgaGVscHMsCi1WbGFkaW1pcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
