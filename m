Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F894265B
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 14:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifHK8kqQKyYoIzLMSX5PxHaKTpwZOFNHqSUQQnTIlSI=; b=e8kPkK5/rgK+YN
	RX/CDcMORykBnNwu90XGLcg3i6HOcg7SQsQ7tn91uyqM6fIHQzbUzBwWjUgtwXeCfaW1qxUG7y9WA
	DS5UCEfBdAfHaW1UfZH2SPxTvlJubYaVL4JlHruR+z7XQmP4k/GG8JXjYOCmcCJ1zDBmUJu+KM7Pl
	6by83t3xYvlE8/kLBKAHBnpXSd8QsoMwtS82MK3pZRbjv2ATKpJSFnAuaFmGXgjnyBq0nWRPmrSGk
	Hp/MVaqrViSicvIyamUB3V9Q1ABjqRBIA0LNrkjpAtcUcP49M9WJGk8xBMZDanARAHxx7AonaopMv
	mrLhX7GdDszR+jv9yOcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2fT-0002sh-Bz; Wed, 12 Jun 2019 12:47:55 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2eE-00028p-V8
 for openwrt-devel@bombadil.infradead.org; Wed, 12 Jun 2019 12:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lMAp04XFoYTo0y5MHImjyieaRf3UoArEeGtzR8R4MOc=; b=QuxRp9wbF8QfcaxWPTo28AFfcA
 bUFWnQ1E8SEgBVGA0krFRtSl2TzMl0Pm6/atvXMcFunw2W0+LvcmaBo2Fy5505mTZyBQJDV+geb/K
 64H8CdlGhM/H89OUu2HC+tWlkO4BI12Ow8JSjEjuwhIoN8C9xgVw+YfA0PlyC3z5jLRdHIV4M+6EK
 46XkCwTDbyItQlm5QUXfgpaS6uFHhp6ueJ2jekwXLumZG7F7tZl7yM8gMxJeFcawPqg8EzNv8bmPe
 uwI7NGnIeYrKso5Wa27Sg5hMCRo6elAORiiMFbHj9Lwnei5YfR1uCT13ga+Etot755yLJ8BbhvC+i
 uvgLW90Q==;
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2e9-0003oQ-0V
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 12:46:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so6395985wmg.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 05:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lMAp04XFoYTo0y5MHImjyieaRf3UoArEeGtzR8R4MOc=;
 b=hC8hunI1UV5QxbKQOI73uv4FaOKkaMv/bzLdjsi4efig3CV7JFrGX5vSRCyujvR0gf
 ruTfRjVcafXU8SoqwascXrGfjMNH9Hp3yYKYYNpLunXPwUjBJthEHv9+Giu8jivSd8B0
 Y5SD6wty/kLMdLT3It12wPKJsaQXrsc0Peieg+3P1XI2gQQ0tGlFtWp3g2V77/8h7QoW
 leGGihY9UqaWa8zKyfffBj2oDwfK6coOjTfmuwgoDssXJzXQnJgC9H+e3q2II3CpB436
 08peK+rLdBOYXcIqb6QzSSoThUSFeWvNMJUOX9CQCTIAmhtFFSeQe3Dni6nO7atGOOlP
 ETnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lMAp04XFoYTo0y5MHImjyieaRf3UoArEeGtzR8R4MOc=;
 b=k3gHwhSJ0rEfsYnK9sHaOxLGGQVJZiqK/598QptXejYcdGdsyk+MfVoHewtFDnyMWf
 BiRxGF+Ww1N5QXhbyAWN4zoZ3bp78M3neAetqyFvfPsHp7WSRRYykAs1rJqCjODayjYY
 OFR6+x8igeAC8VaZXnJO2fc42X+UTXB3ZeeYaQ7n5N/B1PDdOkPOwh0TmTOaLGuEi9sW
 57ObVkovBUH4JnhWtwnAP5600Ar8itXjIBvTpkpPJn/10Do2bJh8+m9RTZ9DpYbxsqmo
 MJGUV8PC/oLeieRmkKZI0OX6ruINd0XsYBYBEHVvKk9SBkiZoiZRhb4OumD061trm3Wi
 +K2g==
