Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C8D12A894
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Dec 2019 17:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxTcY5DKnCiDLmaTpYuU6RcYJh8UU9gv8MvH75oi8nM=; b=ct3HaaRk/hl2qx
	eDJperM8bRyGuUTOxfZFJ7Fmppy+AEmXcF9AUNJZgw+LAsCHOHwi14HHQ2Refq8W/M4qy7MaxjeLh
	SDImNGynacS3aWBGWY8JIL+wjHvoaUPlGBJShToxgm5z8hfqJr8Omjvw/ItAN3S3M4DxigEb1HSRv
	nwL79AqFuMN9t0944dt9ZSTM24jGiWcSvAzwq5tNzprO98j+N8edOaLe516UsjRu5m/FdZWJ/M3NL
	et+8AWBHKG+OVsIEjE+5MFZ7yezh8ciz8eSqd+xWb55fVJOOjSpRHKKxx9W8iekfYMlZ5BlvvOWMf
	MEHbavbXsHnFMrf+LnFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik9vC-0006Bs-6y; Wed, 25 Dec 2019 16:54:06 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik9v4-0006BR-7i
 for openwrt-devel@lists.openwrt.org; Wed, 25 Dec 2019 16:54:00 +0000
Received: by mail-qv1-xf41.google.com with SMTP id m14so8396248qvl.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Dec 2019 08:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v+H+rSe0kQzPlrcpKdKWV0lUem0rjjFuzhTgsuCu3lo=;
 b=BvbGMta/fF4xJNRbi9zYz2dcJjhvlN0L843h+4QoIh6I/u9LTyMrA80RRnxaNB6YE3
 JSDlzuHnTL2uhUvFCg7cdDBTIGpSGXuipS2wzkSiuUM7CG3eCuXAW93He7Pr43Yt593P
 ifFA0eSKDS4jwbpJqa+DbLHT0eJ2/8WWQMehvti19DEQMmZ8zvb1dU90FYfgljYHOdob
 WYW3RR57TTJV776LK+og9bHurHp188OwUsE/zXUEAS7x6ba3V0YEwKV1HUC/X4b3DK/D
 HK4Qb2m9EMA42VK7xUTRVRNPoQbYe8Iyk6YpWLF96uhLXhnOi3k3Az0dhQz/UANEZG8z
 ukbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v+H+rSe0kQzPlrcpKdKWV0lUem0rjjFuzhTgsuCu3lo=;
 b=ESLOMqZL+h02kKfCALjVYKcgU+PO394s30FDMPkJThwCoQINYXxYy3Q0KXsNHP3y+k
 NLQS7GPmoO0auWTrmSky/VyLkkoU37FXc+qgvmJLU3wlwIfBcsrYv/2P1hchteoetAbA
 kdo+hLltuTw1sqM/ifO1V9Rg2X5SIiKvYr5kh/eQz/BAs3qaXa/KQ/LxPsK3VjlcQNUi
 6eCfwPVfFfqBkp+AzpW5fhG8r5BqqqqCM7/CGIIBnmFDHicuFVGCb/UybYVKb3D6bZpI
 3nCXPXOLlhHDWsPJrwu9IcTrBG13+jNAdc27j6A2aAYvjTmvtptF9A9RsLp6WoeaVEb6
 hM5A==
X-Gm-Message-State: APjAAAVe7yQMPT65d81Y4q7tFuOd9tb4Us5KpHRrfa0q6lYK41vihAyk
 g07TLB4GSVh8GH1g21RN3LrlAPBe3cj4kXV9Sv6QdTF4
X-Google-Smtp-Source: APXvYqxqlKOaM8XKUoyXftx04t4uZRizxU9Im368rpkA/JIwxwxgTV8/ESRGnxlqU2idmvwIHfwTMBD4iE4AlP1GV1M=
X-Received: by 2002:ad4:478b:: with SMTP id z11mr33097487qvy.185.1577292833693; 
 Wed, 25 Dec 2019 08:53:53 -0800 (PST)
