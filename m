Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A97E7145
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 13:22:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCpBntfm+UvJHiRingOYFIfn3x0aYolosaNvEAIsNiw=; b=s+t3mRzYjiUnbS
	SAH6LvlE1t6n0W+qqiXrupIFyk/ClopgolI37q/yw1zLUy7kY7S2ANRpArT0lnm9jMUT5a4Fuhf7j
	h9pnLRzcdwIRn7OiHOEp6sjq9hvhv+f+mILiWIZjh5jEWH8mf0ahLhgBa3ivfg3eAbe+0syDwolfE
	aQ3cy7l2JosdUyCVOMHhaSlZR9HN3rFJ8ltVMeddgzKRg+eEOirwyaJ4U9iibY5dR7mK0X0On5ZNq
	+/kDDG9OCXrDgN/SjQTuW728k3S0j64uFe7jHq8rzc79ICVrY3K0Crq/CZM1rFHls9CO1YLds9fnu
	5zMl9xvqH/vM0vxJFT3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP42U-0003TY-6q; Mon, 28 Oct 2019 12:22:26 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP42M-0003T1-Aj
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 12:22:19 +0000
Received: by mail-oi1-x243.google.com with SMTP id 83so5720006oii.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 05:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hBcTsiM4d0cBHzAtCdmyFjze/WDXsjk71jv1cQWJxLc=;
 b=MinT5i3DDZGCy+bGpEuS5m9G0G3MqOkF65kDCoRGwPjF+7zjD7iJDO1NqiH2MxetJ5
 AfjNHOi4JR5hy41GsafWsgsCRpuHNnt56MuRhvZ/69pw288quhyISLfjmp2YTzRiUtNN
 Ic40toINaXHKzNuhWqGZqj14kzGU97ck32rYEh+wGiYxzrk4rdddfudPQv6ivTjji2b6
 pBTSI27QEqakaXIvekiKO5KqULBPCCIi/Sy3EcY3zNjKpxOeG3NwddaqHX9ZIQ1pz4Gl
 jyycL/Hr3drikQ0BITEF7f4cB9Utqh9JpQyxIzQwD4F1rAgAWUd3Qc2gsHLBrisbOICt
 BDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hBcTsiM4d0cBHzAtCdmyFjze/WDXsjk71jv1cQWJxLc=;
 b=iPfUr5FFbP+0vwFYl2XcIl6O8/PWvOMQH4qr+r6Ra9829m/ucUWkCZYzsW3Qvfqt7w
 Xid1W/kuElRQ1u/lD5E7Nep00ErZWjncJNFfSViogHHD2tToCaoWo9HNABnjaIlPgP8h
 kd+1Y1Qy39iuixWSECyMjJV092yXxOMkpjUbUM2X4XBY5wkvoRbDsjKbIEmn3EbSfLqW
 bgYddHblD2xoO/au1IAC5+ibvW4NZSpxuMWkDqiydm3z7kFZZK2jhmmHHz1PJuHC9rGM
 pj4qzEGVrLI2Kng2Tw/v6W/t1IJSvmfCOYiwadnvt07sMTpDpg5llpUeRxtS1C7NtvPZ
 qQmg==
X-Gm-Message-State: APjAAAXFhXQFuKXE3ghQ/Se/DZtuJUfPypzUGmfnjddKYnRLSUNMJGRj
 e0SoZFtUArlsjiMjqr2HlZKIocV4R+da9W9MQi5atBJS
X-Google-Smtp-Source: APXvYqzMkubf6x7koe7O9ykFhv0s0q7U/qrdAjsi4nkqJIM6kAViywV27P0/WnzWgh1/lxNmezGs5xWaSkEq1PidHvg=
X-Received: by 2002:a54:4f83:: with SMTP id g3mr3147278oiy.24.1572265337236;
 Mon, 28 Oct 2019 05:22:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7511:0:0:0:0:0 with HTTP; Mon, 28 Oct 2019 05:22:16
 -0700 (PDT)
In-Reply-To: <20191028115743.GD22393@meh.true.cz>
References: <CAKR_QVKpKpbDdhQTF9=H63JaxoAwjOq0qJN7RK2G1UjjKapASw@mail.gmail.com>
 <4b8917b6-5e11-bb71-3b97-5eb450daa4e2@phrozen.org>
 <20191028115743.GD22393@meh.true.cz>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Mon, 28 Oct 2019 13:22:16 +0100
