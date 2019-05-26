Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A282ABCF
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 21:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP5bjNGRj9KAQGb6hPi1K3vCnd0LSIge3d+jBAWvRew=; b=cLNGInXu5LwxSb
	Z6eKkvOZeN/om3HkCeHSL4NaYy7PS+0NihOf7b+ePFISDdb1FICpmRi8Dj0fg89js/aBBzc/sOCUi
	wrz4WQw3j78KZLsCHq8zws7nbCg2HDPIetT8IyjopI8E8GaRBod5IFZWAo3ykQ99p2AnYaZ54DDV8
	gdIb/9Pxi3l7iJECOcf+Dxn+r2SF0EeN2TxX8fVeERwZzL/H9DpUQ2uj2LAxVvEhN27EbTxhBaZ8w
	XioKj9tzlcDU9PAwMMt6fT60K/FW++JSKEWT/qbLIuiOLks0FPI9olJ3T12U66c19tE+3kd+Eqzmy
	FTg54l1KvwnLGiakKKVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyc9-0008Nx-Qx; Sun, 26 May 2019 19:15:25 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyc2-0008NS-6n
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 19:15:19 +0000
Received: by mail-qk1-x742.google.com with SMTP id j1so14907712qkk.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 12:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SU9YeKIK4z1x9eY9pgF5bwFDHJD3weao3Yd9UbJAvP8=;
 b=DSjhv3Wp5XJLEQrAOmmWqHl+sWjU3Vp19DHYuX02Y8GeBNPovMn24yMVbjk2DVBz+L
 jAkRvjyIniUI7iaqdFEQ2kq75GZA68hLrWMDlv3QcDqSXvwMvrmrXI/1HLC3xwByLpf6
 5DMC5MnFn76fhSuYpauWSDDuuU9LQF2JHShO9W9uGWOnx3tEZ3OTVfQOe5xIJSOVsv6L
 s1Dqq5XSHRRy/iwaiopztCUAoAbPsSVQle+excDLhZQP5BWYSyImLvYMSiHEv5IPkUc2
 YBYRnbX2SbHo+Y5vIb+k6ia7QZ6oBtN94yasLlymWEuxFo+VphA/GgFe2k/GLePSiIsK
 UooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SU9YeKIK4z1x9eY9pgF5bwFDHJD3weao3Yd9UbJAvP8=;
 b=Yapt+I9olzXllIncaxTtW7FCMWiVy+gtOIpROpzgW7NJICw5+i3QNd7iPUSbAYPvy7
 f/FUTsS+hI9SSUEhYqu6zPYOxJdT5LQOMYfFBEEyV4RufR81hmWlCBNgxGbOlEhvTiRF
 SPSFu1KYWh0PdEyrkO9qixl/LsFOpwKEPGNdepe8Mhtx0GVCXMcyzO65P/d+DHC/mrsi
 gsy2IzUPIGEnufq23qZMmuu25FhpjWeM17jTo6Cf8hgGFO77pURpFh4pmI0Dh/tJezsZ
 c7oaGQNfwfxAO+CglR8f6T5thlgO5ieKO6HSWHL0lST6QgXrIDYV3vMT3jeI8+3h6m34
 1swg==
X-Gm-Message-State: APjAAAVpODpRqbt8eDWLLTUolAi7kooTfsJu1YL4CIep2T+fwUOo5eqf
 YYqlaqWBh3N5n7eeVYwfT1bG1nHjgUoGaU8XvB4p5a6P
X-Google-Smtp-Source: APXvYqxzkFHi5JWe173UvfuhcAoBIg8RWaVFEy/yC9iAvcVjNgCp+IMSfGg6moL8c2PuA+5cmXkqPto4TnJp3YBrGKA=
X-Received: by 2002:a0c:989d:: with SMTP id f29mr14190181qvd.209.1558898116289; 
 Sun, 26 May 2019 12:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.42638.1558865988.2376.openwrt-devel@lists.openwrt.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sun, 26 May 2019 21:15:05 +0200