MIME-Version: 1.0
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
 <CAMKF1sqyKBm0Yz=rtgL9JnPPRzyxfcemnuLpfV-SEQYqgTiFOA@mail.gmail.com>
 <20191225094811.GH70645@meh.true.cz>
In-Reply-To: <20191225094811.GH70645@meh.true.cz>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 25 Dec 2019 08:53:27 -0800
Message-ID: <CAMKF1sp1h+bx=0BuZ1SS7MTRHVWo-RY6PQa4c7UcZtNJqRN4dA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_085358_301618_6D533AE3 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raj.khem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBEZWMgMjUsIDIwMTkgYXQgMTo0OCBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IFsyMDE5LTEyLTI0
IDE0OjE1OjI2XToKPgo+ID4gT24gVHVlLCBEZWMgMjQsIDIwMTkgYXQgMTo1MSBQTSBQZXRyIMWg
dGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPiA+Cj4gPiA+IEtoZW0gUmFqIDxyYWoua2hl
bUBnbWFpbC5jb20+IFsyMDE5LTEyLTI0IDEwOjAyOjEzXToKPiA+ID4KPiA+ID4gSGksCj4gPiA+
Cj4gPiA+IHVzZSAiUEFUQ0ggbGlidWJveCIgc3ViamVjdCBwcmVmaXgsIGJlY2F1c2UgdGhlcmUg
aXMgbm8gYmxvYm1zZy5jIGZpbGUgaW4KPiA+ID4gdGhlCj4gPiA+IG1haW4gdHJlZS4KPiA+ID4K
PiA+ID4gPiBGaXhlcyBlcnJvcjogJ19fYnVpbHRpbl9zdHJjcHknIG9mZnNldCA2IGZyb20gdGhl
IG9iamVjdCBhdCAnYXR0cicgaXMKPiA+ID4gb3V0IG9mCj4gPiA+ID4gdGhlIGJvdW5kcyBvZiBy
ZWZlcmVuY2VkIHN1Ym9iamVjdCAnbmFtZScgd2l0aCB0eXBlICd1aW50OF90WzBdJyB7YWthCj4g
PiA+ID4gJ3Vuc2lnbmVkIGNoYXJbMF0nfSBhdCBvZmZzZXQgNiBbLVdlcnJvcj1hcnJheS1ib3Vu
ZHNdCj4KPiBXaGF0IGFib3V0IGZvbGxvd2luZyBmaXhbMV0/IFRoZSB0YXJnZXQgaGRyLT5uYW1l
IGJ1ZmZlciBoYXMgYWxyZWFkeSB0aGUKPiB0ZXJtaW5hdGluZyAwIGluY2x1ZGVkIGFzIGJsb2Jt
c2dfaGRybGVuIGhhcyBzdHJsZW4rMSBhbmQgYmxvYl9uZXcoKSBtZW1zZXRzCj4gdGhlIGJ1ZmZl
ciB0byAwLgo+Cj4gMS4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtbGlidWJveC9j
b21taXQvMzc3NWIzYWEyOGRlOGMyMGQ5NmI2ZjAyNzg2YTMyNzQyM2IwNzQ4YQo+CgpUaGlzIHdv
cmtzIGZpbmUgdG9vLiBMZXRzIGdvIHdpdGggdGhpcyBwYXRjaC4KClRlc3RlZC1CeTogS2hlbSBS
YWogPHJhai5raGVtQGdtYWlsLmNvbT4KCj4gRnJvbSAzNzc1YjNhYTI4ZGU4YzIwZDk2YjZmMDI3
ODZhMzI3NDIzYjA3NDhhIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+IEZyb206ID0/VVRGLTg/
cT9QZXRyPTIwPUM1PUEwdGV0aWFyPz0gPHluZXp6QHRydWUuY3o+Cj4gRGF0ZTogV2VkLCAyNSBE
ZWMgMjAxOSAxMDoyNzo1OSArMDEwMAo+IFN1YmplY3Q6IFtQQVRDSF0gYmxvYm1zZzogZml4IGFy
cmF5IG91dCBvZiBib3VuZHMgR0NDIDEwIHdhcm5pbmcKPiBNSU1FLVZlcnNpb246IDEuMAo+IENv
bnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOAo+IENvbnRlbnQtVHJhbnNmZXIt
RW5jb2Rpbmc6IDhiaXQKPgo+IEZpeGVzIGZvbGxvd2luZyB3YXJuaW5nIHJlcG9ydGVkIGJ5IEdD
QyAxMC4wLjAgMjAxOTEyMDM6Cj4KPiAgYmxvYm1zZy5jOjIzNDoyOiBlcnJvcjogJ3N0cmNweScg
b2Zmc2V0IDYgZnJvbSB0aGUgb2JqZWN0IGF0ICdhdHRyJyBpcyBvdXQgb2YKPiB0aGUgYm91bmRz
IG9mIHJlZmVyZW5jZWQgc3Vib2JqZWN0ICduYW1lJyB3aXRoIHR5cGUgJ3VpbnQ4X3RbMF0nIHth
a2EKPiAndW5zaWduZWQgY2hhclswXSd9IGF0IG9mZnNldCA2IFstV2Vycm9yPWFycmF5LWJvdW5k
c10KPiAgICAyMzQgfCAgc3RyY3B5KChjaGFyICopIGhkci0+bmFtZSwgKGNvbnN0IGNoYXIgKilu
YW1lKTsKPiAgICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fgo+Cj4gIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBibG9ibXNnLmM6MTY6Cj4gIGJsb2Jt
c2cuaDo0MjoxMDogbm90ZTogc3Vib2JqZWN0ICduYW1lJyBkZWNsYXJlZCBoZXJlCj4gICAgIDQy
IHwgIHVpbnQ4X3QgbmFtZVtdOwo+ICAgICAgICB8ICAgICAgICAgIF5+fn4KPgo+IFJlcG9ydGVk
LWJ5OiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gLS0tCj4gIGJsb2Jtc2cuYyB8IDIgKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvYmxvYm1zZy5jIGIvYmxvYm1zZy5jCj4gaW5kZXggNDhkYmE4MTU2ZDU4Li5lZjY4ZDhhZTU5
ZjcgMTAwNjQ0Cj4gLS0tIGEvYmxvYm1zZy5jCj4gKysrIGIvYmxvYm1zZy5jCj4gQEAgLTI0MCw3
ICsyNDAsNyBAQCBibG9ibXNnX25ldyhzdHJ1Y3QgYmxvYl9idWYgKmJ1ZiwgaW50IHR5cGUsIGNv
bnN0IGNoYXIKPiAqbmFtZSwgaW50IHBheWxvYWRfbGVuLCB2Cj4gICAgICAgICBhdHRyLT5pZF9s
ZW4gfD0gYmUzMl90b19jcHUoQkxPQl9BVFRSX0VYVEVOREVEKTsKPiAgICAgICAgIGhkciA9IGJs
b2JfZGF0YShhdHRyKTsKPiAgICAgICAgIGhkci0+bmFtZWxlbiA9IGNwdV90b19iZTE2KG5hbWVs
ZW4pOwo+IC0gICAgICAgc3RyY3B5KChjaGFyICopIGhkci0+bmFtZSwgKGNvbnN0IGNoYXIgKilu
YW1lKTsKPiArICAgICAgIG1lbWNweShoZHItPm5hbWUsIG5hbWUsIG5hbWVsZW4pOwo+ICAgICAg
ICAgcGFkX2VuZCA9ICpkYXRhID0gYmxvYm1zZ19kYXRhKGF0dHIpOwo+ICAgICAgICAgcGFkX3N0
YXJ0ID0gKGNoYXIgKikgJmhkci0+bmFtZVtuYW1lbGVuXTsKPiAgICAgICAgIGlmIChwYWRfc3Rh
cnQgPCBwYWRfZW5kKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