Message-ID: <CAKR_QVKRropRi72rGM8F-CfX6C12Y+ToUi-_3TsFYk+jgDLT2A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_052218_372309_2266B16C 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] patches from 2018
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
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjgvMTAvMjAxOSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gSm9o
biBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiBbMjAxOS0xMC0yNyAxNDozNDowNF06Cj4KPiBI
aSwKPgo+PiBJJ2QgbGlrZSB0byBjbG9zZSBhbGwgcGF0Y2hlcyBwZW5kaW5nIGZyb20gMjAxOCBp
biBwYXRjaHdvcmssIHRoZXJlIGFyZQo+PiB+MjUKPj4gYW5kIGEgcXVpY2sgdHJ5IG9uIHNvbWUg
c2hvd2VkIG5vbmUgb2YgdGhlIGFwcGx5IGFueW1vcmUuCj4KPiB0aGFuayB5b3UgZm9yIGNsZWFu
aW5nIHVwIHRoZSBiYWNrbG9nLCByZWFsbHkgYXBwcmVjaWF0ZSB0aGUgZWZmb3J0Lgo+Cj4gWW91
J3JlIGp1c3QgbWVudGlvbmluZyBQYXRjaHdvcmsoUFcpLCBidXQgSSB0aGluaywgdGhhdCB0aGUg
c2FtZSBhcHBsaWVzIHRvCj4gdGhlIEdpdEh1YiBQUnMgKEdIKSBhbmQgYnVncy9pc3N1ZXMgKEZT
KSBhcyB3ZWxsLgo+Cj4gUGVyaGFwcyB3ZSBjb3VsZCB0YWtlIHRoaXMgdGhyZWFkIGFzIGFuIG9w
cG9ydHVuaXR5IGFuZCBjb21lIHVwIHdpdGggc29tZQo+IGdlbmVyYWwgcnVsZSwgd2hpY2ggd291
bGQgY2xlYXJseSBkZWZpbmUgc29tZXdoZXJlIGF0IHRoZSBhcHByb3ByaWF0ZSBwbGFjZQo+IG9u
Cj4gdGhlIHdpa2ksIHRoYXQgZm9yIGV4YW1wbGUgYW55IG9wZW4gdG9waWMgb24gUFcvR0gvRlMg
cGxhdGZvcm0gd291bGQKPiBhdXRvY2xvc2UKPiBhZnRlciBzb21lIHByZWRlZmluZWQgcGVyaW9k
IG9mIHRpbWUgKGl0IGNhbiBhbHdheXMgYmUgcmVvcGVuZWQgaWYKPiByZXF1ZXN0ZWQpLgo+Cj4g
U2F5IDYtMTIgbW9udGhzIHNpbmNlIHRoZSBsYXN0IGFjdGl2aXR5IGluIHRoYXQgcGFydGljdWxh
ciB0b3BpYz8KPgo+IFRvbSBQc3lib3JnIDxwb3plZ2EudG9taXNsYXZAZ21haWwuY29tPiBbMjAx
OS0xMC0yNyAxNTo1MzowMF06Cj4KPj4gQmV0dGVyIGFwcHJvYWNoIHdvdWxkIGJlIHRvIHJldmll
dyB0aGVtCj4KPiBOb2JvZHkgcHJldmVudHMgeW91IG9yIGFueW9uZSBlbHNlIHRvIGRvIGEgcmV2
aWV3IGFuZCBhZGQgYFJldmlld2VkLWJ5YAo+IGFuZC9vcgo+IGBUZXN0ZWQtYnlgIHRhZywgd2hp
Y2ggd291bGQgaGVscCB3aXRoIG1lcmdpbmcgYXMgaXQgYXQgbGVhc3QgY2xlYXJseQo+IHNob3dz
LAo+IHRoYXQgdGhlcmUncyBpbnRlcmVzdCBmb3IgdGhpcyBmZWF0dXJlL2ZpeC93aGF0ZXZlci4K
Pgo+IC0tIHluZXp6Cj4KCkkgZG9uJ3Qgc2VlIGhvdyB0aGF0IHdvdWxkIGhlbHAsIHNpbmNlIHRo
ZSBjb21taXRlcidzIHJlc3BvbnNpYmlsaXR5CmlzIHRvIHJldmlldyB0aGUgY29kZSBhbmQgbWFr
ZSBzdXJlIGl0IGRvZXNuJ3QgYnJlYWsgdGhlIGJ1aWxkLiBBbmQKaGF2aW5nIHRoZSBwYXRjaCBp
dHNlbGYgaXMgYWxyZWFkeSBhIHBvaW50ZXIgdGhlcmUgaXMgYW4gaW50ZXJlc3QgaW4KY2VydGFp
biBmZWF0dXJlL2ZpeC93aGF0ZXZlci4gQWxzbywgYXQgbGVhc3Qgb25jZSBkdXJpbmcgdGhlIHBh
c3QKeWVhciwgeW91IHdlcmUgbmljZWx5IGFza2VkIHRvIHRha2UgYSBsb29rIGF0IG9uZSBvZiB0
aGUgY2hhbmdlcyB3aGljaAp5b3UgcmVmdXNlZCB0byBkbyB3aXRoIGEgY29udmVuaWVudCBleGN1
c2UuIFNvIEkgZG9uJ3QgdGhpbmsgeW91cgpzdWdnZXN0aW9ucyBzaG91bGQgYmUgdGFrZW4gZm9y
IGdvb2QgaGVyZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