Message-ID: <CAJLcKsG5eH=CJ-t+x+m1+-+aKL641+cvM8aeKFZEvcBA_Sn15g@mail.gmail.com>
To: =?UTF-8?Q?Fabian_Bl=C3=A4se?= <fabian@blaese.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_121518_274615_953C73EE 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] gre: introduce 'nohostroute' option
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCk9uIFN1biwgTWF5IDI2LCAyMDE5IGF0IDEyOjE5IFBNIEZhYmlhbiBCbMOkc2UgdmlhIG9w
ZW53cnQtZGV2ZWwKPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+IHdyb3RlOgo+Cj4g
VGhlIHNlbmRlciBkb21haW4gaGFzIGEgRE1BUkMgUmVqZWN0L1F1YXJhbnRpbmUgcG9saWN5IHdo
aWNoIGRpc2FsbG93cwo+IHNlbmRpbmcgbWFpbGluZyBsaXN0IG1lc3NhZ2VzIHVzaW5nIHRoZSBv
cmlnaW5hbCAiRnJvbSIgaGVhZGVyLgo+Cj4gVG8gbWl0aWdhdGUgdGhpcyBwcm9ibGVtLCB0aGUg
b3JpZ2luYWwgbWVzc2FnZSBoYXMgYmVlbiB3cmFwcGVkCj4gYXV0b21hdGljYWxseSBieSB0aGUg
bWFpbGluZyBsaXN0IHNvZnR3YXJlLgo+Cj4KPiAtLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdl
IC0tLS0tLS0tLS0KPiBGcm9tOiAiRmFiaWFuIEJsw6RzZSIgPGZhYmlhbkBibGFlc2UuZGU+Cj4g
VG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBDYzogIkZhYmlhbiBCbMOkc2Ui
IDxmYWJpYW5AYmxhZXNlLmRlPgo+IEJjYzoKPiBEYXRlOiBTdW4sIDI2IE1heSAyMDE5IDEyOjE5
OjA1ICswMjAwCj4gU3ViamVjdDogW1BBVENIXSBncmU6IGludHJvZHVjZSAnbm9ob3N0cm91dGUn
IG9wdGlvbgo+IEl0IGlzIG5vdCBhbHdheXMgbmVjZXNzYXJ5IHRvIGFkZCBhIGhvc3Qgcm91dGUg
Zm9yIHRoZSBncmUgcGVlciBhZGRyZXNzLgo+Cj4gVGhpcyBpbnRyb2R1Y2VzIGEgbmV3IGNvbmZp
ZyBvcHRpb24gJ25vaG9zdHJvdXRlJyAoc2ltaWxhciB0byB0aGUKPiBvcHRpb24gaW50cm9kdWNl
ZCBmb3Igd2lyZWd1YXJkIGluIGQ4ZTJlMTkpIHRvIGFsbG93IHRvIGRpc2FibGUKPiB0aGUgY3Jl
YXRpb24gb2YgdGhvc2Ugcm91dGVzIGV4cGxpY2l0ZWx5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogRmFi
aWFuIEJsw6RzZSA8ZmFiaWFuQGJsYWVzZS5kZT4KVHJ5aW5nIHRvIGFwcGx5IHRoZSBwYXRjaCBJ
IGdldCA6CgpnaXQgYW0gMTEwNTUzOC5wYXRjaApQYXRjaCBpcyBlbXB0eS4KV2hlbiB5b3UgaGF2
ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5b3Ug
cHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpU
byByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0
IGFtIC0tYWJvcnQiLgoKUGxlYXNlIHVzZSBnaXQgc2VuZC1lbWFpbCB0byBkZWxpdmVyIHRoZSBw
YXRjaAoKSGFucwo+IC0tLQo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL2dyZS9maWxlcy9ncmUu
c2ggfCAxNCArKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9wYWNrYWdlL25ldHdvcmsvY29uZmln
L2dyZS9maWxlcy9ncmUuc2ggYi9wYWNrYWdlL25ldHdvcmsvY29uZmlnL2dyZS9maWxlcy9ncmUu
c2gKPiBpbmRleCAyYmIxMDEwYjc2Li4zNDE0ZWQzMDQ3IDEwMDc1NQo+IC0tLSBhL3BhY2thZ2Uv
bmV0d29yay9jb25maWcvZ3JlL2ZpbGVzL2dyZS5zaAo+ICsrKyBiL3BhY2thZ2UvbmV0d29yay9j
b25maWcvZ3JlL2ZpbGVzL2dyZS5zaAo+IEBAIC01Niw3ICs1Niw3IEBAIGdyZV9zZXR1cCgpIHsK
PiAgICAgICAgIGxvY2FsIHJlbW90ZWlwCj4KPiAgICAgICAgIGxvY2FsIGlwYWRkciBwZWVyYWRk
cgo+IC0gICAgICAganNvbl9nZXRfdmFycyBkZiBpcGFkZHIgcGVlcmFkZHIgdHVubGluawo+ICsg
ICAgICAganNvbl9nZXRfdmFycyBkZiBpcGFkZHIgcGVlcmFkZHIgdHVubGluayBub2hvc3Ryb3V0
ZQo+Cj4gICAgICAgICBbIC16ICIkcGVlcmFkZHIiIF0gJiYgewo+ICAgICAgICAgICAgICAgICBw
cm90b19ub3RpZnlfZXJyb3IgIiRjZmciICJNSVNTSU5HX1BFRVJfQUREUkVTUyIKPiBAQCAtNzYs
NyArNzYsOSBAQCBncmVfc2V0dXAoKSB7Cj4gICAgICAgICAgICAgICAgIGJyZWFrCj4gICAgICAg
ICBkb25lCj4KPiAtICAgICAgICggcHJvdG9fYWRkX2hvc3RfZGVwZW5kZW5jeSAiJGNmZyIgIiRw
ZWVyYWRkciIgIiR0dW5saW5rIiApCj4gKyAgICAgICBpZiBbICIke25vaG9zdHJvdXRlfSIgIT0g
IjEiIF07IHRoZW4KPiArICAgICAgICAgICAgICAgKCBwcm90b19hZGRfaG9zdF9kZXBlbmRlbmN5
ICIkY2ZnIiAiJHBlZXJhZGRyIiAiJHR1bmxpbmsiICkKPiArICAgICAgIGZpCj4KPiAgICAgICAg
IFsgLXogIiRpcGFkZHIiIF0gJiYgewo+ICAgICAgICAgICAgICAgICBsb2NhbCB3YW5pZj0iJHR1
bmxpbmsiCj4gQEAgLTEzMyw3ICsxMzUsNyBAQCBncmV2Nl9zZXR1cCgpIHsKPiAgICAgICAgIGxv
Y2FsIHJlbW90ZWlwNgo+Cj4gICAgICAgICBsb2NhbCBpcDZhZGRyIHBlZXI2YWRkciB3ZWFraWYK
PiAtICAgICAgIGpzb25fZ2V0X3ZhcnMgaXA2YWRkciBwZWVyNmFkZHIgdHVubGluayB3ZWFraWYg
ZW5jYXBsaW1pdAo+ICsgICAgICAganNvbl9nZXRfdmFycyBpcDZhZGRyIHBlZXI2YWRkciB0dW5s
aW5rIHdlYWtpZiBlbmNhcGxpbWl0IG5vaG9zdHJvdXRlCj4KPiAgICAgICAgIFsgLXogIiRwZWVy
NmFkZHIiIF0gJiYgewo+ICAgICAgICAgICAgICAgICBwcm90b19ub3RpZnlfZXJyb3IgIiRjZmci
ICJNSVNTSU5HX1BFRVJfQUREUkVTUyIKPiBAQCAtMTUzLDcgKzE1NSw5IEBAIGdyZXY2X3NldHVw
KCkgewo+ICAgICAgICAgICAgICAgICBicmVhawo+ICAgICAgICAgZG9uZQo+Cj4gLSAgICAgICAo
IHByb3RvX2FkZF9ob3N0X2RlcGVuZGVuY3kgIiRjZmciICIkcGVlcjZhZGRyIiAiJHR1bmxpbmsi
ICkKPiArICAgICAgIGlmIFsgIiR7bm9ob3N0cm91dGV9IiAhPSAiMSIgXTsgdGhlbgo+ICsgICAg
ICAgICAgICAgICAoIHByb3RvX2FkZF9ob3N0X2RlcGVuZGVuY3kgIiRjZmciICIkcGVlcjZhZGRy
IiAiJHR1bmxpbmsiICkKPiArICAgICAgIGZpCj4KPiAgICAgICAgIFsgLXogIiRpcDZhZGRyIiBd
ICYmIHsKPiAgICAgICAgICAgICAgICAgbG9jYWwgd2FuaWY9IiR0dW5saW5rIgo+IEBAIC0yNjIs
NiArMjY2LDcgQEAgcHJvdG9fZ3JlX2luaXRfY29uZmlnKCkgewo+ICAgICAgICAgcHJvdG9fY29u
ZmlnX2FkZF9zdHJpbmcgImlwYWRkciIKPiAgICAgICAgIHByb3RvX2NvbmZpZ19hZGRfc3RyaW5n
ICJwZWVyYWRkciIKPiAgICAgICAgIHByb3RvX2NvbmZpZ19hZGRfYm9vbGVhbiAiZGYiCj4gKyAg
ICAgICBwcm90b19jb25maWdfYWRkX2Jvb2xlYW4gIm5vaG9zdHJvdXRlIgo+ICB9Cj4KPiAgcHJv
dG9fZ3JldGFwX2luaXRfY29uZmlnKCkgewo+IEBAIC0yNzUsNiArMjgwLDcgQEAgcHJvdG9fZ3Jl
djZfaW5pdF9jb25maWcoKSB7Cj4gICAgICAgICBwcm90b19jb25maWdfYWRkX3N0cmluZyAicGVl
cjZhZGRyIgo+ICAgICAgICAgcHJvdG9fY29uZmlnX2FkZF9zdHJpbmcgIndlYWtpZiIKPiAgICAg
ICAgIHByb3RvX2NvbmZpZ19hZGRfc3RyaW5nICJlbmNhcGxpbWl0Igo+ICsgICAgICAgcHJvdG9f
Y29uZmlnX2FkZF9ib29sZWFuICJub2hvc3Ryb3V0ZSIKPiAgfQo+Cj4gIHByb3RvX2dyZXY2dGFw
X2luaXRfY29uZmlnKCkgewo+IC0tCj4gMi4yMS4wCj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