X-Gm-Message-State: APjAAAWrIqjCOLJ+JyTeHzv/GNv6dx3GDf26Oc+7nK881H0QLlDBQa8A
 T+58pbW49mUfpgPeo8zLx/XUWt03ey0L8eM/6nJomw==
X-Google-Smtp-Source: APXvYqzE3IfrIgctmXVewj9E46jCKq05gJgHBsUbr7zsbGM2soFaWlZxvq6yINkyrN71gEvC76kREuy6UKOrNteD5bw=
X-Received: by 2002:a7b:c40c:: with SMTP id k12mr6506864wmi.122.1560343592358; 
 Wed, 12 Jun 2019 05:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20181229055126.GA9794@makrotopia.org>
 <20181230102658.GA89802@meh.true.cz>
 <20190101165624.GA1360@makrotopia.org> <20190101194625.GB5744@meh.true.cz>
 <20190107090306.GA2815@makrotopia.org> <20190107110054.GB429@meh.true.cz>
 <CAOiHx=kKuZDJxufGQEpb7AAnr3kg06YARqU6pT1AdN9Z+iPEGQ@mail.gmail.com>
 <20190107142032.GB1158@makrotopia.org>
 <CAOiHx=kM0KXayngViP+x0LFJFOWYem5Q=FqFgWD3U0dcZF0bRw@mail.gmail.com>
 <20190107144827.GD1158@makrotopia.org> <20190115144158.GB6178@makrotopia.org>
 <CAOiHx=kdZ5Gv6PchmMPEFVmSWyFdhFx6ZZcvUnvsh7GTp810+Q@mail.gmail.com>
In-Reply-To: <CAOiHx=kdZ5Gv6PchmMPEFVmSWyFdhFx6ZZcvUnvsh7GTp810+Q@mail.gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 12 Jun 2019 14:46:25 +0200
Message-ID: <CAOiHx==-FLDqV7xx6jZ=ac4RctXrT=mQVqDUj_iCEvDaHY4dkw@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_134633_102845_B32E9B6F 
X-CRM114-Status: GOOD (  55.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] config: enable some useful features on
 !SMALL_FLASH devices
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 Daniel Engberg <daniel.engberg.lists@pyret.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCA2IEZlYiAyMDE5IGF0IDEzOjEyLCBKb25hcyBHb3Jza2kgPGpvbmFzLmdvcnNraUBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCAxNSBKYW4gMjAxOSBhdCAxNTo0MiwgRGFuaWVs
IEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IHdyb3RlOgo+ID4KPiA+IEhpIEpvbmFzLAo+
ID4KPiA+IE9uIE1vbiwgSmFuIDA3LCAyMDE5IGF0IDAzOjQ4OjI5UE0gKzAxMDAsIERhbmllbCBH
b2xsZSB3cm90ZToKPiA+ID4gT24gTW9uLCBKYW4gMDcsIDIwMTkgYXQgMDI6Mzk6MjZQTSArMDAw
MCwgSm9uYXMgR29yc2tpIHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwgNyBKYW4gMjAxOSBhdCAxNDoy
MSwgRGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IHdyb3RlOgo+ID4gPiA+ID4K
PiA+ID4gPiA+IE9uIE1vbiwgSmFuIDA3LCAyMDE5IGF0IDAxOjE3OjM0UE0gKzAwMDAsIEpvbmFz
IEdvcnNraSB3cm90ZToKPiA+ID4gPiA+ID4gT24gTW9uLCA3IEphbiAyMDE5IGF0IDExOjQyLCBQ
ZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+IERhbmllbCBHb2xsZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPiBbMjAxOS0wMS0wNyAx
MDowMzowOV06Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBIaSwKPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+ID4gT25lLiBUaGUgTVQ3NjIxIEVWQi4gVGhlIFRQLUxJTksgUkUzNTAgdjEg
Y2FuIHByb2JhYmx5IGJlIGNvbnZlcnRlZCB0bwo+ID4gPiA+ID4gPiA+ID4gYSBtb3JlIHNhbmUg
Zmxhc2ggcGFydGl0aW9uIGxheW91dCB0byBnYWluIGFub3RoZXIgbWVnYWJ5dGUgb3Igc28uCj4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJJ3ZlIGxvb2tlZCBvbmx5IGF0IG10NzYyMSwgc28g
dGhpcyB3YXMganVzdCBleGFtcGxlIGZyb20gb25lIHN1YnRhcmdldCBvZgo+ID4gPiA+ID4gPiA+
IHJhbWlwcyB0YXJnZXQuIFNvIEkgdGVuZCB0byBiZWxpZXZlLCB0aGF0IHRoZXJlJ3MgcXVpdGUg
bW9yZSBzdWNoIGNhc2VzIGhpZGRlbgo+ID4gPiA+ID4gPiA+IGluIHRoZSB0cmVlLiBQbGVhc2Ug
Y29ycmVjdCBtZSBpZiBJJ20gd3JvbmcuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IFdo
eSBzcGVjaWZpYyBkZXZpY2VzPyBXb3VsZG4ndCBhbGwgZGV2aWNlcyB3aXRoIHRoZSByZXNvdXJj
ZXMgKHdoaWNoCj4gPiA+ID4gPiA+ID4gPiBib2lscyBkb3duIHRvICFTTUFMTF9GTEFTSCkgYmUg
cG90ZW50aWFsbHkgbW9yZSB1c2VmdWwgd2l0aCB0aG9zZQo+ID4gPiA+ID4gPiA+ID4ga2VybmVs
IGZlYXR1cmVzIGVuYWJsZWQ/Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBZb3UgY3VycmVu
dGx5IGNhbid0IHVzZSAhU01BTExfRkxBU0gsIGJlY2F1c2UgdGhpcyBpcyB0YXJnZXQvc3VidGFy
Z2V0Cj4gPiA+ID4gPiA+ID4gc3BlY2lmaWMgZmVhdHVyZSwgbm90IHBlciBkZXZpY2UgZmVhdHVy
ZS4gSSB0aGluaywgdGhhdCBpbiBvcmRlciB0byB1c2UgdGhpcwo+ID4gPiA+ID4gPiA+IGZlYXR1
cmUsIHlvdSB3b3VsZCBuZWVkIHRvIGNvbnZlcnQvZml4IGFsbCBkZXZpY2VzIGxpa2UgdGhhdCBU
UC1MaW5rIFJFMzUwCj4gPiA+ID4gPiA+ID4gZnJvbSBhbGwgKHN1Yil0YXJnZXRzIGludG8gdGlu
eSBzdWJ0YXJnZXQgYW5kIHRoZW4geW91IGNvdWxkIGZyZWVseSB1c2UKPiA+ID4gPiA+ID4gPiAh
U01BTExfRkxBU0guCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEkgYWdyZWUgd2l0aCBub3QgYWJ1
c2luZyBzbWFsbF9mbGFzaCBmb3IgdGhhdC4gSXQgaGFzIGEgY2xlYXIgZGVmaW5lZAo+ID4gPiA+
ID4gPiBtZWFuaW5nLCBhbmQgc2hvdWxkbid0IGhhdmUgdW5yZWxhdGVkIHNpZGUgZWZmZWN0cy4K
PiA+ID4gPiA+Cj4gPiA+ID4gPiBTbyB3aGF0IGVsc2Ugd291bGQgdGhlIFNNQUxMX0ZMQVNIIHN5
bWJvbCBiZSB1c2VkIGZvciB0aGVuPwo+ID4gPiA+ID4gQSBxdWljayBncmVwIHJldmVhbHMgdGhh
dCBjdXJyZW50bHkgYWxyZWFkeSBxdWl0ZSBhIGZldyBrZXJuZWwgY29uZmlnCj4gPiA+ID4gPiBk
ZWZhdWx0cyBhcmUgc2V0IGFjY29yZGluZyB0byBTTUFMTF9GTEFTSCwgc2VlCj4gPiA+ID4gPgo+
ID4gPiA+ID4gb3JpZ2luL21hc3RlcjpDb25maWcta2VybmVsLmluLQo+ID4gPiA+ID4gb3JpZ2lu
L21hc3RlcjpDb25maWcta2VybmVsLmluLWNvbmZpZyBLRVJORUxfU1dBUAo+ID4gPiA+ID4gb3Jp
Z2luL21hc3RlcjpDb25maWcta2VybmVsLmluLSBib29sICJTdXBwb3J0IGZvciBwYWdpbmcgb2Yg
YW5vbnltb3VzIG1lbW9yeSAoc3dhcCkiCj4gPiA+ID4gPiBvcmlnaW4vbWFzdGVyOkNvbmZpZy1r
ZXJuZWwuaW46IGRlZmF1bHQgeSBpZiAhU01BTExfRkxBU0gKPiA+ID4gPiA+IC0tCj4gPiA+ID4g
PiBvcmlnaW4vbWFzdGVyOkNvbmZpZy1rZXJuZWwuaW4tCj4gPiA+ID4gPiBvcmlnaW4vbWFzdGVy
OkNvbmZpZy1rZXJuZWwuaW4tY29uZmlnIEtFUk5FTF9LQUxMU1lNUwo+ID4gPiA+ID4gb3JpZ2lu
L21hc3RlcjpDb25maWcta2VybmVsLmluLSBib29sICJDb21waWxlIHRoZSBrZXJuZWwgd2l0aCBz
eW1ib2wgdGFibGUgaW5mb3JtYXRpb24iCj4gPiA+ID4gPiBvcmlnaW4vbWFzdGVyOkNvbmZpZy1r
ZXJuZWwuaW46IGRlZmF1bHQgeSBpZiAhU01BTExfRkxBU0gKPiA+ID4gPiA+IC0tCj4gPiA+ID4g
PiBvcmlnaW4vbWFzdGVyOkNvbmZpZy1rZXJuZWwuaW4tCj4gPiA+ID4gPiBvcmlnaW4vbWFzdGVy
OkNvbmZpZy1rZXJuZWwuaW4tY29uZmlnIEtFUk5FTF9ERUJVR19JTkZPCj4gPiA+ID4gPiBvcmln
aW4vbWFzdGVyOkNvbmZpZy1rZXJuZWwuaW4tIGJvb2wgIkNvbXBpbGUgdGhlIGtlcm5lbCB3aXRo
IGRlYnVnIGluZm9ybWF0aW9uIgo+ID4gPiA+ID4gb3JpZ2luL21hc3RlcjpDb25maWcta2VybmVs
LmluOiBkZWZhdWx0IHkgaWYgIVNNQUxMX0ZMQVNICj4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gb3Jp
Z2luL21hc3RlcjpDb25maWcta2VybmVsLmluLWNvbmZpZyBLRVJORUxfRUxGX0NPUkUKPiA+ID4g
PiA+IG9yaWdpbi9tYXN0ZXI6Q29uZmlnLWtlcm5lbC5pbi0gYm9vbCAiRW5hYmxlIHByb2Nlc3Mg
Y29yZSBkdW1wIHN1cHBvcnQiCj4gPiA+ID4gPiBvcmlnaW4vbWFzdGVyOkNvbmZpZy1rZXJuZWwu
aW4tIHNlbGVjdCBLRVJORUxfQ09SRURVTVAKPiA+ID4gPiA+IG9yaWdpbi9tYXN0ZXI6Q29uZmln
LWtlcm5lbC5pbjogZGVmYXVsdCB5IGlmICFTTUFMTF9GTEFTSAo+ID4gPiA+ID4gLi4uCj4gPiA+
ID4KPiA+ID4gPiBNb3N0IG9mIHRoZXNlIG9wdGlvbiBvbmx5IGluZmx1ZW5jZSB0aGUgc2l6ZSBv
ZiB0aGUga2VybmVsLCBhbmQgaGF2ZQo+ID4gPiA+IG5vIGZ1cnRoZXIgcnVudGltZSBzaWRlIGVm
ZmVjdHMuIEFsc28gc21hbGxfZmxhc2ggaGFzIGltcGFjdCBvbiB0aGUKPiA+ID4gPiBjb21wcmVz
c2lvbiBvcHRpb25zIHVzZWQuCj4gPiA+Cj4gPiA+IFRoZXkgc3VyZSBkbywgY2FjaGUgc2l6ZSBv
biBzbWFsbCBDUFVzIGlzIGEgdmVyeSBmaW5pdGUgcmVzb3VyY2UKPiA+ID4gYW5kIGhhdmluZyBh
IGtlcm5lbCB3aXRoIGRlYnVnIHN5bWJvbHMgd2lsbCBtYWtlIHRoaW5ncyBzbG93ZXIsIG9mCj4g
PiA+IGNvdXJzZS4gU1dBUCBhbHNvIG1ha2VzIGV2ZXJ5IHNpbmdsZSBtYWxsb2MgY2FsbCBtb3Jl
IGV4cGVuc2l2ZSBhbmQKPiA+ID4gaXMganVzdCBhcyB3ZWxsIG9ubHkgdXNlZnVsIG9uIGRldmlj
ZXMgd2l0aCBibG9jayBzdG9yYWdlIChvaywgYW5kCj4gPiA+IHpyYW1zd2FwLCBidXQgbGV0cyBu
b3QgdGFsayBhYm91dCB0aGF0KS4KPiA+ID4KPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gSSB0aGluayBhIG5ldyBvcHQtaW4gc3ltYm9sIGZvciB0aG9zZSB0YXJnZXRz
IHdpdGggaGFyZHdhcmUKPiA+ID4gPiA+ID4gdmlydHVhbGl6YXRpb24gc3VwcG9ydCBhbmQvb3Ig
YmVlZnkgZW5vdWdoIGNwdXMgd291bGQgbWFrZSBtb3JlIHNlbnNlLgo+ID4gPiA+ID4gPiBUaG9z
ZSB2aXJ0dWFsaXphdGlvbiBvcHRpb25zIChwcm9iYWJseSkgZG9uJ3QgY29tZSBmb3IgZnJlZSwg
dGhleSB3aWxsCj4gPiA+ID4gPiA+IGhhdmUgYWxzbyBhIG1lbW9yeSBhbmQgcGVyZm9ybWFuY2Ug
aW1wYWN0IGV2ZW4gd2hlbiBub3QgYWN0aXZlbHkgdXNlZC4KPiA+ID4gPiA+ID4gSG93IG11Y2gg
dGhhdCBpcyAoYW5kIGlmIHRoaXMgYXNzdW1wdGlvbiBpcyB0cnVlKSB3b3VsZCBiZSBuaWNlIHRv
Cj4gPiA+ID4gPiA+IGhhdmUgaW4gdGhlIFBSL3BhdGNoIGZvciBpdC4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBUaGlzIGlzIG5vdCBhYm91dCB2aXJ0dWFsaXphdGlvbiBhbmQgbm9uZSBvZiB0aGUgZmVh
dHVyZXMgc2VsZWN0ZWQKPiA+ID4gPiA+IHJlcXVpcmVzIGFueSBzcGVjaWFsIGhhcmR3YXJlIHN1
cHBvcnQgYXBhcnQgZnJvbSB0aGUgZmV3IGV4dHJhCj4gPiA+ID4gPiBraWxvYnl0ZXMgb2YgZmxh
c2ggYW5kIG1lbW9yeS4gWW91IGFyZSBzdGlsbCByaWdodCwgaXQgZG9lc24ndCBjb21lCj4gPiA+
ID4gPiBhbGwgZm9yIGZyZWUgYXQgcnVudGltZSBpbiB0ZXJtcyBvZiBDUFUgY3ljbGVzLCBidXQg
dGhlIGltcGFjdCBpcwo+ID4gPiA+ID4gaGFyZGx5IG1lYXN1cmFibGUuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gQnV0IHN1cmUsIEkgdW5kZXJzdGFuZCB0aGF0IHRoaXMgY2FuIGJlIG9wdC1pbiwgc28g
bGV0cyBjYWxsIGl0Cj4gPiA+ID4gPiAnZnVsbF9rZXJuZWwnIG9yIHNvbWV0aGluZyBsaWtlIHRo
YXQgYW5kIGhhdmUgdGFyZ2V0IG1haW50YWluZXJzCj4gPiA+ID4gPiBkZWNpZGUgdGhlbXNlbHZl
cy4gSW4gdGhlIHBpY3R1cmUgSSBnZXQgYWZ0ZXIgYnJvd3NpbmcgdGhyb3VnaAo+ID4gPiA+ID4g
YWxsIHRhcmdldHMsIGl0IHdvdWxkIHN0aWxsIGVuZCB1cCBzdWNoIHRoYXQKPiA+ID4gPiA+IGZ1
bGxfa2VybmVsID09ICFzbWFsbF9mbGFzaCBpcyB0cnVlIGZvciBhbGwgY2FzZXMuCj4gPiA+ID4K
PiA+ID4gPiAiRnVsbCBrZXJuZWwiIHJlYWxseSBoYXMgbm8gcmVhbCBtZWFuaW5nIGFuZCB3b3Vs
ZCBkZXNjcmliZQo+ID4gPiA+IGV2ZXJ5dGhpbmcuIFRoZSBuYW1lIHNob3VsZCBjbGVhcmx5IGRl
c2NyaWJlIHRoZSAobm9uLWRlZmF1bHQpIGZlYXR1cmUKPiA+ID4gPiBzZXQgaXQgZW5hYmxlcy4K
PiA+ID4KPiA+ID4gQnV0IHRoZXkgYXJlIG5vdCBldmVuIG5lY2Vzc2FyaWx5IHJlbGF0ZWQsIGp1
c3QgY2xvc2VyIHRvIHRoZSB2YW5pbGxhCj4gPiA+IGRlZmF1bHQgY29uZmlnIHdoaWNoIGlzIHVz
ZWQgZWcuIGJ5IERlYmlhbiBhbmQgbW9zdCBvdGhlciBMaW51eCBkaXN0cm9zCj4gPiA+IHNvIHBy
b2plY3RzIGxpa2UgTFZNMiBzdGFydGVkIHRvIHJlbHkgb24gdGhlbS4KPiA+ID4gTXkgZ29hbCBo
ZXJlIGlzIHRvIGJyaW5nIG1vZGVybiBnZW5lcmljIGtlcm5lbCBmZWF0dXJlcyBpbnRvIE9wZW5X
cnQsCj4gPiA+IHRoZXkgYXJlIHF1aXRlIHVucmVsYXRlZCBhcGFydCBmcm9tIGJlaW5nIGxlZnQg
b3V0IGZvciBzcGFjZSByZWFzb25zCj4gPiA+IGFuZCBiZWNhdXNlIGZvciBhIG1pbmltYWwgcm91
dGVyL0FQIHRoZXkgYXJlIHVubmVlZGVkLgo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gPiBBbmQgc3Vy
ZSwgSSBjYW4gY2Fycnkgb3V0IHNvbWUgc2l6ZSBtZWFzdXJlbWVudHMgYW5kIGNvbXBhcmUgbWVt
b3J5Cj4gPiA+ID4gPiBhbGxvY2F0aW9uIGFmdGVyIGJvb3QuIEknbSBzdXJlIHRoZSBydW4tdGlt
ZSBDUFUgaW1wYWN0IGlzIGhhcmRseQo+ID4gPiA+ID4gbWVhc3VyYWJsZSBhdCBhbGwuCj4gPiA+
ID4KPiA+ID4gPiBQbGVhc2UgZG8gc28gZXNwZWNpYWxseSBvbiBsb3cgZW5kIGRldmljZXMuIE1h
eWJlIHNvbWV0aGluZyBsaWtlCj4gPiA+ID4gcm91dGluZyB0aHJvdWdocHV0IHdpdGgvd2l0aG91
dC4KPiA+ID4KPiA+ID4gSSdsbCBkbyB3aXRoaW4gdGhlIG5leHQgY291cGxlIG9mIGRheXMgYW5k
IHBvc3QgdGhlIHJlc3VsdHMuCj4gPgo+ID4gS2VybmVsIHNpemUgaW5jcmVhc2VzIGJ5IGFib3V0
IDkwa0IgKGx6bWEgY29tcHJlc3NlZCkuCj4gPiBNZW1vcnkgY29uc3VtcHRpb24ganVzdCBhZnRl
ciBib290IChpcm9uaWNhbGx5KSBzZWVtcyB0byBiZSBsb3dlciB3aXRoCj4gPiB0aG9zZSBvcHRp
b25zIGVuYWJsZWQsIGhvd2V2ZXIsIGl0J3MgYWxsIGluIHRoZSByYW5nZSBvZiArLy0gMTAwa0Iu
Cj4gPiBOZXR3b3JrIHBlcmZvcm1hbmNlIHNlZW1zIHRvIGJlIGV4YWN0bHkgaWRlbnRpY2FsLgo+
ID4KPiA+ICh0ZXN0ZWQgb24gYXI3MXh4IGJhc2VkIG9uIGxhdGVzdCBtYXN0ZXIgY29tbWl0KQo+
Cj4gSSBnYXZlIGl0IG15IG93biB0ZXN0IHdpdGggYSBiY202MzI4ICgzMjAgTUh6KSwgYW5kIGRp
ZCBzZWUgc29tZQo+IHZhcmlhbmNlIGluIG5ldHdvcmsgcGVyZm9ybWFuY2UsIGJ1dCBvbmx5IGEg
ZmV3IHBlcmNlbnQuIE1pZ2h0IGhhdmUKPiBiZWVuIGRpZmZlcmVuY2VzIGZyb20gY29kZSBjaGFu
Z2luZyBhbGlnbm1lbnRzIHRvIGNhY2hlIGxpbmVzIG9yIHNvLgo+Cj4gSSBkaWQgc2VlIGEgbW9y
ZSBwcm9ub3VuY2VkIG1lbW9yeSBjaGFuZ2UgdGhvdWdoLCBpbiB0aGUgcmFuZ2Ugb2YgfjUwMAo+
IGtCIGxlc3MgZnJlZSBtZW1vcnkuIE1pZ2h0IGJlIHJlbGV2YW50IGZvciAzMiBNaUIgZGV2aWNl
cy4KPgo+IFNpbmNlIGdyb3dpbmcga2VybmVscyBicmVha2luZyBib2FyZHMgd2l0aCB1LWJvb3Qg
bm90IGxvYWRpbmcgZW5vdWdoCj4gZnJvbSBmbGFzaCBpcyBhIGNvbW1vbiBlbm91Z2ggb2NjdXJy
ZW5jZSwgSSdkIHZvdGUgZm9yIGRlZmVycmluZyB0aGlzCj4gY2hhbmdlIHVudGlsIHdlIGJyYW5j
aGVkIGZvciB0aGUgdXBjb21pbmcgcmVsZWFzZSwgdG8gbm90IGludHJvZHVjZQo+IGFkZGl0aW9u
YWwgYm9hcmQgYnJlYWthZ2Ugc2hvcnRseSBiZWZvcmUgdGhhdC4gQWZ0ZXIgdGhhdCB3ZSdsbCBn
ZXQKPiBlbm91Z2ggYnJlYWthZ2UgdGhlcmUgZnJvbSB0aGUgNC4xOSBzd2l0Y2ggYW55d2F5LCBz
byB3ZSBtaWdodCB0aGVuCj4gYWxzbyB1cCB0aGUgb2ZmaWNpYWwgbWluaW11bSByZXF1aXJlbWVu
dCB0byA4IE1pQiBmbGFzaC4KClNpbmNlIDE5LjA3IGlzIG5vdyBicmFuY2hlZCwgSSBoYXZlIG5v
IG9iamVjdGlvbnMgYW55bW9yZSB0byBhZGRpbmcgdGhpcyBwYXRjaC4KCgpSZWdhcmRzCkpvbmFz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
